Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePjdLpoQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A493411CC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75F1444B81
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:38:49 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012064.outbound.protection.outlook.com [40.107.209.64])
	by lists.linaro.org (Postfix) with ESMTPS id 48BDB3F787
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Feb 2026 10:28:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=5pktEoRP;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.107.209.64 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8IakOa4ophdAW3xs4/ocpYRpycKy11binzIJD+rO1YlgoIjv/f5x1aYfP3W2AZGgTMVwv4bOpnuRfGA6Z0jDN/an0xV3Q3YXI5W1m69EZ/iilD9L64qhV4TuEew9ZOSppCgf7DSdZHW1N/gvZrMp0UjxfNQ250LeOCy4stqusQ6pqGf+BqrO6MtvO7A8C1qJT1YSyG6+enE0qyUMbiLXAJtLQzmPUlzLP0hcle/wjEhJxWKkdyIBs/m03wrYcIpR4VGsmLylmN/oq5UU9dgo2kTcdp9BiP6phiScjb/EbUImqmDZLv6s2pHhPkKAeJGhnUFrf3Qqcm3Ma/LP/GW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xboBfU4k403mlrk8kaFfJ1D6MYgw8nbBFKHpiR8qp04=;
 b=KVlbCxu7rtsNVyTL06+EDVep91vXUHUCio7A4cuDq3/7iy8h0L0oCUHK57qGbdJtsGNlSv1b99VuglIqpV2LvcNH5Ln9ZS1BmtblV9M0A6J2P/ergLfqGI0s+Vrl1lxk862Qpbn1Q2LxqPTg3Sb3r3xCl3vXnicAQLUHMAlRBUZGQ0lvb9+YzC1l9470Hrg2k+TbipSLNpITZ7dzVowiCnf+bVyjCLQ9JlfocLsfDrVkAuQW4suhHNAUjJMOBw/MWvzfB73qieaSAEEnvidOhO+ygfu4p1L4glL244wl/MxrpsSQMhOYuu321YT5/xCu3pZQ+izVO97mAPZyWcGa/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xboBfU4k403mlrk8kaFfJ1D6MYgw8nbBFKHpiR8qp04=;
 b=5pktEoRPF5fPE/QQIp5qohktg0hR08pxDxAT3pojEWfByL5nyGmpg6Id6UfYde070pLoRRzplYml39SUsa/JhNc/xEVfXfch9T8DNciQkXA0z5ZvXdGfgACS570W1dDfwDdXL5Vd4xAaDBTZETPYTsOhVLCEpxxh92HGieOnHUU=
