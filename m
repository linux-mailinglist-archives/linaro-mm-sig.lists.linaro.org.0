Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCfcFwpk5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C0784431914
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D35F64062A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:36:08 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011028.outbound.protection.outlook.com [52.101.65.28])
	by lists.linaro.org (Postfix) with ESMTPS id E9EE2402EF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 16:14:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=selector1 header.b=OOrVmc1M;
	dkim=pass header.d=arm.com header.s=selector1 header.b=OOrVmc1M;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of Bence.Csokas@arm.com designates 52.101.65.28 as permitted sender) smtp.mailfrom=Bence.Csokas@arm.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=2")
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=EV4CNT5/VGPExXXdpINqus1QqHCn0Al3LAeMyoTUH5B6+Oo3CM+xAezOoRxUSWQNLTnoVqj30grWGvjPRr5eug2Y4qK8LYW6sz3TDlaZGaW9hOw+XpjXVzWWU4E3DrtQ2qIjvt3EjrIc1DKfZH3pz13jesBlU/PCH70Lw63sabIvzD8lKxLdO/wbObRZDFzC/aZAJfMf5KSgMzAIai5czmjbMOazSP5KKCRgLIcWiFfNxl7nG/QFglB4Q/LFj6mYWskCB34tS9BO6JN5mD6nG2PEcQZFFvedaPCmlVrTZjIMx/kcMF1ZTI4KGKFUcUK4zQR55XMqVGz9NYSKCy2aOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wNnmsTqBLOMci9G1iRkNSFgebbvN1FtmWgA2qmFtqs=;
 b=Zowm7Vk6+iMqqsU0orTQb7zkoJ0BaPfBFvguS71RmHfjqWEB39A5/SsvgtxFY2RwTZ/ik8HWrkkhEu0fZcNat3GcPjmjUwiCiL26+fZ0+MM5OQQJFehur5SVY6e3eQgffsgcQz7pejn7p1t5GYSZYXbI2U4JIM83JIC7vbRANZ6fnnOqCy+HtmS5iGdk4HtGa8kW7IkCqFOmeWIqnqj5S0FsXFhWvvgMIyhcwbOduQH5bu7/QOIGzALPLqwS3MdBRGXh0xUAu10v5DrU9XebwOSWGxeTV4Hz3QvWQ0owemfTi3TvhD+IehQ1iZr+6WzHNKAasRAlhaByz9lw1o/y4Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=collabora.com smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9wNnmsTqBLOMci9G1iRkNSFgebbvN1FtmWgA2qmFtqs=;
 b=OOrVmc1MzFUpECoPAvDybiI42aP4a8XHJekNHeWFISkOokBnG28NNuyu3rIG+36RjWYi3Rv0qujP2cmkg8Y41SQEnI8hBgIm/+Eddky5yKH6pWfxwi57k9pn9TIMOhy4LjWuWNWgIjbqFWGns4Gzo+R3k8ztmy+F+qIVsNm7Q8g=
