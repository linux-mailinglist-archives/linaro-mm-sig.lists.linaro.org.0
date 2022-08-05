Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A5158AD5F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Aug 2022 17:46:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B72247F05
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Aug 2022 15:46:42 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80072.outbound.protection.outlook.com [40.107.8.72])
	by lists.linaro.org (Postfix) with ESMTPS id EBC8A3EC75
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Aug 2022 15:46:39 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=MVv75U2OWQ14mp5JJYRUUsyorw7QuOSH6/ZPl8+McOUvpPk+0d4y1psDNhV0dT1UiqPH9KIXg3FWHB1d8rpfOZrbIhgee7N5XxFIiFI+4xe6jzLY0U3UNwcL8MNMjKkYHNYoYKaFT7flbe87ZGscR5DEhVZzOnvS4D5X4Lv864Lr/5+IODXTW6cvBCCt/zZindR/2nSSfEHWc8H0j69lbB8w5can+aTKAVSkS3a/N8oKple2BT1+iT0tl/M/UejVj686S2i2yhnuZ5G1xv1cNOaWfextAS0A/Byi4nAmgntjltQMWVBHTk5+GCsP7gSOe3g91BKoNXEQK7JsKQvWYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZpPeHFOqWZiBQS5jdlCQf1W8EHLymwm5Vn9sgZMTWM=;
 b=RqxfrUNJadOs7siDgJ1VqZTsij4iVbfRFCUWFF4l9kb4codaBqoa6mWF9+JXYfbyLP0ImWgiguu3HuAwRl8lQHh0lgLdOwJCIi6El0BEXqB9+n2QQRjBsVz9ZXhlu8YGd1jKp/vQdfln7i239hYzHqkzTNLrJmaE6v3YUQ0MGmo7U/cfnNVFIqvMCm7O9oYlkyo/0uWbA2pbaTufXsq+OE/iOu0XVmSZBKS8os2Tsu82hAeaAslqIsZdKCXV0Xq/hB7sZfFirV+/z7F+Rx0EuhX5Ggs60ZarhaW6w1Eead53W458VltBI2MmN4HaE5g3xRO7b+Ydt1yISWbGS/2F8A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZpPeHFOqWZiBQS5jdlCQf1W8EHLymwm5Vn9sgZMTWM=;
 b=qHOGmtsSakbe7N+Udj/tOHtChrY8nHQveffzbJbv2LETreIIBvEAAybmgQmn1Vm36rR7Bzy5TVCuN+7HW65Boo1rqCJ1l9EuMVyifB2TSwVjmwHOlWeXbUKylOz329qNN085xtxMqGcye/sC9dXfR37lE5CLHnKWWBPE96D2BD8=
