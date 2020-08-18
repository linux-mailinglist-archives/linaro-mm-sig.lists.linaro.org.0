Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A60924836B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:57:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2837160631
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 10:57:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1AB9560E68; Tue, 18 Aug 2020 10:57:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36C2260BD7;
	Tue, 18 Aug 2020 10:56:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6C98860631
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 10:56:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5ECB260BD7; Tue, 18 Aug 2020 10:56:19 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60067.outbound.protection.outlook.com [40.107.6.67])
 by lists.linaro.org (Postfix) with ESMTPS id BAC1060631
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 10:56:17 +0000 (UTC)
Received: from AM6P191CA0058.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::35)
 by DB8PR08MB4123.eurprd08.prod.outlook.com (2603:10a6:10:b2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16; Tue, 18 Aug
 2020 10:56:14 +0000
Received: from AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:7f:cafe::7c) by AM6P191CA0058.outlook.office365.com
 (2603:10a6:209:7f::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15 via Frontend
 Transport; Tue, 18 Aug 2020 10:56:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;lists.linaro.org; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT060.mail.protection.outlook.com (10.152.16.160) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16 via Frontend Transport; Tue, 18 Aug 2020 10:56:13 +0000
Received: ("Tessian outbound 195a290eb161:v64");
 Tue, 18 Aug 2020 10:56:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 69356d6391dd9cd7
X-CR-MTA-TID: 64aa7808
Received: from 7ccbd970ca1e.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 78024F8F-9080-47A0-BC09-C4FA8151480C.1; 
 Tue, 18 Aug 2020 10:56:05 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7ccbd970ca1e.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 18 Aug 2020 10:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5p6P2XnhGSZ7fCYkE7QbQVQvIuKzH5CqPscG/NlnLtHroVAP7sO/gToBJjYLBS4JNpViZeyNFpOjdkTn0AGeXqlMtBSQpYn98/NDu9mg/wAPvwlfpL+6gOfsTwrW1AXNTV0uw9d523YBPkW6Na8DtIQL+fnJaT1Aa7i76gDEdQTHDLo6n6/qvyxJXocHgZr5v/eNnvfKFEccItR1ITgq2SAmfrhvte+oajucpUn+g/9ZugIEl4N/+637RZkismwxdWfyQwjo/wQ1rdwA1bqVd8nvmYaB+AntQQNvT4XEOjxyBtDQ3HakFR3xkCJ9sAn7fpd8nT4st4ZFxuxszRG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuEecBxJ1goRt0nSypLfrL5sZjOkJ6EV8FRZvYD/9dg=;
 b=fFBOupMIw93i406ViZBbAa7K3qpR2SbJRe0QNXYkB3AdTCDPqXjI1PlEE4JYua5ZKcNtA3eZx/lT6cFjb4VzpLNXu6fmk+pEeJjsumG8UpyM/e+LzEOy775iyI/T1MPA8M9krK0ysYNGtw7+uvAqBtdrG7pJGA3ocWBo1gie5XCiIKHWxubFZpBUJal9Bc0CQNesF27p33Zw68FAWTU+brvUrcc4L2gFnvsfjd9161JypdmZmFwxB44vKJ+u47FqoPRS6M1TyQogNjc3mL54zTAe20T4kPrZ85r/7Un52V97jzGHRA1sBXwha7GKCfPxsTg+GUzcNPAOeWt4SfS9Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Authentication-Results-Original: samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=none action=none header.from=arm.com;
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com (2603:10a6:7:36::11) by
 HE1PR08MB2858.eurprd08.prod.outlook.com (2603:10a6:7:33::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3239.21; Tue, 18 Aug 2020 10:55:59 +0000
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::14f5:cc22:9381:1d13]) by HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::14f5:cc22:9381:1d13%6]) with mapi id 15.20.3283.028; Tue, 18 Aug 2020
 10:55:59 +0000
Date: Tue, 18 Aug 2020 11:55:57 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Hyesoo Yu <hyesoo.yu@samsung.com>
Message-ID: <20200818105557.svky5c7gdvk6khzu@DESKTOP-E1NTVVP.localdomain>
References: <CGME20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6@epcas2p2.samsung.com>
 <20200818080415.7531-1-hyesoo.yu@samsung.com>
