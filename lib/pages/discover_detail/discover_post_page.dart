import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/widgets/discover_tag.dart';
import 'package:hask/widgets/round_avatar.dart';
import 'package:hask/widgets/round_icon_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiscoverPostPage extends StatefulWidget {
  const DiscoverPostPage({Key? key}) : super(key: key);

  @override
  _DiscoverPostPageState createState() => _DiscoverPostPageState();
}

class _DiscoverPostPageState extends State<DiscoverPostPage> {
  final hPadding = 16.0;
  double height = 0.0;

  late WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const Align(
              child: RoundIconButton(
                size: 32,
                padding: 0,
                icon: Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height / 3.4,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/temp/temp_img.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: hPadding),
                        child: const DiscoverTag(text: 'Test'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/svgs/bookmark.svg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Начни правильно очищать кожу дома',
                        style: AppTheme.fontStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '12 мин',
                        style: AppTheme.fontStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const RoundAvatar(url: ''),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Liza Terner',
                                style: AppTheme.fontStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                              Text(
                                'К.н.м.,дерматолог',
                                style: AppTheme.fontStyle(
                                  fontSize: 14,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      onWebViewCreated: (controller) {
                        webViewController = controller;
                        _loadHtmlString();
                      },
                      onPageFinished: (page) {
                        _updateHeight();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _loadHtmlString() {
    webViewController.loadHtmlString(getHtml());
  }

  _updateHeight() async {
    final height = await webViewController
        .runJavascriptReturningResult("document.documentElement.scrollHeight;");
    this.height = double.parse(height);
    setState(() {});
  }

  String getHtml() => '''
<!DOCTYPE html><html lang=\"en\"><head> <meta charset=\"utf-8\"/> <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/> <title>Bootstrap 101 Template</title> <link href=\"http://143.198.52.47/assets/bootstrap.min.css\" rel=\"stylesheet\"/> <style>li{white-space: inherit!important;padding-top: 7px;} .nopadding{padding: 0 !important; margin: 0 !important;}h1, h2, h3, h4, h5, h6{line-height: inherit !important; padding-bottom: 10px;}body{margin-bottom: 100px;}</style></head><body id=\"tinymce\" class=\"mce-content-body\" data-id=\"editor-1642409595445\" aria-label=\"Rich Text Area. Press ALT-0 for help.\" spellcheck=\"false\"><div class=\"container\"> <div class=\"row\"> <div class=\"col-md-12 nopadding\"><div class=\"nopadding\"> <h1><span style=\"font-size: 36px; font-family: 'arial black', sans-serif; color: #34495e;\">Future of Social Media: Trends to Watch</span></h1> <p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> Social media evolves faster than the marketing industry can keep up. With algorithm changes, new cutting-edge features and a constant stream of updates, it can be difficult to know the latest social trends. But that doesn't mean it's impossible to stay in the know. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"It takes work to stay on top of all the changes,\" said Chelsea McDonald, senior social media strategist at&nbsp; <a style=\"box-sizing: border-box; text-decoration-line: none; color: #087ee2;\" href=\"https://www.degdigital.com/\" target=\"_blank\" rel=\"noopener\">DEG Digital</a>. \"The trends are just that for a reason; it's what's popular and happening right now, which was not popular two weeks ago and will be dead two months from now.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> However difficult, it's important to pay attention to innovative trends and anticipate the ones to come. This will keep your business competitive and set you apart from other businesses, no matter what platforms you're on. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> For example, Facebook is the fastest-growing social media company because it \"seems to be leading the way with social media's future,\" said social media specialist and freelance writer&nbsp; <a style=\"box-sizing: border-box; text-decoration-line: none; color: #087ee2;\" href=\"https://www.lindsaypattoncarson.com/\" target=\"_blank\" rel=\"noopener\">Lindsay Patton-Carson</a>. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Since its creation, Facebook has acquired 79 companies, most famously Instagram and WhatsApp, turning it into social media's biggest conglomerate,\" she added. \"It will be interesting to see if other platforms consider their own M&amp;As.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> So what will social media marketing look like in 2020? Business News Daily consulted experts in the field to help you stay on top of the latest trends. </p><h2 id=\"the-spread-of-misinformation\" style=\"box-sizing: border-box; font-weight: 300; line-height: 2rem; margin: 35px 0px 0px; color: #2d2d2d; font-family: Silka, 'sans-serif'; background-color: #ffffff;\"> The spread of misinformation </h2> <p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> Patton-Carson warns business owners to be wary of misinformation. You should not only be mindful of what you're spreading on social media, but also avoid engaging with potentially misinformative content, whether it's in mentions or cited works in blog posts. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Social media has affected the media industry by increasing misinformation,\" Patton-Carson told Business News Daily. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> It's not just politics that fake news has impacted &ndash; how does this affect the marketing industry? </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Anyone can plaster false information on an image and turn it into a viral meme, which is incredibly dangerous,\" Patton-Carson said. \"It has also created headline-only readers. People are now less likely to fully read articles and get the entire story.\" </p><h2 id=\"greater-investment-in-social-media-advertising\" style=\"box-sizing: border-box; font-weight: 300; line-height: 2rem; margin: 35px 0px 0px; color: #2d2d2d; font-family: Silka, 'sans-serif'; background-color: #ffffff;\" > Greater investment in social media advertising </h2> <p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> Social media has proven to be an effective and active space for marketing and shouldn't be left out of your marketing budget. Potential customers are abundant on online networks and communities. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"For years, the industry has been saying organic is dead and that it's a 'pay to play' space, and more than ever we see this on the rise,\" McDonald said. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> Conor Ryan, CIO of&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; color: #087ee2;\" href=\"https://stitcherads.com/\" target=\"_blank\" rel=\"noopener\">StitcherAds</a>, said brands will increase their spending on social advertising, particularly in the retail industry. In other words, don't underestimate the power of paid advertisements across platforms, because these networks have large pools of potential customers to reach out to. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Facebook has delivered a suite of advertising products specifically for retail that enable brands to do things they couldn't before,\" Ryan said. \"The platform is making it easier for retailers to innovate, and this activity will only be amplified in [the future].\"&nbsp; <span style=\"box-sizing: border-box; font-weight: bold;\"> [Interested in finding the right <a class=\"MuiTypography-root MuiLink-root jss1 jss157 MuiLink-underlineNone MuiTypography-colorInherit\" style=\"box-sizing: border-box; text-decoration-line: none; margin: 0px; color: #087ee2;\" href=\"https://www.businessnewsdaily.com/5782-social-media-marketing.html\" > &nbsp; </a> <a class=\"MuiTypography-root MuiLink-root jss1 jss158 MuiLink-underlineNone MuiTypography-colorInherit\" style=\"box-sizing: border-box; text-decoration-line: none; margin: 0px; color: #087ee2;\" href=\"https://www.businessnewsdaily.com/5782-social-media-marketing.html\" > social media marketing solution for your small business </a> ? Check out our best picks.] </span> </p><h2 id=\"the-rise-of-microinfluencers\" style=\"box-sizing: border-box; font-weight: 300; line-height: 2rem; margin: 35px 0px 0px; color: #2d2d2d; font-family: Silka, 'sans-serif'; background-color: #ffffff;\"> The rise of microinfluencers </h2> <p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> Before social media influencers, brands relied on celebrities and characters to sell their products. When audiences started to crave more authentic advertising, brands turned to social media influencers. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> But now larger influencers are struggling to maintain authenticity and becoming increasingly expensive. As a result, brands are turning to microinfluencers, social media personalities who have high influence over their specific niches. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"The ... microinfluencer will gain some additional share and influence [in] this space, as their content is less likely to be driven by sponsors,\" McDonald said. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Influencer marketing [is] already a billion-dollar business,\" said Patton-Carson. \"Approximately 59% of marketers already plan on increasing their influencer marketing budgets.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\">This trend was on our radar for 2019, and we can expect it to continue in 2020.</p><h2 id=\"video-content-for-advertising\" style=\"box-sizing: border-box; font-weight: 300; line-height: 2rem; margin: 35px 0px 0px; color: #2d2d2d; font-family: Silka, 'sans-serif'; background-color: #ffffff;\"> Video content for advertising </h2> <p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"As technology grows, so will the way we interact with each other or use social media for entertainment,\" Patton-Carson said. \"A great example is TikTok's rise. Social media sites are launched constantly, but it takes the right knowledge and creativity to make them resonate with an audience and have longevity.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> While Stories on Instagram and Facebook are still pretty new to the game, they've quickly become a popular feature that marketers shouldn't ignore. They were prominent in 2019, and we can expect them to become even more popular in the near future. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Now, people are posting stories and video, and it's crucial that advertisers make the transition to these mediums,\" said Ryan. \"To effectively reach consumers, ads need to feel authentic and unobtrusive. Instagram Stories is a non-interruptive advertising platform that aligns with consumers' preferences.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> <a style=\"box-sizing: border-box; text-decoration-line: none; color: #087ee2;\" href=\"https://instagram-press.com/blog/2018/06/20/welcome-to-igtv/\" target=\"_blank\" rel=\"noopener\">Launched in June 2018</a>&nbsp;and owned by Instagram, IGTV is fairly new to the social media scene. It's a vertical video application that lets users watch long-form video from popular Instagram creators, as opposed to the one-minute maximum of the traditional Instagram post. The app has been gaining attention as a strategic advertising tool, and marketers should keep an eye on the platform for future opportunities. </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"While the expectation is that IGTV will ultimately carry [paid] advertising, for now it does not,\" said Todd Krizelman, CEO of&nbsp; <a style=\"box-sizing: border-box; text-decoration-line: none; color: #087ee2;\" href=\"https://mediaradar.com/\" target=\"_blank\" rel=\"noopener\">MediaRadar</a>. \"Although IGTV peaked as the top 25th U.S. iPhone app immediately after launch, it has since fallen off dramatically.\" </p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> In 2020, we can expect the overall popularity of video content to continue if not increase. </p><p>&nbsp;</p><p style=\"box-sizing: border-box; color: #2d2d2d; font-family: Silka, 'sans-serif'; font-size: 16px; background-color: #ffffff;\"> \"Video will continue to trend,\" said Patton-Carson. \"Posts with video always get more engagement, and 73% of Gen Z watch more than three hours of video a day on their smartphones.\" </p><p>&nbsp;</p><div class=\"css-x0vky9-AuthorBylineWrapper e1wq3vxs0\" style=\"box-sizing: border-box; color: #7a7a7a; display: flex; flex-direction: row; margin: 1rem 0px; font-family: Silka, 'sans-serif'; background-color: #ffffff;\" > <div class=\"css-1dojpim-AuthorBylineLeft e1wq3vxs1\" style=\"box-sizing: border-box; display: flex; height: 50px; margin-right: 1rem; width: 50px;\">&nbsp;</div></div></div></div></div></div></body></html>
''';
}