Received: from DU2PR04CA0152.eurprd04.prod.outlook.com (2603:10a6:10:2b0::7)
 by AS8PR08MB9043.eurprd08.prod.outlook.com (2603:10a6:20b:5c1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 2 Apr
 2026 16:14:20 +0000
Received: from DU2PEPF0001E9C6.eurprd03.prod.outlook.com
 (2603:10a6:10:2b0:cafe::d7) by DU2PR04CA0152.outlook.office365.com
 (2603:10a6:10:2b0::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9769.18 via Frontend Transport; Thu,
 2 Apr 2026 16:14:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF0001E9C6.mail.protection.outlook.com (10.167.8.75) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9745.21 via
 Frontend Transport; Thu, 2 Apr 2026 16:14:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gx0qazeTFFwAFNqtR7gr9IzmO4u9r6u7kQM6bChbyPZjnEKog8Afzv22e4LV3sHcoZTZ/tfPcZChZn/eeQUDqL3awPf0B4g8em+rx+oxAkGGwS7tjLnCiqVZPiqeoo+QHE+jeiW8dNkmNgT+7WM0tZHBYKmX4wHSm0NZwNgir8Y8ZdxdlqT/d+kUac2B/xV13EkRp2amJf/lRtlO7LICuaX15c4mAuICw4sT2pK+xFJVPZkI3ygL+oZnS96smL5b2MgcdQ4WpyZp5a3VrhjR8VeNFziYjSydOhWWanNj5lBaSdB6pN8hCWA1seMJkrd6kEFYaW2pU+BSYMN5ZIUHfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wNnmsTqBLOMci9G1iRkNSFgebbvN1FtmWgA2qmFtqs=;
 b=YSk/Lo5N9l8UU5lEXq6sFLVhd50sATlHnFuEvoeKH7kMGi+ZW76DW/1ze0/pmg5rZrrZZVQKtCZMb+m47jy2OS7GP1x0YplN7VBxF0q72fP4Oil0wkPYh1MEPxOa2SiwRqBGBlDNFWDYN87/geKNrTOqYGp52CWwnAa5SLr1x2LfHgG+9Pv4t3LHIBeZfcXT/i2qPCoHJvSwjOAb+rNpMc8pAHv7BVw7gRWBrD4s3Iiza6UVUpbejVh+sha1Zgs6Z3BhybDMZ7jhxeMpet4s2qaL5uiaAdj63+BuCLYiZ1M1Ih97IKC3KBRkK5YWBCxLkyAmOF7X+x3LTZD3XMm6vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9wNnmsTqBLOMci9G1iRkNSFgebbvN1FtmWgA2qmFtqs=;
 b=OOrVmc1MzFUpECoPAvDybiI42aP4a8XHJekNHeWFISkOokBnG28NNuyu3rIG+36RjWYi3Rv0qujP2cmkg8Y41SQEnI8hBgIm/+Eddky5yKH6pWfxwi57k9pn9TIMOhy4LjWuWNWgIjbqFWGns4Gzo+R3k8ztmy+F+qIVsNm7Q8g=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from GV1PR08MB10455.eurprd08.prod.outlook.com
 (2603:10a6:150:16f::10) by GVXPR08MB7846.eurprd08.prod.outlook.com
 (2603:10a6:150::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.28; Thu, 2 Apr
 2026 16:13:16 +0000
Received: from GV1PR08MB10455.eurprd08.prod.outlook.com
 ([fe80::af66:6019:a08:d04]) by GV1PR08MB10455.eurprd08.prod.outlook.com
 ([fe80::af66:6019:a08:d04%6]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 16:13:15 +0000
Message-ID: <c8dbb9e2-f1a1-469e-a0af-ba3a5e3a651c@arm.com>
Date: Thu, 2 Apr 2026 18:13:13 +0200
User-Agent: Mozilla Thunderbird
To: Daniel Almeida <daniel.almeida@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20250318-drm-gem-shmem-v1-0-64b96511a84f@collabora.com>
 <20250318-drm-gem-shmem-v1-1-64b96511a84f@collabora.com>
Content-Language: en-US
From: =?UTF-8?B?QmVuY2UgQ3PDs2vDoXM=?= <bence.csokas@arm.com>
In-Reply-To: <20250318-drm-gem-shmem-v1-1-64b96511a84f@collabora.com>
X-ClientProxiedBy: LO4P123CA0233.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a6::22) To GV1PR08MB10455.eurprd08.prod.outlook.com
 (2603:10a6:150:16f::10)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	GV1PR08MB10455:EE_|GVXPR08MB7846:EE_|DU2PEPF0001E9C6:EE_|AS8PR08MB9043:EE_
X-MS-Office365-Filtering-Correlation-Id: 73290de9-59f5-4780-333f-08de90d2e5c9
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|7416014|1800799024|921020|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info-Original: 
 tCnzJijKPyim4Z7PHG9QnbdoBU6NvSmJOLwVyCC8iWHrFUfk0O0QevCX5aJlasvUbEaC4r5wxySB8RGZeDndEnk32Req+mYtNfnz+oF8A44Y4VSmMqUoDHBBQCy0nOfme/Oi0+ph8hZ5tlCc35wNxnOTY2KK+JsNHB8EnT8oPXNOSiC1wpAe0i2Gagvm1zoluoJ84cqJLvw0TCXgOUSzk6iiYJ7fP+/yXzmBTNzhD14C9JoJPE3HE3JuVl+Ha3lkg0lPc2Emr0r6dMb2454X4DgFKQsbZbcD72/Qytxl6iyIMajiPsCAwst7OCURQ3wo2JCiv6+7q9O94ScQbrzLtdsIEE4pXw/SAp3bq9/kuTLxk/9UYq4R5f+gEC4P+BStlGvdjsFxdBX7pOWC6fPpEOa01Damujd4VcXhRd/jswTH1fztYEGR3T56X6B0FJTPzc5x2caPsygETiYoKtuWaX7uCfavXQfnFL5gekgDTwz09gSIf0k1ToSSZIqFy5r+1byZuNVKN3bPAhZOD4SIe/9mdXQ0hns0EgIt2DiUcbZUHoVjPltb9w4lpJPdoK3oqjEXecNYd445qXknhFkSMMQgIRa0vNUOZLsRHDSmhlCj2ucWUfHHHe8Vac6RI8VwhxELk6jwuXag78w0nTog8i4DU0L3aYH4d/mDXeK6vErV0q5dtY3PRI4JinLpn1ocC4haXk9Gf8P8Sa3hQDlpykwXxcW5Y60y24bpXBStodWhtR6ideYKM6maVjQS+5QSB8dfBAIM9rPndi/37E3LIznB1kzsCfDCYg/z8Rs3eIA=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR08MB10455.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(1800799024)(921020)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-Exchange-RoutingPolicyChecked: 
 AD3WP8WRar2R/Sm/GALGJbozGv5DzpzDWz6wpkjMJ4Wf+T+3nZjURIEBOHCyyAdFUmyN2Gk2u8SkhIyFFhRbxkCB3rHPO7BEkq2HYjMYlt/P5KhSh62tR9ey2iTGIbJ4FwxqT5wLFM8V0el5OxTMbeKopR7ykWsshRVaX/S+iCLJU7QtoB4RBK48fZYQJPOLwddMJRy2vxJmydQAr03MvvjAcsT1PaHnZzPCrBrcMYD0NEbMyMI+JW3Q3oecDMtigz8jGfBxukWfXWr/sSkf+EGDANA/wTQ7G3OQjndriL4Pw0rEJLIGYCvUjgNfF8USrL5zhB8uknRpOTnKI/6LRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7846
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	24d7c49e-89ba-473f-055c-08de90d2bf19
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|14060799003|376014|36860700016|7416014|35042699022|13003099007|921020|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	cT/ROtm7nFG7C5gkiFeNQZJdEuhVHN1VScfFaHDOPvr4tDssNGTRBlJo6tDLXHcPlG0YQElPSmcOP8CJxsy/Cwaqb74/PhwLocAnwLJfWXYQ/KRgUxsn62hxDMxkSCT4/YXhUAT+Nel3GbwfKWOy3yrMpcuqGKzSud36X+jSGAEbFGTOoq5TWHfUAY1p5VDbUM4YGfLCOd1Zh/boSmlQYAalipi8U7RGNOP0OBWsuC4FfRgPfZ4daGxx1CfjcILAe4e/WN6ewvlRdYyndSFC6QCCHYm2YcOQmt6cfQ5/O5gnLbqK0lmhm1bx1PKHGTHqh2iA5WQEwINHmjUtH3jNMMHJia1Ae1fdkIdKUPI+YWOn0GG26XinNGCKNhCKPfFjGHIRZrJhSE3SZmMFeeXS5ymuJtJyer1erymNe6plrj9F9VTg1mbulXsWlesSKyu5r1SJGoFjsGmyW2yQ8OIx7Lt6klItNL7Mw1735Ffm9pvAR6I4umZl40SRjmiLeoovu0hCF+YsKXEG2iBtrLqdYMEpMh9XXNmoboc/Ug4Gxye5+p2Fe5B6OJGGfybefeZTz8H34tE9GTDSGih3066lkw3/jWrcejW4PCMg/SnHEZeLHQrR7BtEFe6826WcTfx5SyV2R2BtOTOcRC00oria3A3mmdVSvna4Gt5CCgjRRYabrVN6qpBBZzcT4So2tqKUPdo9nZBFYBBRHdnKnF1M/tTpq2vUDfsqEUyybs0KhW65Oe5z+BOkyLT4t1idRM8T/64irbReTzImK5ptrNkk7g8bxLCcGDevf/vlr4M1jaS7WNl1+byNK0jJ1irqKZLs
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(14060799003)(376014)(36860700016)(7416014)(35042699022)(13003099007)(921020)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	tdcvlV6Pi+K9B7qXyKUKhdJ41B3hNug3hL0DejQ28atf+kkNxvDf/+gOQsS9WMex5Guq1tHWEOopzQbwmhkz/lo0BVsBqrzMTABscP+BnDHazyEEclhoI8rPvKBDdd/eV8F86fjpruxBxwIBYWEtvjCpC1mbeeMve2WFmXdkOna2uOewh/iMbtVe8kv+QrWIvTQbYfdABkeqTWQO0Ta72T8PQKZZ/2+STgxJIIN7ugHLwmQXRf7YENkDZF5OjL7fmSIb6KkiUryFGjpu3VpqDSe579BLy3XsCvhcznRdUt0izestgHD5naByF63J1VYpgFdFqO4nNlcC4xnzAikoGm5vB+c6E9YOOd8IpFcq9yeyqzbmMbrjbXNaz2ZZIoTTpbG8Gi7zbPqci+JSS2x+Em2VfOHCeu1HYEh079+kmVUJdYm+MCoP5C1hPp8/8kno
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 16:14:20.4890
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73290de9-59f5-4780-333f-08de90d2e5c9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9043
X-Spamd-Bar: ----
X-MailFrom: Bence.Csokas@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3RZLJZ7WZBKQIMGT334AKSQ44H5QFF2T
X-Message-ID-Hash: 3RZLJZ7WZBKQIMGT334AKSQ44H5QFF2T
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:46 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/7] drm/shmem-helper: Add lockdep asserts to vmap/vunmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3RZLJZ7WZBKQIMGT334AKSQ44H5QFF2T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.72 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arm.com:s=selector1];
	DATE_IN_PAST(1.00)[433];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MIXED_CHARSET(0.53)[subject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org,amd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,asahilina.net:email];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bence.csokas@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.643];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C0784431914
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksDQoNCkkganVzdCBjYW1lIGFjcm9zcyB0aGlzIGNvbW1pdCB3aGlsZSByZXNlYXJjaGluZyBz
b21ldGhpbmcgZWxzZS4gDQpPcmlnaW5hbCBwYXRjaCBoYWQgdG9vIGZldyBjb250ZXh0IGxpbmVz
LCBzbyBJIGhlcmUncyB0aGUgZGlmZiB3aXRoIGAtVTEwYC4NCg0KT24gMy8xOC8yNSAyMDoyMiwg
RGFuaWVsIEFsbWVpZGEgd3JvdGU6DQo+IEZyb206IEFzYWhpIExpbmEgPGxpbmFAYXNhaGlsaW5h
Lm5ldD4NCj4gDQo+IFNpbmNlIGNvbW1pdCAyMWFhMjdkZGM1ODIgKCJkcm0vc2htZW0taGVscGVy
OiBTd2l0Y2ggdG8gcmVzZXJ2YXRpb24NCj4gbG9jayIpLCB0aGUgZHJtX2dlbV9zaG1lbV92bWFw
IGFuZCBkcm1fZ2VtX3NobWVtX3Z1bm1hcCBmdW5jdGlvbnMNCj4gcmVxdWlyZSB0aGF0IHRoZSBj
YWxsZXIgaG9sZHMgdGhlIERNQSByZXNlcnZhdGlvbiBsb2NrIGZvciB0aGUgb2JqZWN0Lg0KPiBB
ZGQgbG9ja2RlcCBhc3NlcnRpb25zIHRvIGhlbHAgdmFsaWRhdGUgdGhpcy4NCg0KVGhlcmUgd2Vy
ZSBhbHJlYWR5IGxvY2tkZXAgYXNzZXJ0aW9ucy4uLg0KDQo+IFNpZ25lZC1vZmYtYnk6IEFzYWhp
IExpbmEgPGxpbmFAYXNhaGlsaW5hLm5ldD4NCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEFsbWVp
ZGEgPGRhbmllbC5hbG1laWRhQGNvbGxhYm9yYS5jb20+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx5
dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNTAzMTgtZHJtLWdlbS1zaG1lbS12MS0xLTY0Yjk2NTExYTg0ZkBjb2xsYWJvcmEu
Y29tDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIHwg
NCArKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCj4gaW5kZXggYWE0MzI2NWY0ZjRmLi4wYjQx
ZjAzNDZiYWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jDQo+
IEBAIC0zNDEsMjAgKzM0MSwyMiBAQCBFWFBPUlRfU1lNQk9MX0dQTChkcm1fZ2VtX3NobWVtX3Vu
cGluKTsNCj4gICAgKg0KPiAgICAqIFJldHVybnM6DQo+ICAgICogMCBvbiBzdWNjZXNzIG9yIGEg
bmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLg0KPiAgICAqLw0KPiAgIGludCBkcm1fZ2Vt
X3NobWVtX3ZtYXBfbG9ja2VkKHN0cnVjdCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW0sDQo+
ICAgCQkJICAgICAgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiAgIHsNCj4gICAJc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmogPSAmc2htZW0tPmJhc2U7DQo+ICAgCWludCByZXQgPSAwOw0KPiAg
IA0KPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iai0+cmVzdik7DQo+ICsNCj4gICAJaWYgKGRy
bV9nZW1faXNfaW1wb3J0ZWQob2JqKSkgew0KPiAgIAkJcmV0ID0gZG1hX2J1Zl92bWFwKG9iai0+
ZG1hX2J1ZiwgbWFwKTsNCj4gICAJfSBlbHNlIHsNCj4gICAJCXBncHJvdF90IHByb3QgPSBQQUdF
X0tFUk5FTDsNCj4gICANCj4gICAJCWRtYV9yZXN2X2Fzc2VydF9oZWxkKHNobWVtLT5iYXNlLnJl
c3YpOw0KDQouLi4gcmlnaHQgaGVyZSwgYW5kDQoNCj4gICAJCWlmIChyZWZjb3VudF9pbmNfbm90
X3plcm8oJnNobWVtLT52bWFwX3VzZV9jb3VudCkpIHsNCj4gICAJCQlpb3N5c19tYXBfc2V0X3Zh
ZGRyKG1hcCwgc2htZW0tPnZhZGRyKTsNCj4gICAJCQlyZXR1cm4gMDsNCj4gQEAgLTQwMSwyMCAr
NDAzLDIyIEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fc2htZW1fdm1hcF9sb2NrZWQpOw0K
PiAgICAqIGRyb3BzIHRvIHplcm8uDQo+ICAgICoNCj4gICAgKiBUaGlzIGZ1bmN0aW9uIGhpZGVz
IHRoZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIGRtYS1idWYgaW1wb3J0ZWQgYW5kIG5hdGl2ZWx5DQo+
ICAgICogYWxsb2NhdGVkIG9iamVjdHMuDQo+ICAgICovDQo+ICAgdm9pZCBkcm1fZ2VtX3NobWVt
X3Z1bm1hcF9sb2NrZWQoc3RydWN0IGRybV9nZW1fc2htZW1fb2JqZWN0ICpzaG1lbSwNCj4gICAJ
CQkJIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICB7DQo+ICAgCXN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqID0gJnNobWVtLT5iYXNlOw0KPiAgIA0KPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxk
KG9iai0+cmVzdik7DQo+ICsNCj4gICAJaWYgKGRybV9nZW1faXNfaW1wb3J0ZWQob2JqKSkgew0K
PiAgIAkJZG1hX2J1Zl92dW5tYXAob2JqLT5kbWFfYnVmLCBtYXApOw0KPiAgIAl9IGVsc2Ugew0K
PiAgIAkJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoc2htZW0tPmJhc2UucmVzdik7DQoNCi4uLmhlcmUu
DQoNCj4gICAJCWlmIChyZWZjb3VudF9kZWNfYW5kX3Rlc3QoJnNobWVtLT52bWFwX3VzZV9jb3Vu
dCkpIHsNCj4gICAJCQl2dW5tYXAoc2htZW0tPnZhZGRyKTsNCj4gICAJCQlzaG1lbS0+dmFkZHIg
PSBOVUxMOw0KPiAgIA0KPiAgIAkJCWRybV9nZW1fc2htZW1fdW5waW5fbG9ja2VkKHNobWVtKTsN
Cg0KT3Igd2VyZSB0aG9zZSBpbnN1ZmZpY2llbnQgZm9yIHNvbWUgcmVhc29uPyBJZiBzbywgc2hv
dWxkIHdlIGtlZXAgYm90aCANCm9mIHRoZW0sIG9yIHNob3VsZCB0aGUgb2xkZXIgb25lcyBoYXZl
IGJlZW4gcmVtb3ZlZD8NCg0KQmVuY2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
