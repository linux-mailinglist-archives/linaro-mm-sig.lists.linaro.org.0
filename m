Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F54157B7D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 15:47:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD0AD4798A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 13:47:35 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80057.outbound.protection.outlook.com [40.107.8.57])
	by lists.linaro.org (Postfix) with ESMTPS id C3F453EBFA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 14:47:06 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=dGKQwBBX3JVLheREUf4jSsd1GKz9lX1cSY+jBKG12q5gzbC+sdox+V+yqPHcHdGa2SgO6G/wIyfov4eSRiR7qJeiu9tFkwG/ZnSVVJv0txg1ZVZ1CzBzAQVTnsmJLz+0YMBDJYKgtT53XqNhU2EgbOOi9GdoHmQ//oNjxMsR/UlZlqHBkFZxCWz6YeCLVZKb0ZGFMhVGGTyf36b6ApOLAjLdj6Mxx3MQ/VJYKLLSGkm95rli+VeXguCAD0k57LKb4a/dkJeArj5BRsLkOMpl/HZbKDFykPd7ETh8Ow3Hzrw2D/rMDJn5+Q/a29p8rnHES0ia/b2FfGwrVzrla5xFbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nCNuTTwxH7u6QhRhAgEPpQd5RBZOzHHHVqxF+negakM=;
 b=PRA0S5nSK5ZEfzdSl47Q3CDqZ1saqbBSeufbHrDANpbarb96l63dTvW6R2VFEsuaf0ChUuVwiWV3mVK+yOnmbJlVEDf+soroSNNqNHDod1eQ+a8mon1+ZB7cC0xUvxuHHwmCSfuz73l0r89l3WWqoUW9b3GeXuf1ve19+CNZwtvmsfSWhQdMnBtXfg7jAC6FLXrvlC5uTYBeFNDhchja9HFWj+3E6ZZA/pbB1aYFcMsHU4L7bEhb7C6/jKmbBJsuDf8YXRSUmCYiQXezaLlXEwaieWd4Wmo2fOSNQlzJcxLVDWIu9WwzfjMhWEikPyc/LphTLPJkySM+PKpJECejow==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nCNuTTwxH7u6QhRhAgEPpQd5RBZOzHHHVqxF+negakM=;
 b=xYewEEiHe2E6YwXugFNNcwHHWTt52J7WaEPXGAhThpArUsmNfFFfbhJkT4FKsgpnUKFWZRRgYV43sxSdTLNmOhgyYBUqOIwE+afxDaY/8BJRl28j8tjIY2Mj1SA8YFFL37lDvRhiCUrvtqmK2HMgd14aQ+gkCcX9liDdz2Vx8QE=