Received: from DU2PR04CA0279.eurprd04.prod.outlook.com (2603:10a6:10:28c::14)
 by AS8PR08MB7062.eurprd08.prod.outlook.com (2603:10a6:20b:346::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Fri, 5 Aug
 2022 15:46:37 +0000
Received: from DBAEUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:28c:cafe::33) by DU2PR04CA0279.outlook.office365.com
 (2603:10a6:10:28c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16 via Frontend
 Transport; Fri, 5 Aug 2022 15:46:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT013.mail.protection.outlook.com (100.127.142.222) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.16 via Frontend Transport; Fri, 5 Aug 2022 15:46:36 +0000
Received: ("Tessian outbound 6a3290ff1310:v123"); Fri, 05 Aug 2022 15:46:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 46f7976c1139297c
X-CR-MTA-TID: 64aa7808
Received: from a719dd14048b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0FF34C66-776C-4005-A059-745D3A5F947A.1;
	Fri, 05 Aug 2022 15:46:29 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a719dd14048b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 05 Aug 2022 15:46:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjbv3qO0gHmG7U1l9cbQR/xGsYQFGVqjQopYFVlXGNwRbbzOg+ZiKvwkF4/loNJPuujl1frsT0BXDmQ56MDYib6fhuIiFld58kU5CJ0Uaql7OLMdHn73mlfnXzEBVNXZpeXSxIcsf2g1F3ZTWU+O2gw/EiL9QKUGkcgOh+gpsupp4KbFBxp3InPApIF73Xg+AGsB0kR6uMN83gjiBwaxh9q7PnaxeQ2IISvopc5lobt2lSAmmtN0aG0sgL4Z4vy6rJJ8fkGPdZaimGHSHHVELq91+9o2ZPhirWsALLXwipRoGWR//JOumx947XYMqo+qC+jUk4x8IVIubZL6ljn67w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZpPeHFOqWZiBQS5jdlCQf1W8EHLymwm5Vn9sgZMTWM=;
 b=j2uXwsKq+blAA/vbiJbvY0KNYvmYwxdbqbVNSYQa7c2gUgrBdm/6mNJps+oMZ0Ayib2o9yPoQ0JJBFd8Y4dO0AyTBP2V2Hkyzk6P/neMTx2rbtlFdvvsc1l2S/7gKPKAd5vKyt+Z8BKdGcabfFka3+Nl+bb0EuqKqxBy93hi+bM/OCOYL2TvaahrDJQuQP00vX+XnPIJqt3oqJjm7AjNFAv5ZudwItKkmUkrkoFFcwYMiCg01/i2BUarZoLDyEWNiIClmDtZuRxWogILI7zwbPmoVndAs+seO6eMcEDFjLFmPlO58rDwF3btqThddcwB9O2EvXpPLGtEwhQN4A/S7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZpPeHFOqWZiBQS5jdlCQf1W8EHLymwm5Vn9sgZMTWM=;
 b=qHOGmtsSakbe7N+Udj/tOHtChrY8nHQveffzbJbv2LETreIIBvEAAybmgQmn1Vm36rR7Bzy5TVCuN+7HW65Boo1rqCJ1l9EuMVyifB2TSwVjmwHOlWeXbUKylOz329qNN085xtxMqGcye/sC9dXfR37lE5CLHnKWWBPE96D2BD8=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AS8PR08MB6805.eurprd08.prod.outlook.com (2603:10a6:20b:396::14)
 by AS8PR08MB8061.eurprd08.prod.outlook.com (2603:10a6:20b:54a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Fri, 5 Aug
 2022 15:46:27 +0000
Received: from AS8PR08MB6805.eurprd08.prod.outlook.com
 ([fe80::c91e:5344:358c:b0e1]) by AS8PR08MB6805.eurprd08.prod.outlook.com
 ([fe80::c91e:5344:358c:b0e1%5]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 15:46:27 +0000
Date: Fri, 5 Aug 2022 16:46:24 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Olivier Masse <olivier.masse@nxp.com>
Message-ID: <20220805154624.qhrao5p3gwywl3xr@000377403353>
References: <20220805135330.970-1-olivier.masse@nxp.com>
 <20220805135330.970-3-olivier.masse@nxp.com>
Content-Disposition: inline
In-Reply-To: <20220805135330.970-3-olivier.masse@nxp.com>
X-ClientProxiedBy: LO6P123CA0008.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::16) To AS8PR08MB6805.eurprd08.prod.outlook.com
 (2603:10a6:20b:396::14)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 2e4e89f8-0da1-4f8f-b90c-08da76f9ae36
X-MS-TrafficTypeDiagnostic: 
	AS8PR08MB8061:EE_|DBAEUR03FT013:EE_|AS8PR08MB7062:EE_
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 H1uHJ2kie9Frpo6Pbo77eF5lMdXUXrXzwQa4o2e/YA1zqYVFecxNtE5hiH6CGi36jX1ZssLbd91fC2JnOcaVIo5Pa74fwf+jx03ZaBV0a2ofUbx4GO5MSjXp6mPU0vuYpXC+6c+KNunmbrOrxWi40xkjR6JFoWxNflGjZhJ/5iDLiyB9NYND66RW1X/goXwJBFjXuAc+3sXF5ZqVXuWZHsNracwdInsTU651ubFtGiM2fA4YSQ8xjHpRMq8ME5SF0dJZsMbI4/+AG8KRf6tJ0UOgyQs7zX4c/l44B+VY8ocgtws4iFy7+LHCTLymuCjiBLDoql/anBlkeMcGmeuH0ht2cnqyvdJZRY2RI0EMrXYqLPtnGUrbDEKSPg4UXk1dpvwu8iPCM9ie21nHJy+dAITWtLqEmiPQtE6ut2XZYOg3eKiNJyxY7G6vGlw7t9e9cTkDGtGFZul/MAyyIOtGVOaDSOwpZSjr4nil2QMfU32cY+Iz2K2B6IUQVbW35jd1y1X37C4c6RnAYTK3uLLw/rr3i7JV+VDqRkCt+U36wUV2NVgVZCk/aPsy21rhyTYKs2lmAWWk+vq+8RT4N9pFsV8F5jXeuj0jOQwLlqYo6NrOdocTsgLCqnEtO++nf/x77m5NkNwjYIVv/cISwEn//o/teRae1H+DldtCt9eKGIDuqGtQDxh76tyuNyfjkgX2XwI1ZXmy9fK+gMn3WFFZ60yF3+TBmoDJEkd+XxS083++/MMlD5GvXCEUcisHSYt2jgXHE5xXw2V57GAnxbp+VnaNIO8g9akDB7GiwgtH8eIwDbh/JKYLDmk+/zX5JlvB
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB6805.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(8676002)(83380400001)(4326008)(66556008)(66946007)(1076003)(186003)(66476007)(8936002)(7416002)(2906002)(5660300002)(44832011)(6916009)(6506007)(966005)(478600001)(6486002)(6666004)(86362001)(9686003)(316002)(41300700001)(26005)(6512007)(38100700002)(33716001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8061
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT013.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	20e93066-289d-4fc1-3f75-08da76f9a884
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5Rmut9hj2sAM/IIJRYGMFWhZm2AHPVSIrPuZSyRemvm9gutPILJgWwUyc1pgEnhZXXsElr5v4nwpnqcDjFqCbZaMbWiziPIVjSxMESE7pQYeVhqBw6KK1JWZQe4LYACX8U0hr5oxrVPq2PPXRsC4rcBStbJl3oq4FyonaiLfZuTefF782uK2V9lldD6/DFA3rlepxz6X2v7qOH4L/MPWR2nmFAe5WTflinfdgzFM5+TpnFF83twLHCgXMt7Gp/0lnNTsmZUB/f4fBfxJo7FJ6kWzA5DoJcqWvECQYgDr41GWXqjbOCFOZlgVNGsnxtdEQVOj59K9ki3Y6dKUUPHNBpJoTsBbna3RlFzzkIz48wCAmglLj7C2eTGLRNQh7A8J/yFQt0HJoju7ujM8csYKy7ATyqJntb/Rr+eABv87k09/0sCbP9KtFKT/yHg9ShS4GzHSFyE1do/ldYw7QifQAPtZcMUrOmgUGRIqDZU6KDjlZbrzJgw4oehB3sgTDDy4A9fg0WvkmnOl6Gq/2NxIQFAQOkGonCBHlsNZJIiWtik4mAm2b9uXLfFmah3wWA3iCfZOl2DQ5OxuZvQ8+L9KglPXA1l1n8/DUcUe6XRBoyfAJXhzyzAXaB9FHk0f/keXXGB2Dz1Xfp9A69Cj3b6Q2a4gAPDJv1bOGmqfrtDEYrMtydvc9TiCbgn1yQK2Q9sqjHGUmAVu7C/X9niMUAML/+PnvbF5ezC5/XKAOb8978BXUk2Fd5qt5O8phOEh7CDDwWKbrpyNuSt8nIQ+13RgyjtuMwIda7uSHfGI3c8994D4PeVE+aAXjIQOlODw8jFBBWeq7bS6kMmBEZufMAe6lgx6/77UsQE8E8bRBbc3Y8ZwZ5LQUH/cxBBBw/ohKGnn
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(7916004)(346002)(39860400002)(136003)(376002)(396003)(40470700004)(36840700001)(46966006)(107886003)(356005)(81166007)(44832011)(40460700003)(6486002)(86362001)(82740400003)(478600001)(40480700001)(8676002)(5660300002)(26005)(70206006)(9686003)(6512007)(82310400005)(966005)(70586007)(4326008)(1076003)(6862004)(8936002)(33716001)(36860700001)(186003)(83380400001)(316002)(2906002)(6666004)(47076005)(336012)(6506007)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 15:46:36.8102
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e4e89f8-0da1-4f8f-b90c-08da76f9ae36
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT013.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7062
Message-ID-Hash: 7AGC2DFGDCRJ2YNZ3CV4J3GRAEX7WS3J
X-Message-ID-Hash: 7AGC2DFGDCRJ2YNZ3CV4J3GRAEX7WS3J
X-MailFrom: Brian.Starkey@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, clement.faure@nxp.com, nd@arm.com, robh+dt@kernel.org, devicetree@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dt-bindings: reserved-memory: add linaro,secure-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7AGC2DFGDCRJ2YNZ3CV4J3GRAEX7WS3J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

+Rob and devicetree list.

I don't know if this should be "linaro" or something more generic,
and also where previous discussions got to about DMA heaps in DT.

Cheers,
-Brian

On Fri, Aug 05, 2022 at 03:53:29PM +0200, Olivier Masse wrote:
> DMABUF Reserved memory definition for OP-TEE SDP feaure.
> 
> Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
> ---
>  .../reserved-memory/linaro,secure-heap.yaml   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,secure-heap.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/linaro,secure-heap.yaml b/Documentation/devicetree/bindings/reserved-memory/linaro,secure-heap.yaml
> new file mode 100644
> index 000000000000..80522a4e2989
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/linaro,secure-heap.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/linaro,secure-heap.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Linaro Secure DMABUF Heap
> +
> +maintainers:
> +  - Olivier Masse <olivier.masse@nxp.com>
> +
> +description:
> +  Linaro OP-TEE firmware needs a reserved memory for the
> +  Secure Data Path feature (aka SDP).
> +  The purpose is to provide a secure memory heap which allow
> +  non-secure OS to allocate/free secure buffers.
> +  The TEE is reponsible for protecting the SDP memory buffers.
> +  TEE Trusted Application can access secure memory references
> +  provided as parameters (DMABUF file descriptor).
> +
> +allOf:
> +  - $ref: "reserved-memory.yaml"
> +
> +properties:
> +  compatible:
> +    const: linaro,secure-heap
> +
> +  reg:
> +    description:
> +      Region of memory reserved for OP-TEE SDP feature
> +
> +  no-map:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Avoid creating a virtual mapping of the region as part of the OS'
> +      standard mapping of system memory.
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - no-map
> +
> +examples:
> +  - |
> +  reserved-memory {
> +    #address-cells = <2>;
> +    #size-cells = <2>;
> +
> +    sdp@3e800000 {
> +      compatible = "linaro,secure-heap";
> +      no-map;
> +      reg = <0 0x3E800000 0 0x00400000>;
> +    };
> +  };
> -- 
> 2.25.0
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
