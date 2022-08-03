Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D513588C4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Aug 2022 14:40:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 518193F219
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Aug 2022 12:40:40 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2061.outbound.protection.outlook.com [40.107.20.61])
	by lists.linaro.org (Postfix) with ESMTPS id 32F2E3EE00
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Aug 2022 12:40:37 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=KNp3lXJkyh61Il+Aim+UGqx8iHdaGl713ES3SwjdG0rC7ORmMSc/IQ93XkUxAzmPdhk+sYfnpI7MqbDx19G/N7ZdZRTCXEY2tiZdLRIu48Rd6tbx+pP9YXJxSr9sXVsA1gcIK2rffnJ3xrSCkrMYysQM7LVAkopGxr3u17ZwOl4mKT1e4giyQ5f8+332vIHv+W+bOsmA2BKnmdrNDfq1hmoE9jXEdNo8j8tECH5n1j/mdRiIDlooSm4f0+R+SdG5zCDyDElD1GK9TF4lw7GtfRRLpsZQjzthF8oxC6S7g+8YLNEP8G2CDm8NkOy1y5vDFGGWhPcHTsNKZawZzYbm7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjfTQuk2g1WwYBT4t7PT7zN0SqdaSrsNyea9UT8qfXk=;
 b=Y0mMhfgtVuNNOXO4w5ZlbKbQz680gG1mKen/GCp3E5MusfzQck1u1bQqJ9jNvY7usd6TFLmbuyvVnp5m2cxWCfGu3/x+E6Kyf+Z2P6bM45rpbSATjia2eqblWkT0WPMlXw42jUdxUFqId0vfT7ihlzf4KS75hPQlja5cfR0h06gi6AwduqOicd0aeWP8prk0EuEy5/La7E+SxkNd0If+Gjb0u8j53Zj3ocRuVYQyKhbxsxj8bunPIg3dnRCIuyfZoHnltidN5/xvyGeE8sV0Y3XJ8W9m6pgpEw6RdcaH93GeW7gV1dtMdKQvMXpGV1H1bygZr2tuwXbwdqFEmJcjMA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjfTQuk2g1WwYBT4t7PT7zN0SqdaSrsNyea9UT8qfXk=;
 b=zynjBBUJTQ0Dl84ydsLB9RgSXAWmm7+bUA1nII0JUKvDF5ZgIhTp65HRSSWxb9MqhDYWFEmySpkp3lTnr1csy6jUj+jiD3iHVSH2/p43n2XV4arg3sq74VeiuBFrjYxJth4t0I+xcWOG2Y73KmGEXGhHFGVTqxKiWfuZlnqAS6w=
