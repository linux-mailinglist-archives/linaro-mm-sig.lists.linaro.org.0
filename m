Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D258E7E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:36:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AAB347963
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:36:50 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80053.outbound.protection.outlook.com [40.107.8.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3A1E13EBED
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 10:21:03 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=XoJWds19f/Tq0QxvjeEg63J3m/+bZov5NDDYCfsmeG+BUfFlU5dDvoJi9ox3XEUhBo97xpy2tUen5poXO2Ejk3MwcprLT4No8oZI4V/+NKXZXKhs3Cs2gYaoApaN+A0A5MYGUqnz2S5c4KPH7ZsDY2EuSmBPd6zvBs3ScNRfDuzaFzim1/+Sq6YODaHD+TXUgbHwRF3mfmYXTQzTDz6dWg0EUOUSibshcZKd01/7uJVNsB6/99NpQHpXuxgmGn+kYsqN+qibp5NLEddxa2or7Xf+H6L7nATXz30G1wKSAPBN6DJeLu7LARTpR8kSKDDGj3mvntE6Z3DQoXx6IbO3RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDFHUzg14dB647fDKDIvt6NAJ1ASW5xn0P4HlzbE4Tg=;
 b=VDVIf0XEwWEWlHE44wxdYhX5NYYNVSsVEOPKmJMkY8aXNgRm01O72Z2MQbBs9lHAM8CWLSJRbRbGcTi3jaiUaRtbuYab6yIygsKWzKyl/oI02sb3TryLXvEsWdLJZlpOHyn7mc8Bdr1okUvznHm2KgkAznshLW3EhruslXMMM9b9JS9ZHIZVhKDxIBDmhcjDvo7CrdwmhXr++LZc7+M/A7MMo9k3Nb34sn9r/ZV0BJBLaIw7suRlGdfb9XmMdV5qw+kDLL+5BruinC/0z4NKkOZWLvlpfZKGelGhFJ6b/dhWOUisqwXqMt5HV/SAWwrb0TLQjYVUpNjrBzZP2R4rPA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDFHUzg14dB647fDKDIvt6NAJ1ASW5xn0P4HlzbE4Tg=;
 b=BXZnV0MaytjPrKEF0wd1OAzFKJEeJ45zJPgOzL3iIcOoJ/h0UVN2+TFicePY+Ctd88ArnnhfLVY315ZGYtZLhT5oF6Ui1s/Ffa1ov+2+rqpCYCbEovrHUBcGwXA6vyDWr9cZcyA/fB/qWPYMrQXVZ9c6Xe5kGNEqz0X5heFsYn4=
Received: from AS8P189CA0030.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:31f::35)
 by AM6PR08MB3574.eurprd08.prod.outlook.com (2603:10a6:20b:4e::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 15 Jul
 2022 10:21:00 +0000
Received: from AM5EUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:31f:cafe::37) by AS8P189CA0030.outlook.office365.com
 (2603:10a6:20b:31f::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12 via Frontend
 Transport; Fri, 15 Jul 2022 10:21:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT061.mail.protection.outlook.com (10.152.16.247) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.12 via Frontend Transport; Fri, 15 Jul 2022 10:21:00 +0000
Received: ("Tessian outbound cc6a8ab50b6b:v123"); Fri, 15 Jul 2022 10:21:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5f14568ab85f9ba8
X-CR-MTA-TID: 64aa7808
Received: from 8c6cbe42f280.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3A9011D8-FAC4-4CB8-9F3B-E8B1D348B968.1;
	Fri, 15 Jul 2022 10:20:54 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8c6cbe42f280.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 15 Jul 2022 10:20:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+CsUhfJool+aZRQyx3EWpGSyB2ATYlqdaQlzVbLb/GN8+DdQuhSsA1heZoNVT3o1m9mhZNyrkQfPFfIEBM9yWO1GDwcn5Kfg6bPBCNyd44P4QCl/sF9lLupJyInwIRQzYMmlYf42lT45vQ196Ghm2lm13tV6s6J2v1klMq1Q1LRR7wnMVeoULTUd7YtHi3QkmsR4M3zq+HpznMSo14FumNh75BClr1GxEnkAal46kvp2mWIu26LRzm1Mf+A59oEtubFI18++cUpMOQz7//1ed5F4VbuiqobTr5yQm4hRKcb7xYoE7008TI6OpLThz8JuBcLfK9RY3gqWu1pNq4r9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDFHUzg14dB647fDKDIvt6NAJ1ASW5xn0P4HlzbE4Tg=;
 b=NF9kgYYiSIvWOjtooDtTemq8A2VZxSldEtAvhgbydi/IvmHCN31dqiHhY3wnT1pS2IyC//nksYpULY/DM3zNYDFRKJvdAbalYTk88ILzdAnY67Jrjew5cHjlVM3KlLtqHMz9xt9BUcXDBIUSXESBiOnMtu5/+dNsNT65Vu9XzE5ltkmTJL5tDmtQYlxnfzwlBZvtnNE/sa0YWISQ0T1wvxQNjd0yGYfrR+QCYfLjj056cQWK3PMLiUVgPcr1rKDKbwOqkbEqmphPLdSTvL9d40pbNMQpv4SHft6BjmQ3hpq0Yxzr5IGX243vCzg59qgvmbSvqf5Y8Zh72WOjUT1byA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDFHUzg14dB647fDKDIvt6NAJ1ASW5xn0P4HlzbE4Tg=;
 b=BXZnV0MaytjPrKEF0wd1OAzFKJEeJ45zJPgOzL3iIcOoJ/h0UVN2+TFicePY+Ctd88ArnnhfLVY315ZGYtZLhT5oF6Ui1s/Ffa1ov+2+rqpCYCbEovrHUBcGwXA6vyDWr9cZcyA/fB/qWPYMrQXVZ9c6Xe5kGNEqz0X5heFsYn4=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AS8PR08MB8111.eurprd08.prod.outlook.com (2603:10a6:20b:54d::22)
 by AM5PR0801MB1876.eurprd08.prod.outlook.com (2603:10a6:203:42::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Fri, 15 Jul
 2022 10:20:51 +0000
Received: from AS8PR08MB8111.eurprd08.prod.outlook.com
 ([fe80::29cb:67e5:c030:38a6]) by AS8PR08MB8111.eurprd08.prod.outlook.com
 ([fe80::29cb:67e5:c030:38a6%4]) with mapi id 15.20.5417.026; Fri, 15 Jul 2022
 10:20:51 +0000
Message-ID: <7e8856ac-40a1-6fec-042c-c2a01775beeb@arm.com>
Date: Fri, 15 Jul 2022 11:20:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com>
 <20220627175026.6a5dd239@eldfell>
 <05513f59-0bd9-77cd-36d4-41027bc339be@arm.com>
 <o1qcCo8e19pmmNe-YJbPkmu4SBrOQ_E3u7eqdrcXUzdBccLtFswL_ARTpbrX9C10tippuy5ieXAsqdf7H47JuT7Hqa1NlizAPqVuRM0kRt4=@emersion.fr>
 <20220630104725.602bff9a@eldfell>
From: Dennis Tsiang <dennis.tsiang@arm.com>
In-Reply-To: <20220630104725.602bff9a@eldfell>
X-ClientProxiedBy: LO4P265CA0080.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bd::10) To AS8PR08MB8111.eurprd08.prod.outlook.com
 (2603:10a6:20b:54d::22)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 2c8c34a2-ff84-4234-83e1-08da664bb704
X-MS-TrafficTypeDiagnostic: 
	AM5PR0801MB1876:EE_|AM5EUR03FT061:EE_|AM6PR08MB3574:EE_
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nCq+VuDDxefKa+/dz+xlk/VAVQulq+SGrTpxD1B2XLh9orcUzedpnCJixBe7G6NcM65o51akt9tJRvMzOzATDeBSS7IKa8JGjLeh0p/vGIFR10hqz+loNm++BnctUKuLyys/1qJlyGlEa7pIBnXLjg1AUlyhMKJuw6DYIkNfkOqHw1JQUvjkPgeepK0Z/8xYauVddyG4nhi8C4u2Ym/lo7oGN7Y0zqnIJNEhrpmZre8w0DxXjyoB8ggsdwHnPhF147XFCll2+hQiRd2iB+sDHtwsvXj8oFwR5BqPwNXcSdMevT7X1VmKjqoTYlCmUFPbmyI9aEUEy6L19KYx1R6+cEjZIelAEnE3xt8r7VrQ38ctphH1v6JFYTOStXJ95h5ZIuzmIsfWwP6iXvat08Gh09jzJa1cPNVdo8pRhDVyJl1ANtPHdGFIXfRBJaRpaDkkBulsNJT0r/8fzTUx3fkXY+/oHOWBv3/GAHAoV+xWNXXKVcFo8bQtoUcHQ09tr+dREDo162tWLvTTNQpNOn4m7UMlV4lb+jJD8vjMziBZv2kTXYnIdiuJSz7Mmg0unczzsr1zyAa9hm6B9CvYimSSxIuJZoJFR/1VgrJ3dVuxsS3/p1U9HE14aSR3D5aWgwmQAd4bPh2JobUGRMGzTUknMM1tXpSFYvvNY12e51yzedK7EeDHBAtUDXUt6s3DjyD5F/Q1VDcTfNPNoyve1QBFuQ314dmKPJOZJ/o3r+ql4GBQ6t8rdE1gIjjSCUPEcraj4qGBzC6ocXVWW/ZfQd8T+CI7VDCFOTsoai6hu7RS03fvf8afrDtbVqs7huQdVTkn7pUppvIv5sBI++LKNjCHCalvxQeo54qZ+wG1oIZfGIaI7WzGISVthuWNorCx9s8r
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB8111.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(7416002)(4326008)(8936002)(6506007)(44832011)(2906002)(5660300002)(8676002)(31696002)(86362001)(83380400001)(66476007)(38100700002)(6486002)(478600001)(36756003)(6916009)(316002)(66946007)(54906003)(26005)(66574015)(53546011)(41300700001)(66556008)(186003)(6666004)(31686004)(966005)(2616005)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1876
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d1e1b94a-891f-4110-3631-08da664bb13c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Vnzv+TxIv5JGH6g1dBnNqFxB8wNJfz0il5tu4RZQaQ20pwykYm8hCySAbFVU4nA9Fhj1Bo9NcsmzrXG3A+s2Y2sZSkNUj7PFVz4/ulIVNNpRSJ72yyIJUDehf/jseyA/C9EURcVIf+29JTwT1y6uw34nChmRf/ROqg2f6jcgvNVt1HTl3m08tE+zrpbsO+MjOR4W5SfJPcQO1yHgDeJOpNm5ut02zi3N6POqR8+qizd9t2JIv2PICyKSoussbbdVIXPJRFVwMifedW3Wkn4SMSWZZXmLk8flVmEZIMsSanW6oxfDRpWWQR6E6hVJyQ416om5zL6/RXnOb5vOHrPX+MQEzTeQgvXCKnnYdbql9C/vm4l0rA++2hgSAXjyLBcVU+7sIfg305aRMqXbclSDJcwx9yVBvFs3ILrIaeBcAxIwKGBgTDd5A4CGK/NRpeisRd3bBsnLICmEVBAwQzUl+LOs5Nt1G/0sYMC9yUR26OThjtt0GozGMWpERWajHFWobcWmidhxQjbhjC//irziXKeugC/OG47P/5MjrkR9Ex7Fnuk+2hitJu6gpzufD68BtO7IGxddWiZT/2HV43sRrkGiOj7qpWgm5QeGTp4HI2wxS6n5pjUp4a/igAe1jZYK6kMkd9RF0H2EdiEE9aHSZx1YtKZz0xh8XAFSdWy3uEovIQEKyJE+8C82N2Dkwtr/V4X1sI5wpzG52uZRea1GElF3szRFN2l6bX586GcWbmBZ/xQR3CIBBQ5xdo4aAjUDNq/yJvjOx1fL3P+K0WxQuMSAJ2S9TtB4MF7Ne2l5JLTSahS0z1vMnWHnRJQKlcPj4R+019faIxfsDP4xEHB6oisd0UySitLsJU47Q2qNhHCO5X3jCS+Rx98KR9BdPMoA
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(376002)(346002)(39860400002)(40470700004)(36840700001)(46966006)(316002)(40460700003)(54906003)(40480700001)(44832011)(478600001)(6486002)(966005)(31696002)(36860700001)(86362001)(81166007)(356005)(107886003)(82740400003)(2906002)(70586007)(8676002)(2616005)(66574015)(5660300002)(47076005)(336012)(186003)(70206006)(6512007)(26005)(8936002)(6862004)(41300700001)(82310400005)(53546011)(6666004)(36756003)(31686004)(4326008)(6506007)(83380400001)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 10:21:00.4672
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c8c34a2-ff84-4234-83e1-08da664bb704
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3574
X-MailFrom: Dennis.Tsiang@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R4MHFK7NOQI6PNDDIKNF3EW62UMUSDGB
X-Message-ID-Hash: R4MHFK7NOQI6PNDDIKNF3EW62UMUSDGB
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:36:47 +0000
CC: Simon Ser <contact@emersion.fr>, Normunds Rieksts <Normunds.Rieksts@arm.com>, airlied@linux.ie, tzimmermann@suse.de, Liviu Dudau <Liviu.Dudau@arm.com>, linux-kernel@vger.kernel.org, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, david.harvey-macaulay@arm.com, Lisa Wu <lisa.wu@arm.com>, nd <nd@arm.com>, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] [RFC] drm/fourcc: Add new unsigned R16_UINT/RG1616_UINT formats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4MHFK7NOQI6PNDDIKNF3EW62UMUSDGB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 30/06/2022 08:47, Pekka Paalanen wrote:
> On Wed, 29 Jun 2022 14:53:49 +0000
> Simon Ser <contact@emersion.fr> wrote:
>
>> On Wednesday, June 29th, 2022 at 16:46, Dennis Tsiang <dennis.tsiang@arm.com> wrote:
>>
>>> Thanks for your comments. This is not intended to be used for KMS, where
>>> indeed there would be no difference. This proposal is for other Graphics
>>> APIs such as Vulkan, which requires the application to be explicit
>>> upfront about how they will interpret the data, whether that be UNORM,
>>> UINT .etc. We want to be able to import dma_bufs which create a VkImage
>>> with a "_UINT" VkFormat. However there is currently no explicit mapping
>>> between the DRM fourccs + modifiers combos to "_UINT" VkFormats. One
>>> solution is to encode that into the fourccs, which is what this RFC is
>>> proposing.
>>
>> As a general comment, I don't think it's reasonable to encode all of the
>> VkFormat information inside DRM FourCC. For instance, VkFormat has SRGB/UNORM
>> variants which describe whether pixel values are electrical or optical
>> (IOW, EOTF-encoded or not). Moreover, other APIs may encode different
>> information in their format enums.
>
> Yeah, do not add any of that information to the DRM pixel format codes.
>
> There is *so much* other stuff you also need to define than what's
> already mentioned, and which bits you need for the API at hand depends
> totally on the API at hand. After the API has defined some parts of the
> metadata, the API user has to take care of the remaining parts of the
> metadata in other ways, like dynamic range or color space.
>
> Besides, when you deal with dmabuf, you already need to pass a lot of
> metadata explicitly, like the pixel format, width, height, stride,
> modifier, etc. so it's better to add more of those (like we will be
> doing in Wayland, and not specific to dmabuf even) than to try make
> pixel formats a huge mess through combinatorial explosion and sometimes
> partial and sometimes conflicting image metadata.
>
> You might be able to get a glimpse of what all metadata there could be
> by reading
> https://gitlab.freedesktop.org/pq/color-and-hdr/-/blob/main/doc/pixels_color.md
> .
>
> Compare Vulkan formats to e.g.
> https://docs.microsoft.com/en-us/windows/win32/api/dxgicommon/ne-dxgicommon-dxgi_color_space_type
> and you'll see that while DXGI color space enumeration is mostly about
> other stuff, it also has overlap with Vulkan formats I think, at least
> the SRGB vs. not part.
>
> Btw. practically all buffers you see used, especially if they are 8
> bpc, they are almost guaranteed to be "SRGB" non-linearly encoded, but
> do you ever see that fact being explicitly communicated?
>
> Then there is the question that if you have an SRGB-encoded buffer, do
> you want to read out SRGB-encoded or linear values? That depends on
> what you are doing with the buffer, so if you always mapped dmabuf to
> Vulkan SRGB formats (or always to non-SRGB formats), then you need some
> other way in Vulkan for the app to say whether to sample encoded or
> linear (electrical or optical) values. And whether texture filtering is
> done in encoded or linear space, because that makes a difference too.
>
> IOW, there are cases where the format mapping depends on the user of the
> buffer and not only on the contents of the buffer.
>
> Therefore you simply cannot create a static mapping table between two
> format definition systems when the two systems are fundamentally
> different, like Vulkan and DRM fourcc.
>
>
> Thanks,
> pq

Thanks all for your comments. We'll look into an alternative approach to
achieve what we need.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
