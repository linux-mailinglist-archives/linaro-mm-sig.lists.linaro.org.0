Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B93591410
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 18:39:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 068FC3F512
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Aug 2022 16:39:41 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2080.outbound.protection.outlook.com [40.107.21.80])
	by lists.linaro.org (Postfix) with ESMTPS id A06AC3EF0D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 16:39:37 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Ap2HlyZSse6+ijLMtlGiLQLPhyjsFaLEGwU8nnQChyKGGV1aTuES7+w1EjXaWo3DVFtDsALbn03vl/57DOLuhak2nB5FqeIsTAPa/G1SkB6mg82+/npXvH7c7xqhsXucygl4YdVmckm/pwUkYSR7PMIWj7P0l9joKdZZ32LSH6vHl4kTkZAjGZOzH+0VDRoTvF/g4OxLCjhKEjzZEN/RO8TJ0v3hn0Ib1sFSC9B3KGOiQIQrgX4ZrxCRSCJ6gEk3EXpNFE5DzOU6QhQWTgFQbqoe6lvnc2/NNSZQCND+J77iO4nyxPaMbKEdw1bRR1oMG+Mjh7zpH69KnrB3oGeCXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2T6MsxHUqEbPFlCy8q58n+JAr0cjUsaiu3Jkbd/Lfqs=;
 b=MXp/xzhKdOPVbM/kNlNr5vPf1TAQrOVTh4QiGUqTzcfjADphpwBRqvkhwIX7F8A/F4PcxMqxw/dU0R0RWOrcIFy9YDwhgh/qsTUxsGfnrWFimyiE+RAKHiv3ZyY0L2p/1fjWoVFBI0+0cSsQpkQr85fBMpAVHRgZLWh/uUW1d9EVFZDguO/Ur7lgqSH/BCjdUspwzoHkUtCP2MWJv3HUmQvFg3aqsfvhkmP1ytxh5nrqvm8PCJ4O1b6lAPflgVcx41J5lTmH9R7ScWhNZH7orjOBqNjNx1Ud5wY9Wo2k+g80GS5yG6aa985xBBZIGb2fsk6tDAWJzP2Piip8Ul311g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2T6MsxHUqEbPFlCy8q58n+JAr0cjUsaiu3Jkbd/Lfqs=;
 b=i9dN+B7GwbMqZyvJTFQTh+eqg513zPZd17AujF4mMMi5HTNzVda2tVvww0AnxrNy/QREHu9o/u5/m1j0SiTyZ6t/ZikMLgTRzDSguKGc9lvEZeO8mFqWbIo5KvK/fDp1BotSC4vfPxJHc6/maxDsPPrqGRY1NcIGwf1q3vqcTIY=