Received: from AS9PR05CA0017.eurprd05.prod.outlook.com (2603:10a6:20b:488::25)
 by AM0PR08MB4098.eurprd08.prod.outlook.com (2603:10a6:208:12f::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Wed, 3 Aug
 2022 12:40:33 +0000
Received: from VE1EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:488:cafe::44) by AS9PR05CA0017.outlook.office365.com
 (2603:10a6:20b:488::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14 via Frontend
 Transport; Wed, 3 Aug 2022 12:40:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT021.mail.protection.outlook.com (10.152.18.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.12 via Frontend Transport; Wed, 3 Aug 2022 12:40:32 +0000
Received: ("Tessian outbound c883b5ba7b70:v123"); Wed, 03 Aug 2022 12:40:32 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b6d0c94528ea6eff
X-CR-MTA-TID: 64aa7808
Received: from 6db06d7defb8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1CDA3B7A-82F8-44DE-AF31-2C5D70D39E72.1;
	Wed, 03 Aug 2022 12:40:26 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6db06d7defb8.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 03 Aug 2022 12:40:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkpX/QeeC4SH/s5p0J49iS3ps8/+ABoJolBSL84BUV0C+iy4VHiS/I6LFK/lI/NJElowiCDTnuuhco53u2R6VmkrLDyOg6zGnjG+i04J0GSPHCGoCh0Sa0o9LgJ85Lc0dsZm/v1EUUN+yq24Zck0WW0qBzQqcDAKYM5XcLiqM9GLOyswYOB4A11qgpCxuv55NEgohrotY2hQM5P246lKVRtJtaICFawJ8tjnejEKf8rnCAs8SE+FP7HkVJz0dXz9RnZ5GZLFrY7q/+087KFFY70wlj1UtL83wVASjpVjwkhVtwU7lh5AuwYOPjZ/7sbrM80PCKNaVS848IlZKbQSEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjfTQuk2g1WwYBT4t7PT7zN0SqdaSrsNyea9UT8qfXk=;
 b=h5hWjcUVMHZWYHq2GPGNX7BTfNFav5jmA8E+fCi80YnWwU8HSTN7R/ZSjpMzpHTe3x9D3o+pYOHh8P6ERwTWTZV0+Dh2Eb0Lt+uNZ3Rd2KF+HuNJjXcQZruFMBJbMUzhpb8+DfyjSrvca9wGX7AghJbHOUSZN++Ilr4v6G+a4dm57dfdwWEf6QPj86skB0UFyPy/vFxNfOnZNwRxfL/b+DtIup1m+L4N29qlJMqamNpQMK5yX3yqPjp5afniaE7y1PQZocv7nA5e9wA68RO67ZMIpvkn38YY77RbuA5bHndLC7Y3GRvm/KcRqLv2t72RwmmWrTldJSL7YJh/JNcuZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjfTQuk2g1WwYBT4t7PT7zN0SqdaSrsNyea9UT8qfXk=;
 b=zynjBBUJTQ0Dl84ydsLB9RgSXAWmm7+bUA1nII0JUKvDF5ZgIhTp65HRSSWxb9MqhDYWFEmySpkp3lTnr1csy6jUj+jiD3iHVSH2/p43n2XV4arg3sq74VeiuBFrjYxJth4t0I+xcWOG2Y73KmGEXGhHFGVTqxKiWfuZlnqAS6w=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AM9PR08MB6803.eurprd08.prod.outlook.com (2603:10a6:20b:301::12)
 by PR2PR08MB4667.eurprd08.prod.outlook.com (2603:10a6:101:1a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Wed, 3 Aug
 2022 12:40:17 +0000
Received: from AM9PR08MB6803.eurprd08.prod.outlook.com
 ([fe80::4cad:8ea2:a247:6bce]) by AM9PR08MB6803.eurprd08.prod.outlook.com
 ([fe80::4cad:8ea2:a247:6bce%8]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 12:40:17 +0000
Date: Wed, 3 Aug 2022 13:40:03 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Olivier Masse <olivier.masse@nxp.com>
Message-ID: <20220803124003.jftyp7zj2rnruhsc@000377403353>
References: <20220802095843.14614-1-olivier.masse@nxp.com>
 <20220802095843.14614-3-olivier.masse@nxp.com>
Content-Disposition: inline
In-Reply-To: <20220802095843.14614-3-olivier.masse@nxp.com>
X-ClientProxiedBy: SN4PR0501CA0023.namprd05.prod.outlook.com
 (2603:10b6:803:40::36) To AM9PR08MB6803.eurprd08.prod.outlook.com
 (2603:10a6:20b:301::12)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: df8286c9-8d8e-4703-9e2d-08da754d5b44
X-MS-TrafficTypeDiagnostic: 
	PR2PR08MB4667:EE_|VE1EUR03FT021:EE_|AM0PR08MB4098:EE_
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 qDRDIs8wyfabWCmbO7Wi4+2QwHwpzF486o7bIVHFTGYZam3wvnBALCereqdZB8MCBurwG8pKR2K66tvnjsofcFWHlV5j2Lv4KAvNnBZDYxXqxzWL7SZNBMVJDWfy8kE5KhRYpzmUXazv1DEzVjmvIDnvZSwQxcwKUZnjKKcyapcEiG4059bTFIxH/ypurNJ73BFYetmDbosedJFE/JMPYNUxi93j6waEMNmgU3lQSC2ZQA+0QiX8/CkwDySbTyptiwT8BBDPhmDkUZ7VVqgXXHX+igRgKp8jT0XDk+7aJyk7NdmwC2D0hsDAhet+lZRnEwiea1mHE3PXCkJfKKYFEdxmRIQ9kl4LbM84V04+Zu5lYp32hwectBgmhrBd0n9+ZXmF1+NNSO1nf7aEBe0wf9CrgsquutTkKmOx71s6FoKqniacteL13O21J+75U5QaEW67XnvF8CH0PIKWIcwsejQzcKP9yFJRcEOIZhQSdxJlIPKQC9e1zdSVQUJi773o2ROEhU/flBAJsLdW9M3yvD91dEdEMgsZvqvRDTZjYpnVAvKCmIEMf/a6CILHk+kn8yzuWY16t5xNG2zo/h3jDDsvvxjub/WILYhgeG1ZcstOT2I13JIbAy0z7PTRcCSwPe79k7RHREXI7Fvj//dg7PMuPLVEziwrvKzwMDOAoUyEMupym2nhPSshD2g2zwAgfp8bozlaTCSy8ZxXM+1Xea4JbPlZPn3D0DHCI3n1FF0j0TVcm9UtjuWq3M923aCo
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR08MB6803.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(39860400002)(136003)(346002)(366004)(376002)(396003)(4744005)(5660300002)(86362001)(6486002)(4326008)(66946007)(33716001)(66476007)(66556008)(316002)(6916009)(8936002)(6666004)(26005)(6512007)(186003)(9686003)(8676002)(1076003)(38100700002)(44832011)(2906002)(478600001)(41300700001)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4667
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	940e4208-0a69-4f46-be5d-08da754d5217
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	40mRmaMTFL0xUMvx/7i9PGoZE99K2TRGMyl3doB4dU9CKSDZIC10A9JwNNqpd73600M7wUmeol9jsnJg6MNn+21yKdE4STSCF5kvfn9JvVf3wBJFOlaE7yOGSDcCohNQeuOBzG7RQfBlnd5rQEtfWAC2BRuLHyO3gPsKyYsn/RBnBzAYBuYeFlpc6UDvS3i/28Ck2DvZQqniZgchEHgK8GcMFhf1HgnCay2lgeaEPF2YuvuRv2+0vmonK2a1ioADz4pYPbYz1Kpidb3RHkWrabXunwmoCf1TBh+Y0MttQysGS32+tLVOYRY1u1ITr6SbuhAuPKVKT/mSD0xneE6Dy462FgwRrBmCgNoEt93ytr2yBVNeCV/fh6C37hGDv/gsfN6EIdEWeFKAiWwVOYMYeP+XXBaWaLXjL4Mkew2N7TGAqRm420P346szD2WL6q7SCwvbMrEl5G1hNu4pQN92L16FnJGr64uNqcHgkdpNxJsccScW2P/vcA8qqz7FifLsneQKQKeLH2u6RiaSbmH63uAt4EE7ZRBHSUDq64fE3vWP4+KXF+UnFDkzagiQ/e5/Zt2zk8L/o3zbV8QZq8awMlaHWnEINHMzHhz6wsk2Qxj2eHVHq8OdRvYlfuAItSqYRMDuXt5nZdTI63F89tVLbzjlJcGibjbbrC/3K+SSyvPqCn4dDAMXOgXlAfEpladBk8BDmtCc/56TfLpyF5CIwgLIVX3nqg5Fvioi8vkssgNm60fgwzI41x3ioQi/iuE8fc8uBq2ALDCUeeIlWwl7fnaVp/PGn04DX+BpeO3WupFSprBVxHYTkmRuU0ZOgSs8
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(7916004)(39860400002)(346002)(376002)(396003)(136003)(40470700004)(36840700001)(46966006)(4744005)(41300700001)(6666004)(478600001)(40480700001)(356005)(82740400003)(2906002)(8936002)(81166007)(6486002)(82310400005)(5660300002)(316002)(33716001)(6862004)(44832011)(36860700001)(6506007)(70206006)(70586007)(86362001)(186003)(1076003)(4326008)(26005)(8676002)(9686003)(40460700003)(6512007)(336012)(47076005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 12:40:32.9407
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df8286c9-8d8e-4703-9e2d-08da754d5b44
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4098
Message-ID-Hash: QTC4JCYVUIOUE7QBPAQL6DQN24L3SVYE
X-Message-ID-Hash: QTC4JCYVUIOUE7QBPAQL6DQN24L3SVYE
X-MailFrom: Brian.Starkey@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, clement.faure@nxp.com, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/5] ANDROID: dma-buf: heaps: Add a shrinker controlled page pool
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTC4JCYVUIOUE7QBPAQL6DQN24L3SVYE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

On Tue, Aug 02, 2022 at 11:58:40AM +0200, Olivier Masse wrote:
> From: John Stultz <john.stultz@linaro.org>
> 
> This patch adds a simple shrinker controlled page pool to the
> dmabuf heaps subsystem.
> 
> This replaces the use of the networking page_pool, over concerns
> that the lack of a shrinker for that implementation may cause
> additional low-memory kills
> 
> TODO: Take another pass at trying to unify this w/ the ttm pool
> 
> Thoughts and feedback would be greatly appreciated!

Did I miss something, or is this not actually used anywhere?

Thanks,
-Brian
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