Received: from AS9P251CA0023.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:50f::19)
 by VE1PR08MB5776.eurprd08.prod.outlook.com (2603:10a6:800:1ac::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Wed, 29 Jun
 2022 14:46:45 +0000
Received: from AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:50f:cafe::4a) by AS9P251CA0023.outlook.office365.com
 (2603:10a6:20b:50f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14 via Frontend
 Transport; Wed, 29 Jun 2022 14:46:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT031.mail.protection.outlook.com (10.152.16.111) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15 via Frontend Transport; Wed, 29 Jun 2022 14:46:44 +0000
Received: ("Tessian outbound 9336577968ca:v121"); Wed, 29 Jun 2022 14:46:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 54b399280bc09e21
X-CR-MTA-TID: 64aa7808
Received: from 7b42733dac57.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id BB638F8F-FE66-4A8C-90AE-B171B8B02429.1;
	Wed, 29 Jun 2022 14:46:33 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7b42733dac57.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 29 Jun 2022 14:46:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ReodyvBD2fjlP1lMYHt84wyUzficGq/wKvMfEMXInZXdfM7ki21+tum+akQUHCstONSV4eAGVuH8IfoWiLg08SRECtUwrq5wKgVw+dNtbzqUAOPo+Tw8bdsXRhoxpBi+j6R3F0r/qpfXYSlNuCSI0lTG9kn7Itf57IvldHFVkmXE1Jb6YPmsBJrQBg6R4Mu+7rYMVeUtgk/LS1gLsSqg5zw1H1C0p1rrMhYuWwNGrJlVBM1DPWVg5STnaUEaaCAgy6s/8h9dhVPTOohA/GNF+ET64G4Q5gtyhNelXoZC9Q8zcx45VLX8W2ZngEaVxBQuA0VOz8GFWOeQYk8fsaLK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nCNuTTwxH7u6QhRhAgEPpQd5RBZOzHHHVqxF+negakM=;
 b=oJZzii4Yel1CdWvXRnYfokD5WIwjh/SaEp0q3V0+wXIkzfZHmQ0OaLJLAG5QJYN04k/DNRX21KUFyQYY6xXK+FGyZRwO02WmjHfeSVnJJNFWZ4lLMot/Mst/lRyb0Ko2+lZAYvPlim3B6e1a5vfOK3EVpHFz+Teh2VyQ585YlP+kypvXObgjgejdqaUbM/HjqhnVE5/6vfZq61vA4asOqc8LgD/SEkGf22qXGxl0FBIteaBFIK3WaLVTWjdJ+qgK9bJDqpekiejvifu85/Uxezz0l8PKj1v5MLhUB5I7WZNIchz5z80wNHNoPBHhI27xC7L6FkltTDRhwLw9Kw3m3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nCNuTTwxH7u6QhRhAgEPpQd5RBZOzHHHVqxF+negakM=;
 b=xYewEEiHe2E6YwXugFNNcwHHWTt52J7WaEPXGAhThpArUsmNfFFfbhJkT4FKsgpnUKFWZRRgYV43sxSdTLNmOhgyYBUqOIwE+afxDaY/8BJRl28j8tjIY2Mj1SA8YFFL37lDvRhiCUrvtqmK2HMgd14aQ+gkCcX9liDdz2Vx8QE=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AS8PR08MB8111.eurprd08.prod.outlook.com (2603:10a6:20b:54d::22)
 by VI1PR08MB3711.eurprd08.prod.outlook.com (2603:10a6:803:bc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Wed, 29 Jun
 2022 14:46:22 +0000
Received: from AS8PR08MB8111.eurprd08.prod.outlook.com
 ([fe80::8bc:5425:ded2:3a38]) by AS8PR08MB8111.eurprd08.prod.outlook.com
 ([fe80::8bc:5425:ded2:3a38%4]) with mapi id 15.20.5395.014; Wed, 29 Jun 2022
 14:46:22 +0000
Message-ID: <05513f59-0bd9-77cd-36d4-41027bc339be@arm.com>
Date: Wed, 29 Jun 2022 15:46:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com>
 <20220627175026.6a5dd239@eldfell>
From: Dennis Tsiang <dennis.tsiang@arm.com>
In-Reply-To: <20220627175026.6a5dd239@eldfell>
X-ClientProxiedBy: LO4P123CA0386.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::13) To AS8PR08MB8111.eurprd08.prod.outlook.com
 (2603:10a6:20b:54d::22)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 392db90d-04f8-4c35-151b-08da59de2fff
X-MS-TrafficTypeDiagnostic: 
	VI1PR08MB3711:EE_|AM5EUR03FT031:EE_|VE1PR08MB5776:EE_
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 URFyHkDK2yR3bwJnRbZuhgkTUz6ULDYDfBbPvp7HVBP37lndakl3NDIKZZv2gjt2Fx8Wu7XnTtUdEUHAabsgEXLKRDQmzQ/pEwKSSIso1Xh421bgv8fN+D/+tF+AMs+r8DQyT5vxPH9KKP5IqoLejRJLsoXDayG5t7LL6zgkrQnSKSF4NpsflvoPVoBn8wdAgO0CnMG4274nw9O8FO7bhVw9uEqPtsv4m6rGCgwOSZ+5bXQQeU+cas31tqBhQg/LYVfhO6llwYLbOy5i1fSSQlGY3O85GmAYvqBzXJBvETRtnNpsnsv2uQJ1UJyFnf7JKKeDjpeQoFMxKJUYxOfLxO/eN6VfZ+rstH6aPOhSNpQdYH5Zzwdq30Nk40ie4EuDTdhnkOgjbWGs3xGsFv1rhd17KUGcA3ktuChT5WTkI9DVBFSPIYHvuzS76mSpujXWtOSrYP2ZlTNpZ7E9beRcls3AiQegWABpG+PbnvDBoEGkTc0ntSTrRlKGechce09BJApWSW10BdYti7doA0NK6Pgfpb+GOXGVUTS/LdgasDTb/f4q2K+yFlOgHUcPtpKNLby0ZZ3DJpuSeWMLrF4a2YRVUr9jgDWfBe4P/qQmks0RhcKBMDZWw+rUnmv4WRuOqQ3W+ZeDtWmfjBlx3M13JYuPWmx1k2Q9i85Eo4VeZ3tGPfOnesrMSq3cRN1wLUc3nztHSTxzi+YgP5HWxbFKYAVnKNUHGGbS8MFdbWK6igPV6TdzEHuzQUzXesZul6ElSFuKFO7sQU/K5urZqABLW/DJBfccgizX7PBvr2HIZwc+YttCNpUTrIQuWf4EiV1plB9cK8n2HvOtMEgHeVJokw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB8111.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(8676002)(316002)(41300700001)(31696002)(478600001)(66556008)(2616005)(86362001)(36756003)(6916009)(6486002)(2906002)(6506007)(53546011)(66476007)(44832011)(31686004)(7416002)(83380400001)(54906003)(6512007)(5660300002)(4326008)(26005)(38100700002)(186003)(66946007)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3711
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	72356d92-de01-4898-937e-08da59de225b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XIDCC5ZUqxhaJFgXAEj8CEjNLw6tcSIXiovXW/VKyJtKGlim6UpXIt7H9Y8dSf5snoiy7j1Z7INO6flvbELFWSNQeG2PeYmEOmcOpL/r4ccyh6OpW2ibHR6uJY7NifRT9pE0fRRjHpQDf1t+umi81M2bcMo+DKlHoKGY995LF7Odm6GeU2Inp+5t76dmy0gR1PCTg2SNcf2Rib1Pcgwc5j/7MGFIMO1PM1wjuPQQqDc0CrN8m1fKUQ11JpEiLW9G6wArfQgbLrZ/xkVSN2VTPJVk/r+QVWkgKwPBNbR9pYgMar5YGTKb44+bZdqAS1Xs8dLRi573ObpQYFb3PuHYbQQI2AfkMbSTqT36H2sSx9WtyalQBNQWXzHy6y8jC+MYOUhKZ/piUwcZtDX18VeiFlTxZA7/0tZkusNfAWxoLB2S84uP7VHCEjivjtEXMfZEWo5u8jBGIHIhdu0E1xd+G1jMPaWL1u89MAl/HnSh1cQFS7edcuUh5CTp2ekZK6MH/ytsxvxuqd5FqmDL738bH6R4vtt8I2nszCyXjgMzy4X3UtXBAasdc4f/OviP/LoroLfd7cWticB4cuxo3gKWcCY1rRtWbtsxkpqPG6ELrgHL3z40D2qEAQkewW6W2TBT8PqNxT/0mJrj9DgQ4p8mWFEsRhvp1/k8TwLrcncNZe5sHt46HEmBRL9g77EvV9wJIdE9SYn4Zz9w3n3ATuHERtR+NUzWLVfSYK5VJMQQNpPqwFFYtQOolqXrXWplWU+mVBJQltbsC7LKd3nDfO421xXL05E0WqW0Ru+8nY53OOPYGfRaQNkkNGbkiNDWT4xDb17h7T/41pMRH6sd0zCxXg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(396003)(136003)(376002)(46966006)(40470700004)(36840700001)(86362001)(47076005)(31696002)(356005)(186003)(4326008)(82740400003)(83380400001)(2906002)(36860700001)(336012)(40480700001)(36756003)(8936002)(6486002)(54906003)(40460700003)(31686004)(316002)(8676002)(6862004)(82310400005)(478600001)(53546011)(26005)(41300700001)(44832011)(6506007)(70206006)(2616005)(5660300002)(6512007)(81166007)(70586007)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 14:46:44.8423
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 392db90d-04f8-4c35-151b-08da59de2fff
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5776
X-MailFrom: Dennis.Tsiang@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TCM2RZJ5WVA3W33J4MZ6CER72GJAG6CZ
X-Message-ID-Hash: TCM2RZJ5WVA3W33J4MZ6CER72GJAG6CZ
X-Mailman-Approved-At: Wed, 20 Jul 2022 13:47:33 +0000
CC: christian.koenig@amd.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Liviu Dudau <Liviu.Dudau@arm.com>, Brian Starkey <Brian.Starkey@arm.com>, Lisa Wu <lisa.wu@arm.com>, Normunds Rieksts <Normunds.Rieksts@arm.com>, nd <nd@arm.com>, daniel@ffwll.ch, sumit.semwal@linaro.org, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, mripard@kernel.org, tzimmermann@suse.de, airlied@linux.ie, maarten.lankhorst@linux.intel.com, david.harvey-macaulay@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] [RFC] drm/fourcc: Add new unsigned R16_UINT/RG1616_UINT formats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCM2RZJ5WVA3W33J4MZ6CER72GJAG6CZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDYvMjAyMiAxNTo1MCwgUGVra2EgUGFhbGFuZW4gd3JvdGU6DQo+IE9uIE1vbiwgMjcg
SnVuIDIwMjIgMTM6NDA6MDQgKzAwMDANCj4gRGVubmlzIFRzaWFuZyA8RGVubmlzLlRzaWFuZ0Bh
cm0uY29tPiB3cm90ZToNCj4NCj4+IFRoaXMgcGF0Y2ggaXMgYW4gZWFybHkgUkZDIHRvIGRpc2N1
c3MgdGhlIHZpYWJsZSBvcHRpb25zIGFuZA0KPj4gYWx0ZXJuYXRpdmVzIGZvciBpbmNsdXNpb24g
b2YgdW5zaWduZWQgaW50ZWdlciBmb3JtYXRzIGZvciB0aGUgRFJNIEFQSS4NCj4+DQo+PiBUaGlz
IHBhdGNoIGFkZHMgYSBuZXcgc2luZ2xlIGNvbXBvbmVudCAxNi1iaXQgYW5kIGEgdHdvIGNvbXBv
bmVudCAzMi1iaXQNCj4+IERSTSBmb3VyY2PigJlzIHRoYXQgcmVwcmVzZW50IHVuc2lnbmVkIGlu
dGVnZXIgZm9ybWF0cy4gVGhlIHVzZSBjYXNlIGZvcg0KPj4gbmVlZGluZyBVSU5UIGZvcm1hdHMs
IGluIG91ciBjYXNlLCB3b3VsZCBiZSB0byBzdXBwb3J0IHVzaW5nIHJhdyBidWZmZXJzDQo+PiBm
b3IgY2FtZXJhIElTUHMuDQo+Pg0KPj4gRm9yIGltYWdlcyBpbXBvcnRlZCB3aXRoIERSTSBmb3Vy
Y2MgKyBtb2RpZmllciBjb21iaW5hdGlvbiwgdGhlIEdQVQ0KPj4gZHJpdmVyIG5lZWRzIGEgd2F5
IHRvIGRldGVybWluZSB0aGUgZGF0YXR5cGUgb2YgdGhlIGZvcm1hdCB3aGljaA0KPj4gY3VycmVu
dGx5IHRoZSBEUk0gQVBJIGRvZXMgbm90IHByb3ZpZGUgZXhwbGljaXRseSB3aXRoIGEgbm90YWJs
ZQ0KPj4gZXhjZXB0aW9uIG9mIHRoZSBmbG9hdGluZy1wb2ludCBmb3VyY2NzIHN1Y2ggYXMgRFJN
X0ZPUk1BVF9YUkdCMTYxNjE2MTZGDQo+PiBhcyBhbiBleGFtcGxlLiBBcyB0aGUgRFJNIGZvdXJj
Y3MgZG8gbm90IGN1cnJlbnRseSBkZWZpbmUgdGhlDQo+PiBpbnRlcnByZXRhdGlvbiBvZiB0aGUg
ZGF0YSwgc2hvdWxkIHRoZSBpbmZvcm1hdGlvbiBiZSBtYWRlIGV4cGxpY2l0IGluDQo+PiB0aGUg
RFJNIEFQSSBzaW1pbGFybHkgdG8gaG93IGl0IGlzIGFscmVhZHkgZG9uZSBpbiBWdWxrYW4/DQo+
Pg0KPj4gVGhlIHJlYXNvbiBmb3IgaW50cm9kdWNpbmcgZGF0YXR5cGUgdG8gdGhlIERSTSBmb3Vy
Y2MncyBpcyB0aGF0IHRoZQ0KPj4gYWx0ZXJuYXRpdmUsIGZvciBhbnkgQVBJIChlLmcuLCBFR0wp
IHRoYXQgbGFja3MgdGhlIGZvcm1hdCBkYXRhdHlwZQ0KPj4gaW5mb3JtYXRpb24gZm9yIGZvdXJj
Yy9tb2RpZmllciBjb21iaW5hdGlvbiBmb3IgZG1hX2J1ZiBpbnRlcm9wIHdvdWxkIGJlDQo+PiB0
byBpbnRyb2R1Y2UgZXhwbGljaXQgYWRkaXRpb25hbCBtZXRhZGF0YS9hdHRyaWJ1dGVzIHRoYXQg
ZW5jb2RlIHRoaXMNCj4+IGluZm9ybWF0aW9uIHdoaWNoIHRoZW4gd291bGQgYmUgcGFzc2VkIHRv
IHRoZSBHUFUgZHJpdmVyIGJ1dCB0aGUNCj4+IGRyYXdiYWNrIG9mIHRoaXMgaXMgdGhhdCBpdCB3
b3VsZCByZXF1aXJlIGV4dGVuZGluZyBtdWx0aXBsZSBncmFwaGljcw0KPj4gQVBJcyB0byBzdXBw
b3J0IGV2ZXJ5IHNpbmdsZSBwbGF0Zm9ybS4NCj4+DQo+PiBCeSBoYXZpbmcgdGhlIERSTSBBUEkg
ZXhwb3NlIHRoZSBkYXRhdHlwZSBpbmZvcm1hdGlvbiBmb3IgZm9ybWF0cyBzYXZlcw0KPj4gYSBs
b3Qgb2YgaW50ZWdyYXRpb24vdmVyaWZpY2F0aW9uIHdvcmsgZm9yIGFsbCBvZiB0aGUgZGlmZmVy
ZW50IGdyYXBoaWNzDQo+PiBBUElzIGFuZCBwbGF0Zm9ybXMgYXMgdGhpcyBpbmZvcm1hdGlvbiBj
b3VsZCBiZSBkZXRlcm1pbmVkIGJ5IHRoZSBEUk0NCj4+IHRyaXBsZSBhbG9uZSBmb3IgZG1hX2J1
ZiBpbnRlcm9wLg0KPj4NCj4+IEl0IHdvdWxkIGJlIGdvb2QgdG8gZ2F0aGVyIHNvbWUgb3Bpbmlv
bnMgb24gd2hhdCBvdGhlcnMgdGhpbmsgYWJvdXQNCj4+IGludHJvZHVjaW5nIGRhdGF0eXBlcyB0
byB0aGUgRFJNIEFQSS4NCj4NCj4gSGksDQo+DQo+IEkgZGlkbid0IHF1aXRlIGdyYXNwIHdoZXJl
IHRoaXMgaW5mb3JtYXRpb24gaXMgbmVjZXNzYXJ5LCBhbmQgd2hlbiBpdA0KPiBpcyBuZWNlc3Nh
cnksIGlzIGl0IHRoYXQgc2ltcGxlIHRvIGNvbW11bmljYXRlPyBEb2VzIGl0IGV2ZW4gYmVsb25n
DQo+IHdpdGggdGhlIHBpeGVsIGZvcm1hdCBhdCBhbGw/DQo+DQo+IExldCB1cyBjb25zaWRlciB0
aGUgZXhpc3RpbmcgcHJvYmxlbXMuDQo+DQo+IEFsbCB0cmFkaXRpb25hbCBpbnRlZ2VyIGZvcm1h
dHMgaW4gZHJtX2ZvdXJjYy5oIHJpZ2h0IG5vdyBhcmUgdW5zaWduZWQuDQo+IFRoZXkgZ2V0IGlu
dGVycHJldGVkIGFzIGJlaW5nIGluIHRoZSByYW5nZSBbMC4wLCAxLjBdIGZvciBjb2xvcg0KPiBv
cGVyYXRpb25zLCB3aGljaCBtZWFucyBjb252ZXJ0aW5nIHRvIGFub3RoZXIgYml0IGRlcHRoIHdv
cmtzDQo+IGltcGxpY2l0bHkuIFRoYXQncyB3aGVyZSB0aGUgc2ltcGxpY2l0eSBlbmRzLiBXZSBh
c3N1bWUgdG8gaGF2ZSBmdWxsDQo+IHF1YW50aXphdGlvbiByYW5nZSB1bmxlc3Mgb3RoZXJ3aXNl
IG5vdGVkIGluIHNvbWUgYXV4aWxpYXJ5IGRhdGEsIGxpa2UNCj4gS01TIHByb3BlcnRpZXMgKEkg
Zm9yZ2V0IGlmIHRoZXJlIGV2ZW4gd2FzIGEgcHJvcGVydHkgdG8gc2F5IERSTQ0KPiBmcmFtZWJ1
ZmZlciB1c2VzIGxpbWl0ZWQgcXVhbnRpemF0aW9uIHJhbmdlKS4gV2UgYXNzdW1lIGFsbCBwaXhl
bCBkYXRhDQo+IGlzIG5vbi1saW5lYXJseSBlbmNvZGVkLiBUaGVyZSBpcyBubyBjb2xvciBzcGFj
ZSBpbmZvcm1hdGlvbi4gWVVWLVJHQg0KPiBjb252ZXJzaW9uIG1hdHJpeCBjb2VmZmljaWVudHMg
YXJlIGhhbmRsZWQgYnkgYSBLTVMgcHJvcGVydHkgSUlSQy4NCj4NCj4gQ29taW5nIGJhY2sgdG8g
dGhlIG5vbWluYWwgcmFuZ2UgWzAuMCwgMS4wXS4gVGhhdCdzIGFuIGltcGxpY2l0DQo+IGFzc3Vt
cHRpb24gdGhhdCBhbGxvd3MgdXMgdG8gYXBwbHkgdGhpbmdzIGxpa2UgTFVUcy4gSXQgYWxyZWFk
eQ0KPiBicmVha3MgZG93biBpZiB5b3UgY2hvb3NlIGEgZmxvYXRpbmctcG9pbnQgZm9ybWF0IGlu
c3RlYWQgb2YgdW5zaWduZWQNCj4gaW50ZWdlciBmb3JtYXQuIElzIEZQIHBpeGVsIHZhbHVlIDEu
MCB0aGUgc2FtZSBhcyBub21pbmFsIDEuMD8gT3IgaXMNCj4gdGhlIEZQIHBpeGVsIHZhbHVlIDI1
NS4wIHRoZSBzYW1lIGFzIG5vbWluYWwgMS4wPyBLTVMgaGFzIG5vIHdheSB0bw0KPiBrbm93IG9y
IGNvbnRyb2wgdGhhdCBBRkFJSy4NCj4NCj4gSWYgeW91IGhhZCBVSU5UIGZvcm1hdCwgbWVhbmlu
ZyB0aGUgbm9taW5hbCB2YWx1ZSByYW5nZSBpcyBbMC4wLCA2NTUzNS4wXQ0KPiAoZS5nLiBmb3Ig
MTYgYnBjKSBpbnN0ZWFkIG9mIFswLjAsIDEuMF0sIHRoZW4gaG93IGRvZXMgdGhhdCB3b3JrIHdp
dGggYQ0KPiBMVVQgZWxlbWVudCBpbiB0aGUgY29sb3IgcGlwZWxpbmU/IEhvdyB3b3VsZCBpdCBi
ZSBib3RoIG1lYW5pbmdmdWwgYW5kDQo+IGRpZmZlcmVudCB0byBleGlzdGluZyAxNiBicGMgaW50
ZWdlciBmb3JtYXQ/DQo+DQo+IFdoYXQncyB0aGUgYWN0dWFsIGRpZmZlcmVuY2UgYmV0d2VlbiBS
MTYgYW5kIFIxNl9VSU5ULCB3aGF0IGRpZmZlcmVuY2UNCj4gZG9lcyBpdCBtYWtlIHRvIGEgR1BV
IGRyaXZlcj8NCj4NCj4gTWF5YmUgdGhhdCBpcyBpbnRpbWF0ZWx5IGRlcGVuZGVudCBvbiB0aGUg
QVBJIHdoZXJlIHRoZSBwaXhlbCBmb3JtYXRzDQo+IGFyZSB1c2VkPw0KPg0KPiBNYXliZSBmb3Ig
S01TIFIxNiBhbmQgUjE2X1VJTlQgd291bGQgYmUgY29tcGxldGVseSBlcXVpdmFsZW50LCBidXQg
bm90DQo+IGZvciBzb21lIG90aGVyIEFQST8NCj4NCj4gV2UgYWxzbyBuZWVkIHRvIGJlIHZlcnkg
Y2FyZWZ1bCB0byBub3QgbG9hZCBwaXhlbCBmb3JtYXQgd2l0aCBtZWFuaW5nDQo+IHRoYXQgZG9l
cyBub3QgYmVsb25nIHRoZXJlLiBOb24tbGluZWFyIGVuY29kaW5nICh0cmFuc2ZlciBmdW5jdGlv
bikgaXMNCj4gb2J2aW91c2x5IHNvbWV0aGluZyB0aGF0IGlzIGNvbXBsZXRlbHkgdW5yZWxhdGVk
IHRvIHRoZSBwaXhlbCBmb3JtYXQsDQo+IGFzIGxvbmcgYXMgdGhlIHBpeGVsIGZvcm1hdCBkZWZp
bmVzIGEgY29udmVyc2lvbiB0byBub21pbmFsIHZhbHVlDQo+IHJhbmdlLiBDb2xvciBzcGFjZSAo
cHJpbWFyaWVzIGFuZCB3aGl0ZSBwb2ludCkgYXJlIGFub3RoZXIgdGhpbmcgdGhhdA0KPiBoYXMg
bm90aGluZyB0byBkbyB3aXRoIHBpeGVsIGZvcm1hdCwgYW5kIHNvIG11c3Qgbm90IGJlIGluIGFu
eSB3YXkNCj4gaW1wbGllZCBieSBwaXhlbCBmb3JtYXQuDQo+DQo+IFNob3VsZCBhIHBpeGVsIGZv
cm1hdCBkZWZpbmUgaG93IHRoZSByYXcgcGl4ZWwgdmFsdWVzIGFyZSBjb252ZXJ0ZWQgdG8NCj4g
bm9taW5hbCB2YWx1ZXM/DQo+DQo+IE5vLCBiZWNhdXNlIHdlIGhhdmUgcXVhbnRpemF0aW9uIHJh
bmdlIGFzIGEgc2VwYXJhdGUgcHJvcGVydHksDQo+IGN1cnJlbnRseSB3aXRoICJmdWxsIiBhbmQg
ImxpbWl0ZWQiIHVuZGVyc3Rvb2QsIHdoZXJlICJsaW1pdGVkIiBtZWFucw0KPiBkaWZmZXJlbnQg
dGhpbmdzIGRlcGVuZGluZyBvbiB0aGUgY29sb3IgbW9kZWwuDQo+DQo+IENvbG9yIG1vZGVsIGlz
IGRlZmluZWQgYnkgdGhlIHBpeGVsIGZvcm1hdHM6IHdlIGhhdmUgUkdCIGFuZCBZVVYNCj4gZm9y
bWF0cywgbGlrZXdpc2UgaXMgY2hyb21hIHN1Yi1zYW1wbGluZy4NCj4NCj4gSG1tLg0KPg0KPg0K
PiBUaGFua3MsDQo+IHBxDQoNCkhpIFBla2thLA0KDQpUaGFua3MgZm9yIHlvdXIgY29tbWVudHMu
IFRoaXMgaXMgbm90IGludGVuZGVkIHRvIGJlIHVzZWQgZm9yIEtNUywgd2hlcmUNCmluZGVlZCB0
aGVyZSB3b3VsZCBiZSBubyBkaWZmZXJlbmNlLiBUaGlzIHByb3Bvc2FsIGlzIGZvciBvdGhlciBH
cmFwaGljcw0KQVBJcyBzdWNoIGFzIFZ1bGthbiwgd2hpY2ggcmVxdWlyZXMgdGhlIGFwcGxpY2F0
aW9uIHRvIGJlIGV4cGxpY2l0DQp1cGZyb250IGFib3V0IGhvdyB0aGV5IHdpbGwgaW50ZXJwcmV0
IHRoZSBkYXRhLCB3aGV0aGVyIHRoYXQgYmUgVU5PUk0sDQpVSU5UIC5ldGMuIFdlIHdhbnQgdG8g
YmUgYWJsZSB0byBpbXBvcnQgZG1hX2J1ZnMgd2hpY2ggY3JlYXRlIGEgVmtJbWFnZQ0Kd2l0aCBh
ICJfVUlOVCIgVmtGb3JtYXQuIEhvd2V2ZXIgdGhlcmUgaXMgY3VycmVudGx5IG5vIGV4cGxpY2l0
IG1hcHBpbmcNCmJldHdlZW4gdGhlIERSTSBmb3VyY2NzICsgbW9kaWZpZXJzIGNvbWJvcyB0byAi
X1VJTlQiIFZrRm9ybWF0cy4gT25lDQpzb2x1dGlvbiBpcyB0byBlbmNvZGUgdGhhdCBpbnRvIHRo
ZSBmb3VyY2NzLCB3aGljaCBpcyB3aGF0IHRoaXMgUkZDIGlzDQpwcm9wb3NpbmcuDQoNClRoYW5r
cywNCkRlbm5pcw0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwg
YW5kIGFueSBhdHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBiZSBwcml2
aWxlZ2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90
aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVu
dHMgdG8gYW55IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwgb3Igc3RvcmUg
b3IgY29weSB0aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91Lg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