Received: from MN2PR20CA0044.namprd20.prod.outlook.com (2603:10b6:208:235::13)
 by SJ5PPF816B88375.namprd12.prod.outlook.com (2603:10b6:a0f:fc02::99b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Tue, 3 Feb
 2026 10:28:10 +0000
Received: from BL6PEPF00020E5F.namprd04.prod.outlook.com
 (2603:10b6:208:235:cafe::8c) by MN2PR20CA0044.outlook.office365.com
 (2603:10b6:208:235::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Tue,
 3 Feb 2026 10:28:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL6PEPF00020E5F.mail.protection.outlook.com (10.167.249.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 10:28:10 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 3 Feb 2026 04:28:01 -0600
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Tue, 3 Feb 2026 11:22:18 +0100
Message-ID: <20260203102236.3456-12-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203102236.3456-1-pierre-eric.pelloux-prayer@amd.com>
References: <20260203102236.3456-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E5F:EE_|SJ5PPF816B88375:EE_
X-MS-Office365-Filtering-Correlation-Id: f824f133-aa63-41c0-20d9-08de630eed9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YXM3QjJrN1YxR1NSemdOM3ZjSFNvOUlyKzVXcmxQSTJFcEFkWWFsU1dVVVFM?=
 =?utf-8?B?blcvWVBzNEVJT3h1VHJGVlNtVVplNzFQekI5OWcrMCtoaTRncVJzVm1rL1lu?=
 =?utf-8?B?NFFtbUVlTGxWdWNyV1pPTW9JQjVDUk1SeVowNk50RHhObktsNGcyQU1lbVBv?=
 =?utf-8?B?WmhQNUhhWlZMM1JXd2FQZU1Mc29jalNyUDluMTJvcnIreWJuYVNObWViWHp0?=
 =?utf-8?B?RzhxQkdjbWhzRnE5ODFKd0VJcVduTHJNL3BvWElOMGYyeTA0dHNuZjRZVEVh?=
 =?utf-8?B?dkNQZ29tKzlPbG05NjBqSmx4b3Z0dDFLWUtYUHlGTkhvbFNiek1tSC9TTndy?=
 =?utf-8?B?NzUxMDBEeUtwTU9EY2YzRiswYjI2S0VQbk5HbnFKVm1xZDVjYzB4VEpTcXdQ?=
 =?utf-8?B?U2N5UHhKOUc5bHFwZisrMnZ4amlxT2NTR1NsQWcwaS9iVFhyNDhVZlhvdDZl?=
 =?utf-8?B?U0xsbzhDYkRnMTgvRmk5WmxjOVhTSXdwUnNIaS85SDJVZTFlcFQ4N3JCdnk1?=
 =?utf-8?B?UGNBWk5TSVBzaHhhejF6aHhPNWVMeDI2S0RPc2R3OTcrbEdybVpGOTdSWWlZ?=
 =?utf-8?B?ODRsRXA1VnFDd0I5ckxuMVBOWVQrSTQxOGtYVFpVSVJiUS9GT2J4V2ZKK2NE?=
 =?utf-8?B?UHlpUGZ6ekMrVU5SbDdueEFzZjBCMFN0ZnZ0ckVZY0txOVlCblA0dDZlL3Z4?=
 =?utf-8?B?ZkxoaVhPWGh6N2l4NmJKejZNcU9XM0ZVUU9hR2psUFJDUkhRdjlVVW9hQ2JH?=
 =?utf-8?B?NWlmVXk2Mkh3SjRPSWxBMTBBN1g3U0lQWmZ3K0J2Z1oySUNPcnF0eWw4RjVL?=
 =?utf-8?B?SUdtbUZpN2xWNEpFc3QyaEQySjZJZ09JZXZuK09tQTF4b2plZHdhSS9zKzhv?=
 =?utf-8?B?U2N0ZFJVRU9tWnlzaVZtbnhoK1ZxNU9CckZROXBHUWllWW9sWUcwbU1GZ3p2?=
 =?utf-8?B?N1JWVEhLUGJYMGxxWEtUbVRYOWZUU2NycWZPTU5aRWkzSUJ2NklIbjlFQkQv?=
 =?utf-8?B?d2hqYW5LUUtSbTdQOVl3b2JGRW01cDR0TExNb1BjK0RHR2p5d05xM05sZ2x5?=
 =?utf-8?B?a0tnT1czdU9pSlR6SEVwdXBLS2NZdVFJSEw1NzBncDB5WlplVjFBaVF5TmZ5?=
 =?utf-8?B?WklBZFVlWHc1YjRZbjkvT3gxOStGa1o3bXVYUzY4OTU1bFNaR0NDVysyVmRw?=
 =?utf-8?B?cFVLK0NFM0xLTnl4ZEw3UkFZckFvNkF2cGxyNjBxMTZBVGo4L282TWI0QjNq?=
 =?utf-8?B?OWc5N3cyRnFFY1MxNVUvZDBlOVFzTUpiaTlSNm8ySnhtK2VsSmpTQXFKdzNm?=
 =?utf-8?B?YUovRDVUc1R5dTNGa2x3aFdjdlFFRGVIb2NqUlFBQzZhYldHczFRbjdBMEdv?=
 =?utf-8?B?K0x5QnRSSTk5ME1UVHA3cXpsbzdpc0VMSlNyaGJnajZDZkJFaXdvcG1BVE5E?=
 =?utf-8?B?MnhzY0Q5SUlTS0EwRHRtQzNFM1RjcVF2WWo1M2J1c2c4blEvTjZuWkg5VXIy?=
 =?utf-8?B?NVJJSFlmMnp0MEtzMVVqVXYyOVZPeHMxK3B5eXNYSDlhQzNVSng4OEw2VDVC?=
 =?utf-8?B?Y0lwYldPVXA3L3RINXZtQmtPYS9SNGJqUE5oRkYyVEd6NFNSOHNBNmZVNitQ?=
 =?utf-8?B?bDM3Tlgzb0EvRC9CTE9LY0oxTnBRR0tLZDBsWkhVV3V3dkdqRXR2YWNQcy9G?=
 =?utf-8?B?cmxpaGNiV2xiS1JqeDZWTi95NWFFczVnTEtDbWZ2b1g5a3ZNOHg4SnY2eGJ4?=
 =?utf-8?B?NlpUTDFHK0phMkgxRjZuR2U2U0RxdnZrNlRaaTJuUTd6SFNNbzhvVWZVWWJN?=
 =?utf-8?B?MFh1K3dGRmlmeWhYYi84MnRvNjF2QTk3cFNTVllNVW4zaVdneVBPUnlSemtr?=
 =?utf-8?B?S25Yd0VsTnFrUUE1ZkVBdlNkd2t3VDExNDhBclZrTFEyeEVDMU1Pb1pWbUc1?=
 =?utf-8?B?NUFBS1AzdVd4dUNYWFphZTE0SDRweVVRcmFOcmNEZEo2YWRydVg5SFBHUFBy?=
 =?utf-8?B?SEpmZWRHeXN0REJ0cHhHanNrSlM0NG9SVzRZTEZpUW55QnRnTVJoeTBXYnRZ?=
 =?utf-8?B?a0pNaHdzWFlOeEN6TVBCZ1lRdFN0TG5yb2tvN0Q1cmI2d3B2L3NJMXZNYVpk?=
 =?utf-8?B?dVNObEJNaFVOTVlQSE15eVN4T0loZWw5RW1JREtpc0o5OTg1cm8wTk5aZzhI?=
 =?utf-8?B?dEhaSEkwWGlFMktaM2FCR3RhODRVK2ZjRUlOU1NFQSsrU2xDWWpOaUFyMFRy?=
 =?utf-8?B?RHJReGZsTlZGeFA5L2pLUlBKUkF3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	NPt7nOa1TKqSRmN9wQt5DCUtZMtFwNCXNtPTRRfXC0CxJNPq+iVYBPtLuN45fNihmrXqv5OKPJl+EpfY/lv4sEDdAeDwoZbK8HS2B1EIOJU04xcJrvcYjr/6rmbV+x6efhUmzwGgwj8mBaTP3LoFb0MC63/xWt7ZyooY3KpY4ZRboWqHB0to6ZIv5cSbyX+WjAon1m9bh7kL387BsXZVe0LrY1VzuzMJBmV8K3VjJvDpEGDX15NQWKLz25zjjXSSFS+CUqDbuqHOYShF/HUxakfxUGKcdVUavholVKD4/ijlBfFBS9cnNG6HKGfNXvNkQ3NkuRa81y2+85dDRukDwzWIOzO2s1pA2wvWYjEf5Vw72H7y9CgXJermnBL5mYb9IjfRfvBm7h2KZe1hApQgUx9ognWbsK8rBdZmy2GxdJBuHIyd2+aSnqHclAbW5lKF
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 10:28:10.0077
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f824f133-aa63-41c0-20d9-08de630eed9f
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL6PEPF00020E5F.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF816B88375
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: USMUJ4HJ3ZSYATOC3B3LSLAMIFUBHTPR
X-Message-ID-Hash: USMUJ4HJ3ZSYATOC3B3LSLAMIFUBHTPR
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:04 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 11/12] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/USMUJ4HJ3ZSYATOC3B3LSLAMIFUBHTPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[1734];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5A493411CC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhpcyBpcyB0aGUgb25seSB1c2UgY2FzZSBmb3IgdGhpcyBmdW5jdGlvbi4NCg0KLS0tDQp2Mjog
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIgaW5zdGVhZCBvZiBhbWRncHVfY2xlYXJfYnVmZmVyDQot
LS0NCg0KU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1l
cmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMTIgKysrKystLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgfCAyMyArKysrKysrKysrLS0tLS0tLS0tLS0tDQog
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oICAgIHwgMTMgKysrKysrLS0t
LS0tDQogMyBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3Qu
YyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KaW5kZXggZDA4
ODRiYmZmYTc1Li4xOTVjYjFjODE0ZDEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9vYmplY3QuYw0KQEAgLTcxNyw5ICs3MTcsOSBAQCBpbnQgYW1kZ3B1X2JvX2NyZWF0
ZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiAJICAgIGJvLT50Ym8ucmVzb3VyY2UtPm1l
bV90eXBlID09IFRUTV9QTF9WUkFNKSB7DQogCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiAN
Ci0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShh
ZGV2KSwNCi0JCQkJICAgICAgIGJvLCAwLCBOVUxMLCAmZmVuY2UsDQotCQkJCSAgICAgICB0cnVl
LCBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVSKTsNCisJCXIgPSBhbWRncHVf
dHRtX2NsZWFyX2J1ZmZlcihhbWRncHVfdHRtX25leHRfY2xlYXJfZW50aXR5KGFkZXYpLA0KKwkJ
CQkJICAgIGJvLCBOVUxMLCAmZmVuY2UsDQorCQkJCQkgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9K
T0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQogCQlpZiAodW5saWtlbHkocikpDQogCQkJZ290byBm
YWlsX3VucmVzZXJ2ZTsNCiANCkBAIC0xMzI5LDkgKzEzMjksOSBAQCB2b2lkIGFtZGdwdV9ib19y
ZWxlYXNlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQ0KIAlpZiAocikNCiAJ
CWdvdG8gb3V0Ow0KIA0KLQlyID0gYW1kZ3B1X2ZpbGxfYnVmZmVyKGFtZGdwdV90dG1fbmV4dF9j
bGVhcl9lbnRpdHkoYWRldiksDQotCQkJICAgICAgIGFibywgMCwgJmJvLT5iYXNlLl9yZXN2LCAm
ZmVuY2UsDQotCQkJICAgICAgIGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9DTEVBUl9PTl9S
RUxFQVNFKTsNCisJciA9IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKGFtZGdwdV90dG1fbmV4dF9j
bGVhcl9lbnRpdHkoYWRldiksDQorCQkJCSAgICBhYm8sICZiby0+YmFzZS5fcmVzdiwgJmZlbmNl
LA0KKwkJCQkgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0Up
Ow0KIAlpZiAoV0FSTl9PTihyKSkNCiAJCWdvdG8gb3V0Ow0KIA0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KaW5kZXggYjcxMjQzNTZkZDI2Li4zYjM2OWIzZmJjZTggMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KQEAgLTQxNyw4ICs0MTcs
OCBAQCBzdGF0aWMgaW50IGFtZGdwdV9tb3ZlX2JsaXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICpibywNCiAJaWYgKG9sZF9tZW0tPm1lbV90eXBlID09IFRUTV9QTF9WUkFNICYmDQogCSAgICAo
YWJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX1ZSQU1fV0lQRV9PTl9SRUxFQVNFKSkgew0K
IAkJc3RydWN0IGRtYV9mZW5jZSAqd2lwZV9mZW5jZSA9IE5VTEw7DQotCQlyID0gYW1kZ3B1X2Zp
bGxfYnVmZmVyKGVudGl0eSwgYWJvLCAwLCBOVUxMLCAmd2lwZV9mZW5jZSwNCi0JCQkJICAgICAg
IGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9NT1ZFX0JMSVQpOw0KKwkJciA9IGFtZGdwdV90
dG1fY2xlYXJfYnVmZmVyKGVudGl0eSwgYWJvLCBOVUxMLCAmd2lwZV9mZW5jZSwNCisJCQkJCSAg
ICBmYWxzZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfTU9WRV9CTElUKTsNCiAJCWlmIChyKSB7DQog
CQkJZ290byBlcnJvcjsNCiAJCX0gZWxzZSBpZiAod2lwZV9mZW5jZSkgew0KQEAgLTI1ODIsMjYg
KzI1ODIsMjMgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2LA0KIH0NCiANCiAvKioNCi0gKiBhbWRncHVfZmlsbF9idWZmZXIgLSBmaWxs
IGEgYnVmZmVyIHdpdGggYSBnaXZlbiB2YWx1ZQ0KKyAqIGFtZGdwdV90dG1fY2xlYXJfYnVmZmVy
IC0gZmlsbCBhIGJ1ZmZlciB3aXRoIDANCiAgKiBAZW50aXR5OiBlbnRpdHkgdG8gdXNlDQogICog
QGJvOiB0aGUgYm8gdG8gZmlsbA0KLSAqIEBzcmNfZGF0YTogdGhlIHZhbHVlIHRvIHNldA0KICAq
IEByZXN2OiBmZW5jZXMgY29udGFpbmVkIGluIHRoaXMgcmVzZXJ2YXRpb24gd2lsbCBiZSB1c2Vk
IGFzIGRlcGVuZGVuY2llcy4NCiAgKiBAb3V0X2ZlbmNlOiB0aGUgZmVuY2UgZnJvbSB0aGUgbGFz
dCBjbGVhciB3aWxsIGJlIHN0b3JlZCBoZXJlLiBJdCBtaWdodCBiZQ0KICAqICAgICAgICAgICAg
IE5VTEwgaWYgbm8gam9iIHdhcyBydW4uDQotICogQGRlcGVuZGVuY3k6IG9wdGlvbmFsIGlucHV0
IGRlcGVuZGVuY3kgZmVuY2UuDQogICogQGNvbnNpZGVyX2NsZWFyX3N0YXR1czogdHJ1ZSBpZiBy
ZWdpb24gcmVwb3J0ZWQgYXMgY2xlYXJlZCBieSBhbWRncHVfcmVzX2NsZWFyZWQoKQ0KICAqICAg
ICAgICAgICAgICAgICAgICAgICAgIGFyZSBza2lwcGVkLg0KICAqIEBrX2pvYl9pZDogdHJhY2Ug
aWQNCiAgKg0KICAqLw0KLWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1f
YnVmZmVyX2VudGl0eSAqZW50aXR5LA0KLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0K
LQkJICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KLQkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAq
cmVzdiwNCi0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KLQkJICAgICAg
IGJvb2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KLQkJICAgICAgIHU2NCBrX2pvYl9pZCkNCitp
bnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0
eSAqZW50aXR5LA0KKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCisJCQkgICAgc3RydWN0
IGRtYV9yZXN2ICpyZXN2LA0KKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0K
KwkJCSAgICBib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1cywNCisJCQkgICAgdTY0IGtfam9iX2lk
KQ0KIHsNCiAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRtX2FkZXYoYm8t
PnRiby5iZGV2KTsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOw0KQEAgLTI2MzIs
NyArMjYyOSw3IEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVm
ZmVyX2VudGl0eSAqZW50aXR5LA0KIAkJCWdvdG8gZXJyb3I7DQogDQogCQlyID0gYW1kZ3B1X3R0
bV9maWxsX21lbShhZGV2LCBlbnRpdHksDQotCQkJCQlzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCBy
ZXN2LA0KKwkJCQkJMCwgdG8sIGN1cl9zaXplLCByZXN2LA0KIAkJCQkJJm5leHQsIHRydWUsIGtf
am9iX2lkKTsNCiAJCWlmIChyKQ0KIAkJCWdvdG8gZXJyb3I7DQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5oDQppbmRleCA0MzZhM2UwOWExNzguLmQ3YjE0ZDVjYWM3NyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQpAQCAtMTg3LDEzICsxODcs
MTIgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwN
CiAJCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQogCQkgICAgICAgc3RydWN0IGRtYV9m
ZW5jZSAqKmZlbmNlLA0KIAkJICAgICAgIGJvb2wgdm1fbmVlZHNfZmx1c2gsIHVpbnQzMl90IGNv
cHlfZmxhZ3MpOw0KLWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVm
ZmVyX2VudGl0eSAqZW50aXR5LA0KLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KLQkJ
ICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KLQkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVz
diwNCi0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KLQkJICAgICAgIGJv
b2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KLQkJICAgICAgIHU2NCBrX2pvYl9pZCk7DQoraW50
IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkg
KmVudGl0eSwNCisJCQkgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8sDQorCQkJICAgIHN0cnVjdCBk
bWFfcmVzdiAqcmVzdiwNCisJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCisJ
CQkgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQorCQkJICAgIHU2NCBrX2pvYl9pZCk7
DQogc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqYW1kZ3B1X3R0bV9uZXh0X2NsZWFy
X2VudGl0eShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldik7DQogDQogaW50IGFtZGdwdV90dG1f
YWxsb2NfZ2FydChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKTsNCi0tIA0KMi40My4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