Content-Disposition: inline
In-Reply-To: <20200818080415.7531-1-hyesoo.yu@samsung.com>
User-Agent: NeoMutt/20180716-849-147d51-dirty
X-ClientProxiedBy: LO2P123CA0039.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::27)
 To HE1PR08MB2890.eurprd08.prod.outlook.com
 (2603:10a6:7:36::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (217.140.99.251) by
 LO2P123CA0039.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16 via Frontend Transport; Tue, 18 Aug 2020 10:55:57 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 88b66b91-9dd5-41d7-8adc-08d843655331
X-MS-TrafficTypeDiagnostic: HE1PR08MB2858:|DB8PR08MB4123:
X-Microsoft-Antispam-PRVS: <DB8PR08MB4123616BF5081A50655FFA26F05C0@DB8PR08MB4123.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4JDq+UzrzK4QgRT36SSH5Raap6mKO926pggeD0XBAzNXzRNexAuhoH9jzvbT5LOE+JPXdlE+muNhk4KaGXt3lxA4inc8T5uY3AWBStYajluaZ2itxlu5SzHiI8BhVmq7ZiqDV96G1+lgcCM4Y+6hvWRCKuer6CqdtGD1nRO3yUTRsqQIaIQNTf6swtdjXAqMAI9/Nehp8JsZ0IVovQGz0pNj+SZlQjQLYf8GuvwxQS8xjuopYB3SE6qRYIroQff649QA71YdigEHiVaZ1X6TvJ+ghTwrwaRgXkF9sqkaiKXpnqh3qwtMcROg5b/cONF00o5TBpSFnOQcb9Qgp4Ey1GBBppr+KRPNdmzEH5ZhMtA3fENoLFBvXi10aqSLAf8YWF6mliuwZ332r8UM9/dymA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR08MB2890.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(83380400001)(5660300002)(1076003)(2906002)(86362001)(9686003)(55016002)(7416002)(6916009)(956004)(44832011)(966005)(4326008)(66946007)(66556008)(66476007)(6506007)(478600001)(52116002)(7696005)(316002)(186003)(16526019)(8676002)(8936002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6E38TiTvw6bNDe7A67u+RJ2oVTuod8ZzYK/opL258cIZqewuiIOAVK2we/BVkWf0QwwE1JjDRi4yiAc0pCXg+xluuUnz7Ia36qzpJP/2Ly4HlVGWKH5cQ/Zj5dTFqZ/HiRgxxL15ABZqLPeSKYxytJV/S9i0mf3df3XMLbrXCechD7TOPTcCR8g0DTDJv+Zw8+sTrSuUMcmirdr92AAkPHE5obHcsyDs8aiD+zRWo9UtguhkkY621dcHreMPJU3QWyObHep+cLxvGkRdgc+2Xhl0imlN+4trdf/swDhGu9cMHfd4nxjOwoxT5/H4FOHM6CPrubDqC6JntyD+mXBV/26wO/CQhhyt/3JOr8rEFsBe+Wev0WAF3ZJYrSptiVvwmFwY63w/uaXEW3LqC+Mwc2urmbrAUz/huv5ZfWh4mkpGl/OjExfI0+iCbxPaqzJF1lLbdy8t0uUnGoYml1pvnKet7zwrb0kafv8DpcjJcsgAo3BYBYcoSxocIc31+m7pWZyo7/mWHsw741woAcnBh4hfghWdZCevJxePHqKlmMIyedEzEbaCt5sY/jOaOFwnF6EKpGB6rq3Wtw2YnrlddceHn3kbJVQ+jT0GrMzfv3+r9aECkOhwUQoqMG2SYCEpWPJVodd0txK16dtznJ2voQ==
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2858
Original-Authentication-Results: samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3a20e739-23ea-4dab-b573-08d843654a22
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E3cEsKTqvcHOv078yUndGm426Sn5FIySHnvt/haIlsouZwsO51au5+BkYqS0HaWVpfn4iPaBhzjFl8oThiDJh37MqbMN74k6ZH2QTjzstv9FKUeg3hxNr7D9dz5seA6yxdqq6KBa85C/SbNuRHmqEz99imRoWoXrcscLQottL3TEVU2Rx5gNoPzvKC4nBhFXZjtxxVtNOdVFusV3Wbqu+xiziyxmybeK7UkyanEmn6uaLmfricJtlGA6mxSrMrAVrz9HBJ1ukYYS2lrLZTXJSxnX29cAhtO7WyC4Evx+bzqgGM201eSL+995PgUqmsl3v9F0JyDQ4QDUPTglw/eBk62Zvlt32CJrbokQ6nU8J4UjMiwplPFRtEi/yqlehEXQBeDw/mYu2n4GCtuP6FHSiUflLXrwqkuwpoH7/vVcDiU2kQOiGJnMgqtVwU29DlhrS9YmtWEPt5JSE93LYQTh6K0HgvrQ+D4mwvgrg5ohS+I=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(396003)(46966005)(966005)(83380400001)(1076003)(26005)(44832011)(55016002)(7696005)(8676002)(6506007)(16526019)(956004)(86362001)(8936002)(186003)(5660300002)(82310400002)(36906005)(81166007)(316002)(6862004)(2906002)(70206006)(47076004)(70586007)(4326008)(9686003)(82740400003)(336012)(356005)(478600001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2020 10:56:13.8669 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 88b66b91-9dd5-41d7-8adc-08d843655331
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4123
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, pullip.cho@samsung.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, john.stultz@linaro.org,
 nd@arm.com, surenb@google.com, akpm@linux-foundation.org, vbabka@suse.cz,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, minchan@kernel.org,
 joaodias@google.com, iamjoonsoo.kim@lge.com, christian.koenig@amd.com
Subject: Re: [Linaro-mm-sig] [PATCH 0/3] Chunk Heap Support on DMA-HEAP
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGksCgpPbiBUdWUsIEF1ZyAxOCwgMjAyMCBhdCAwNTowNDoxMlBNICswOTAwLCBIeWVzb28gWXUg
d3JvdGU6Cj4gVGhlc2UgcGF0Y2ggc2VyaWVzIHRvIGludHJvZHVjZSBhIG5ldyBkbWEgaGVhcCwg
Y2h1bmsgaGVhcC4KPiBUaGF0IGhlYXAgaXMgbmVlZGVkIGZvciBzcGVjaWFsIEhXIHRoYXQgcmVx
dWlyZXMgYnVsayBhbGxvY2F0aW9uIG9mCj4gZml4ZWQgaGlnaCBvcmRlciBwYWdlcy4gRm9yIGV4
YW1wbGUsIDY0TUIgZG1hLWJ1ZiBwYWdlcyBhcmUgbWFkZSB1cAo+IHRvIGZpeGVkIG9yZGVyLTQg
cGFnZXMgKiAxMDI0Lgo+IAo+IFRoZSBjaHVuayBoZWFwIHVzZXMgYWxsb2NfcGFnZXNfYnVsayB0
byBhbGxvY2F0ZSBoaWdoIG9yZGVyIHBhZ2UuCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtbW0vMjAyMDA4MTQxNzMxMzEuMjgwMzAwMi0xLW1pbmNoYW5Aa2VybmVsLm9yZwo+IAo+IFRo
ZSBjaHVuayBoZWFwIGlzIHJlZ2lzdGVyZWQgYnkgZGV2aWNlIHRyZWUgd2l0aCBhbGlnbm1lbnQg
YW5kIG1lbW9yeSBub2RlCj4gb2YgY29udGlndW91cyBtZW1vcnkgYWxsb2NhdG9yKENNQSkuIEFs
aWdubWVudCBkZWZpbmVzIGNodW5rIHBhZ2Ugc2l6ZS4KPiBGb3IgZXhhbXBsZSwgYWxpZ25tZW50
IDB4MV8wMDAwIG1lYW5zIGNodW5rIHBhZ2Ugc2l6ZSBpcyA2NEtCLgo+IFRoZSBwaGFuZGxlIHRv
IG1lbW9yeSBub2RlIGluZGljYXRlcyBjb250aWd1b3VzIG1lbW9yeSBhbGxvY2F0b3IoQ01BKS4K
PiBJZiBkZXZpY2Ugbm9kZSBkb2Vzbid0IGhhdmUgY21hLCB0aGUgcmVnaXN0cmF0aW9uIG9mIGNo
dW5rIGhlYXAgZmFpbHMuCgpUaGlzIHJlbWluZHMgbWUgb2YgYW4gaW9uIGhlYXAgZGV2ZWxvcGVk
IGF0IEFybSBzZXZlcmFsIHllYXJzIGFnbzoKaHR0cHM6Ly9naXQubGluYXJvLm9yZy9sYW5kaW5n
LXRlYW1zL3dvcmtpbmcvYXJtL2tlcm5lbC5naXQvdHJlZS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uX2NvbXBvdW5kX3BhZ2UuYwoKU29tZSBtb3JlIGRlc2NyaXB0aXZlIHRleHQgaGVy
ZToKaHR0cHM6Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9DUEEKCkl0IG1haW50YWlucyBhIHBv
b2wgb2YgaGlnaC1vcmRlciBwYWdlcyB3aXRoIGEgd29ya2VyIHRocmVhZCB0bwphdHRlbXB0IGNv
bXBhY3Rpb24gYW5kIGFsbG9jYXRpb24gdG8ga2VlcCB0aGUgcG9vbCBmaWxsZWQsIHdpdGggaGln
aAphbmQgbG93IHdhdGVybWFya3MgdG8gdHJpZ2dlciBmcmVlaW5nL2FsbG9jYXRpbmcgb2YgY2h1
bmtzLgpJdCBpbXBsZW1lbnRzIGEgc2hyaW5rZXIgdG8gYWxsb3cgdGhlIHN5c3RlbSB0byByZWNs
YWltIHRoZSBwb29sIHVuZGVyCmhpZ2ggbWVtb3J5IHByZXNzdXJlLgoKSXMgbWFpbnRhaW5pbmcg
YSBwb29sIHNvbWV0aGluZyB5b3UgY29uc2lkZXJlZD8gRnJvbSB0aGUKYWxsb2NfcGFnZXNfYnVs
ayB0aHJlYWQgaXQgc291bmRzIGxpa2UgeW91IHdhbnQgdG8gYWxsb2NhdGUgMzAwTSBhdCBhCnRp
bWUsIHNvIEkgZXhwZWN0IGlmIHlvdSB0dW5lZCB0aGUgcG9vbCBzaXplIHRvIG1hdGNoIHRoYXQg
aXQgY291bGQKd29yayBxdWl0ZSB3ZWxsLgoKVGhhdCBpbXBsZW1lbnRhdGlvbiBpc24ndCB1c2lu
ZyBhIENNQSByZWdpb24sIGJ1dCBhIHNpbWlsYXIgYXBwcm9hY2gKY291bGQgZGVmaW5pdGVseSBi
ZSBhcHBsaWVkLgoKVGhhbmtzLAotQnJpYW4KCj4gCj4gVGhlIHBhdGNoc2V0IGluY2x1ZGVzIHRo
ZSBmb2xsb3dpbmc6Cj4gIC0gZXhwb3J0IGRtYS1oZWFwIEFQSSB0byByZWdpc3RlciBrZXJuZWwg
bW9kdWxlIGRtYSBoZWFwLgo+ICAtIGFkZCBjaHVuayBoZWFwIGltcGxlbWVudGF0aW9uLgo+ICAt
IGRvY3VtZW50IG9mIGRldmljZSB0cmVlIHRvIHJlZ2lzdGVyIGNodW5rIGhlYXAKPiAKPiBIeWVz
b28gWXUgKDMpOgo+ICAgZG1hLWJ1ZjogYWRkIG1pc3NpbmcgRVhQT1JUX1NZTUJPTF9HUEwoKSBm
b3IgZG1hIGhlYXBzCj4gICBkbWEtYnVmOiBoZWFwczogYWRkIGNodW5rIGhlYXAgdG8gZG1hYnVm
IGhlYXBzCj4gICBkbWEtaGVhcDogRGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFwCj4g
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS1idWYvY2h1bmtfaGVhcC55YW1sICAgIHwg
IDQ2ICsrKysrCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAyICsKPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDkgKwo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAg
ICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jaHVua19o
ZWFwLmMgICAgICAgICAgICAgICAgIHwgMjIyICsrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgICAgICAgICAgICAgICB8ICAgMiArCj4g
IDYgZmlsZXMgY2hhbmdlZCwgMjgyIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFt
bAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAu
Ywo+IAo+IC0tIAo+IDIuNy40Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