Received: from AS8PR07CA0056.eurprd07.prod.outlook.com (2603:10a6:20b:459::25)
 by AM9PR08MB6770.eurprd08.prod.outlook.com (2603:10a6:20b:300::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Fri, 12 Aug
 2022 16:39:35 +0000
Received: from VE1EUR03FT035.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:459:cafe::10) by AS8PR07CA0056.outlook.office365.com
 (2603:10a6:20b:459::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.10 via Frontend
 Transport; Fri, 12 Aug 2022 16:39:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT035.mail.protection.outlook.com (10.152.18.110) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11 via Frontend Transport; Fri, 12 Aug 2022 16:39:34 +0000
Received: ("Tessian outbound cc6a8ab50b6b:v123"); Fri, 12 Aug 2022 16:39:34 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3554cbd9211e95e4
X-CR-MTA-TID: 64aa7808
Received: from dbc98588f6be.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 130F002B-321C-45A9-9F12-FBCADDDA3572.1;
	Fri, 12 Aug 2022 16:39:27 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dbc98588f6be.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 12 Aug 2022 16:39:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdkOdf+eTEgTUQtZxg8DUdEIOGrnsrn8S+kyudaOAzN2Xq47KiXWjsWMIc770h1wwc0OEETg51tqFEX2X/QRNLOpHlCxLMqFzjjfZKGdNZga1EHzpumCfQx8PI/p2Y0WeXud4AlWAjwqEOnCs8tTu+Vud39aicuJRXAWsItFph9N1Pc6+InA2MMoeNow91TLhF8eoOKhSfHaez9EuO8vaUq93leDKn5LX0z0J6Txe49hZWzty4N3Tm2dCrhmDiU998hD3Yr5mxwtlYckIQwew11DjGJpME6E9ZusBjBQVOoF2nrrnvmGpVkh+ud8N26t4xHMQ97j57ZgSX1y+6hjqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2T6MsxHUqEbPFlCy8q58n+JAr0cjUsaiu3Jkbd/Lfqs=;
 b=iNwJJXEoxfxC2bVh9PzaVTXFPqKPLsdql7+zwrSH8uWz9RrfF8K1p+9+VBw7akUIDR8/HByihuRYAtwnKsiJLT1TjiHHO90GgUn+c5gQLHvlrZ2G9emBcti+mH7yFwQSVCxTqrqspMfPEYAtyHZJkK7nCI1zHgmWHevWn8ETB10EChRMTI4w4bB2yfknwXZkuuMqGTpFtG/2s6h9/mlQZ7JaXCQptXHzSAm+UFCOjqXP581pdvjTAL1fgGGY2vnodQplQ4DBEquMhNDoyZZ3Agq/tQBOH2W3eaaih8De1RvIspUj3WWTicd66Q0CAK+ZT8Xn6v1fBEHwBeCf9Q6pnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2T6MsxHUqEbPFlCy8q58n+JAr0cjUsaiu3Jkbd/Lfqs=;
 b=i9dN+B7GwbMqZyvJTFQTh+eqg513zPZd17AujF4mMMi5HTNzVda2tVvww0AnxrNy/QREHu9o/u5/m1j0SiTyZ6t/ZikMLgTRzDSguKGc9lvEZeO8mFqWbIo5KvK/fDp1BotSC4vfPxJHc6/maxDsPPrqGRY1NcIGwf1q3vqcTIY=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from DB9PR08MB6812.eurprd08.prod.outlook.com (2603:10a6:10:2a2::15)
 by AM6PR08MB3783.eurprd08.prod.outlook.com (2603:10a6:20b:8a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Fri, 12 Aug
 2022 16:39:25 +0000
Received: from DB9PR08MB6812.eurprd08.prod.outlook.com
 ([fe80::6cf7:a261:295d:1b8e]) by DB9PR08MB6812.eurprd08.prod.outlook.com
 ([fe80::6cf7:a261:295d:1b8e%6]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 16:39:24 +0000
Date: Fri, 12 Aug 2022 17:39:22 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Olivier Masse <olivier.masse@nxp.com>
Message-ID: <20220812163922.v7sf3havi5dpgi5u@000377403353>
References: <20220805135330.970-1-olivier.masse@nxp.com>
 <20220805135330.970-2-olivier.masse@nxp.com>
 <20220805154139.2qkqxwklufjpsfdx@000377403353>
 <7e61668164f8bf02f6c4ee166e85abc42b5ee958.camel@nxp.com>
Content-Disposition: inline
In-Reply-To: <7e61668164f8bf02f6c4ee166e85abc42b5ee958.camel@nxp.com>
X-ClientProxiedBy: LO4P123CA0015.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:150::20) To DB9PR08MB6812.eurprd08.prod.outlook.com
 (2603:10a6:10:2a2::15)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: e1c8c4a3-eb75-4f8b-18c1-08da7c813d53
X-MS-TrafficTypeDiagnostic: 
	AM6PR08MB3783:EE_|VE1EUR03FT035:EE_|AM9PR08MB6770:EE_
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 f7K3UQWIEuGznb1LSfd/Tid1L9fm8x9H2lEni/GHzHpU6WCQDq1FTuWFvZgbeIPrlbSir3xyEMETonbHA11M753N2xxo9UAXfH4Sor6Bu1FOuW34IKCbFlImqJNC72S7cbyMFNRnuP2T+dOcxYXpgRp/YFrdlWebkgRbylJHnIh5bN/mEYZSBgaj6AHsbRSwWzsxChZx4POdU5dMx+OGDpoVNv06rfw1bUczGFKZVgudn30V2DsKbdiszEOq6h2Fwqh+sE+McYTfJTpJDNKCXzo/0ihbzQjp85umEjYHrKa9XYdEzYg44iyXY5SuNtk9eyiqnMkENqVRFYJPf4K6rcu0sgUylne2yCzXH5wJWG50AmVHyj3M8HtePM3t0Z2JCMWZ8ERabLFT/+StOTYyS6fT5MADiXavJg5vA6RyU2127BT11VCV6Vl23njodjrkLS0ZjjflQfGMRui7WcasoY3TG9kPcy/E9a/rVeh9XMZLCMkVDZLuBVPSsVCLQGKes/8/tfFXivlEHo4zqwWfxn1M14daJ1PUMPJtOwLxEcX/mTy45tvyio0LNXCvsNrWHwd6Eggjed2jhnxue3rN+OQAMZBJuKrtVSaEASnC9WWd71k4oT/rPgEjWXXhbQ1GLj0NFWYJwfIPRx8P5+hPuUYU41bZVjFdro7clzxqAviCezDbRfCMLPiuSCJ3bLcq
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR08MB6812.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(8936002)(1076003)(186003)(83380400001)(44832011)(86362001)(38100700002)(2906002)(5660300002)(66556008)(6486002)(478600001)(33716001)(966005)(6512007)(6506007)(9686003)(41300700001)(26005)(8676002)(66476007)(66946007)(4326008)(316002)(54906003)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3783
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b1eb25f1-9ead-4003-382e-08da7c813747
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fQDA9IjLrS/tdUtlNibz4rwvpNQNqr7gINHZ/CU0YZlMxVPV2b8yuwSLLYsuAsw4MVFDOZ2zGfWQr0b9Rh/kQ4Irzeq7RD7u5c9chjuWVRcQu1AVH1SI/t47Axf5RQgHqELw5ETRWReW1C04/NupL2rzz7YShR51FjQHHqa9xWeiX8wN7NxtWkolLBRuIYzMKgK9ZUUFLFCkBmWa221LcdE9L1eX6MC6lfPgOWxN16BQmvtE/KJ5kvRhNrInUt//2ZvKtW3o1PCO76K+ZDIcL4Z3CvYkJ+whUkgX+pmTmd+PNT6gdYwWOqfN53yc6l7Kx8fc7c33lhpMVP+VXGBD8DKwmb264xMVvppI30AKvy8mbgrfZeYozNn+4WKaCxMkr7jlIYCIikw43UMYzNczVuQek2b9NgUHnFyozn24+WOQnEtavSpFP+KFSkw6Keef8ZXrd3Dp8jwVWdVM8VqGQUvjwVTCnjlPLfRis8qZ0Lr7Voc9RFzsu8aAh61+Ksr+sFily9TS6XUmUhZInuGsFJCAbdMSuxT6gEWOf7VIzdom4AiK6OM5oD327wOu0thGjydWuo4KwHf6AP+p9pGcIf0cyR9zXb1iu1h5T6o/aLR6DguD9/X8140Hcbx9jsUsndkQKsO8pZw8WmYzciW0EHbCOQzG43BwSTDJUt9fJdeROR6D3MbVocov9Vwu22IkkwUNrx1NtLARPVMatypuSdJHPx6uoGSDKiodEWB2Ip4RNMMP2Af4M0c/zAYPwd8w
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(7916004)(4636009)(136003)(346002)(396003)(376002)(39860400002)(36840700001)(40470700004)(46966006)(966005)(6486002)(41300700001)(478600001)(54906003)(316002)(40480700001)(4326008)(33716001)(82310400005)(2906002)(26005)(8676002)(40460700003)(44832011)(70206006)(70586007)(5660300002)(6862004)(8936002)(82740400003)(36860700001)(86362001)(81166007)(1076003)(356005)(6506007)(107886003)(336012)(47076005)(186003)(9686003)(83380400001)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2022 16:39:34.6734
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1c8c4a3-eb75-4f8b-18c1-08da7c813d53
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6770
Message-ID-Hash: VI724HCTWGLOBINHD6R22ZCYKMAEZRK6
X-Message-ID-Hash: VI724HCTWGLOBINHD6R22ZCYKMAEZRK6
X-MailFrom: Brian.Starkey@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "nd@arm.com" <nd@arm.com>, =?utf-8?Q?Cl=C3=A9ment?= Faure <clement.faure@nxp.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH 1/3] dma-buf: heaps: add Linaro secure dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VI724HCTWGLOBINHD6R22ZCYKMAEZRK6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Mon, Aug 08, 2022 at 02:39:53PM +0000, Olivier Masse wrote:
> Hi Brian,
> 
> On ven., 2022-08-05 at 16:41 +0100, Brian Starkey wrote:
> > Caution: EXT Email
> > 
> > Hi Olivier,
> > 
> > Thanks, I think this is looking much better.
> > 
> > I'd like to know how others feel about landing this heap; there's
> > been
> > push-back in the past about heaps in device-tree and discussions
> > around how "custom" heaps should be treated (though IMO this is quite
> > a generic one).
> > 
> > On Fri, Aug 05, 2022 at 03:53:28PM +0200, Olivier Masse wrote:
> > > add Linaro secure heap bindings: linaro,secure-heap
> > > use genalloc to allocate/free buffer from buffer pool.
> > > buffer pool info is from dts.
> > > use sg_table instore the allocated memory info, the length of
> > > sg_table is 1.
> > > implement secure_heap_buf_ops to implement buffer share in
> > > difference device:
> > > 1. Userspace passes this fd to all drivers it wants this buffer
> > > to share with: First the filedescriptor is converted to a &dma_buf
> > > using
> > > dma_buf_get(). Then the buffer is attached to the device using
> > > dma_buf_attach().
> > > 2. Once the buffer is attached to all devices userspace can
> > > initiate DMA
> > > access to the shared buffer. In the kernel this is done by calling
> > > dma_buf_map_attachment()
> > > 3. get sg_table with dma_buf_map_attachment in difference device.
> > > 
> > 
> > I think this commit message could use a little rework. A few
> > thoughts:
> > 
> > * The bindings are in a separate commit, so seems strange to mention
> >   here.
> 
> what about:
> "add Linaro secure heap compatible reserved memory: linaro,secure-heap"
> 

I'd say something like:

Add a dma-buf heap to allocate secure buffers from a reserved-memory
region.

..snip

> > > +
> > > +static struct sg_table *secure_heap_map_dma_buf(struct
> > > dma_buf_attachment *attachment,
> > > +                                             enum
> > > dma_data_direction direction)
> > > +{
> > > +     struct secure_heap_attachment *a = attachment->priv;
> > > +
> > > +     return a->table;
> > 
> > I think you still need to implement mapping and unmapping using the
> > DMA APIs. For example devices might be behind IOMMUs and the buffer
> > will need mapping into the IOMMU.
> 
> Devices that will need access to the buffer must be in secure.
> The tee driver will only need the scatter-list table to get dma address
> and len. Mapping will be done in the TEE.
> Please find tee_shm_register_fd in the following commit
> https://github.com/linaro-swg/linux/commit/41e21e5c405530590dc2dd10b2a8dbe64589840f
> 
> This patch need to be up-streamed as well.
> 

Interesting, that's not how the devices I've worked on operated.

Are you saying that you have to have a display controller driver
running in the TEE to display one of these buffers? If everything
needs to be in the TEE, then why even have these buffers allocated
by non-secure Linux at all?

I would have expected there to be HW enforcement of buffer access,
but for the display driver to be in non-secure Linux. That's how
TZMP1 works: https://static.linaro.org/connect/hkg18/presentations/hkg18-408.pdf

Looking at this SDP presentation, that also seems to be the case
there: https://static.linaro.org/connect/san19/presentations/san19-107.pdf

Based on those presentations, I think this heap should be implementing
map_dma_buf in the "normal" way, using the DMA API to map the buffer
to the device. It's up to the TEE and HW firewall to prevent access
to those mappings from non-secure devices.

My understanding is:

* The memory region should never be mapped or accessed from the host
  CPU. This is not a security requirement - the CPU will be denied
  access by whatever hardware is enforcing security - but any CPU
  accesses will fail, so there is no point in ever having a CPU
  mapping.
* The allocated buffers _should_ be mapped to devices via map_dma_buf.
  Again the HW enforcement will prevent access from devices which
  aren't permitted access, but for example a display controller
  may be allowed to read the secure buffer, composite it with other
  buffers, and display it on the screen.

Am I wrong? Even if SDP doesn't work this way, I think we should make
the heap as generic as possible so that it can work with different
secure video implementations.

> 
> > 

.. snip

> > > +
> > > +RESERVEDMEM_OF_DECLARE(secure_heap, "linaro,secure-heap",
> > > rmem_secure_heap_setup);
> > 
> > Is there anything linaro-specific about this? Could it be
> > linux,secure-heap?
> 
> for now, it's specific to Linaro OPTEE OS.
> but in a more generic way, it could be 
> linux,unmapped-heap ?

If these buffers can never be mapped, not to the CPU nor to devices,
then actually I don't see why it should be a dma-buf heap at all.

If this is just an interface to associate some identifier (in this
case an fd) with a region of physical address space, then why is it
useful to pretend that it's a dma-buf, if none of the dma-buf
operations actually do anything?

Cheers,
-Brian

> 
> > 
> > Thanks,
> > -Brian
> > 
> > > +
> > > +module_init(secure_heap_create);
> > > +MODULE_LICENSE("GPL v2");
> > > --
> > > 2.25.0
> > > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
