Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ADTpKjpKKWpiTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4697F668C9E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=garyguo.net header.s=selector1 header.b=epmevpzY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=garyguo.net (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6649B40A70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:27:53 +0000 (UTC)
Received: from CWXP265CU008.outbound.protection.outlook.com (mail-ukwestazon11020079.outbound.protection.outlook.com [52.101.195.79])
	by lists.linaro.org (Postfix) with ESMTPS id 0F63A3F7E5
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 12:22:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oYFEC+B9OhnqSo2jVWqR6GX6FEs/SgC29AAP/ZfVBlnpWOcoe6qqwvv5e4imEnNEJz5zAGn6B/fAemwWxJ82UzQ/OGB/MeIY8UzFh4qYwbPTUUtUZIagwBOVJ300dlThzrgh5APbZlcBmSr6LQgWn4kFfBgmEvpbFYraVydB2WSJRCMAHoEDMdS3HDbKOVMDyuLhkzLdYN9MI09isKkMyo5eEbAv0m850algVeaoDlDA1/BqCbzmm8dDqbRdm2mYFPHEag1yitarECy2yCAtFXxpoiE/mzPbnqZAPBbp7bDPrgGIFkKTbb5bPcVOgSN6ZSGuiTTkK4o1CUGelZj6Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=78E4gQ7qrs8hzbAkU2OpdZKEdCn1qoTlX9DDimD9Ao0=;
 b=tXX1MBFWX3oKh5oSPlj1CrfGwvGUSouXM4aUKRexMWo5VSwRjtdyKKP6lGDcSzJzDnxaxc8qLMXgox/L9ULb8VahnfdFyTl5FqUx6RH1lAZrI0ja74/Cxv9FKn0WmVtF45uy/ewJMQY/2JN+9+F13BBQmFNayJRBdSD3dwEHrV0HlCJaruakzfitVQW23H12tfxkTpe2AYXLYKvyAxQYBzburL40XyVqXbCfjpq4cXQTwIsa/mmyKP7A2wjxqbwjbfkdy+P/TwxGIyCiGVYHxTt3UblIfRRa31h5D7uIk/mo3LKGLWq2aepwvoHvjUuQ24RD3N6UsXZ338go54SUXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=78E4gQ7qrs8hzbAkU2OpdZKEdCn1qoTlX9DDimD9Ao0=;
 b=epmevpzYkcVmFLZAwmSr+W9qSuoc+raDeJpp5lAW4pbi1p1JTa0QnWZeA4W01PjjZEEhhrETFvznkPpIzHsozcoQWtBRvKXz+fsEqO+GyHDw2ACzFEGAMzW7tS5HiBjW6vCoYRPWVtirnoOfouLBpk7AdLzddJ5TH0vIHkrQbbM=
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LO2P265MB3214.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:164::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Sun, 7 Jun 2026
 12:22:46 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.21.0092.011; Sun, 7 Jun 2026
 12:22:46 +0000
Date: Sun, 07 Jun 2026 13:22:45 +0100
Message-Id: <DJ2TB5AX540T.311A690IK8F9B@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "Lyude Paul" <lyude@redhat.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, <nouveau@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260604192740.659240-1-lyude@redhat.com>
 <20260604192740.659240-2-lyude@redhat.com>
In-Reply-To: <20260604192740.659240-2-lyude@redhat.com>
X-ClientProxiedBy: LO4P265CA0052.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::15) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LO2P265MB3214:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b05458c-85b5-4088-cbfa-08dec48f7b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|366016|7416014|376014|22082099003|18002099003|6133799003|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: 
	lML8zKid2mOslGow83K+2ILiFeIQ4jkyQwu6vsLK9RZavPMXpJ+K+FpoAz4UmrWvTQzlBjb5CuQ4TKkga2YdW7UemixyofUdTMv26Lr9WFNtMra16j7XxrbOSPY/VX9aOzZJAR0cu/LUaSv4blNZxSQo2HyMphQ1/Hx3aNqSKNQ5oniPrlRMNBH68zvElHMdKFX3HuW82g0ewd5eXQsLIethuT2duRuAKA/k5Y9Aq/Iu7vmQ4EBsD9KY7WSh/Bl69lqSJxq/7x5vsHF+Ihhz5bDlfxPwyIyOE192GlC6kk9l9Cu4CZIN89DGLQdOmPzGuMovuRlZd7y8qAExx8LkCl3lFCUdzhLTI3xdXHWoTZExl2sna8/mLf+D6E5/BR5OBO3CeRiCE21B11ggLZngNKelO35/CdJjMXhnxPF7ea9B7MI909RM/nA1Q79o+rBBcxW0oRn6nfJfg8AXRUA6Rz/Fp2e5Ved5/yQjNyCCBeVOxPY0kdhD1Ewy+pUYCKJU6nmePbNYwyYccE9EjbQSaVbaEIi8n6KBtQnosCNmaHFGMD7Hy30cKA0IQOtUXKUD2iekiX7zWGGEUE12o2BQpp1Dfd9Vh2M1rssk2b+6ZYYv4VIf6T+/OzkgNx55N7Q1NxJEi6URjhj8KSQqZFoSkiykwgXzdG1sldAMMh8RbLJbO8GIo3fXtMKMD+VqoP0F
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(7416014)(376014)(22082099003)(18002099003)(6133799003)(4143699003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2hNeGJuRHFIRlFTV2VLbUhwVU12RUJXbDFzY2lvWXB1dmkxNlFIV1hJOEtr?=
 =?utf-8?B?aEJpVlA2dnNhRU15eE9LRlhBQXc0enhvR3RTdGxFVVZCc3g4T2kwdjZjYjhE?=
 =?utf-8?B?bjEyZE5MemZ2UndDKzRDZVNmRzU5K3lGS2xnTFVLV29xYUphRXpNUzd5bytT?=
 =?utf-8?B?ZW14cWg0M0VSQ2hiSDVpYzFNcG82S2paMVVZWndOUFZiNis0dXdVQTRhQ0JC?=
 =?utf-8?B?Z0RlaDQya1M0MGVGSzRJZjA0TE4zRStIY1BvSTcxRXBrQyt2TUpIalBlbmhy?=
 =?utf-8?B?ZjU3aGdBTUx0cG1tdmN0RzhnaVc4eW5yNkhqc3RhTTBzVEpKYUpuNzF0Nit0?=
 =?utf-8?B?d3hlS3RNN2VJUEhubE5CT2w5SHJZNzREQlBvZzViNExGanpUa2VwTk5HN1o0?=
 =?utf-8?B?SlduR2tEeDlEaWo1K0YzaVhEL2F4U0R4RmtXU0xJbHZ6N0xrNTlLWlREcExq?=
 =?utf-8?B?SXhDdm5JU2hBTURONWpxZDBhWkhDOGFZVUdkMEk0TTMrSERsYjR0WmI0UlNh?=
 =?utf-8?B?R2x3WE0xZldBbnR2alZHdHJsa3NZOTVIdDNYWjVDNUhIZk5VNkVhUEFSZWxK?=
 =?utf-8?B?VHVHWklVVXZuRlZmSE1BZzNXczhkMTRISEhMcHZ2ZFlZMnZ4RmJ2dkZLQjdR?=
 =?utf-8?B?K2FhT2xVZVNzZ1ZUVWxZaC8rdHRkZHFiYUk4L3FJWGUxa2gwaGFUTFhsSWlw?=
 =?utf-8?B?UnB1d01GcDY0OHNLTWc0cEdRQjUvci9YQUdPY29ZTXNDKzZ6RktOTXNncXFN?=
 =?utf-8?B?OTEyeCtuTVRJYUJQMFV3T01VY3VON3RwK2QrTGFoVFJuRDBuanJPOEtUblhw?=
 =?utf-8?B?R1pjcHRwbFJBZFVHWjZ2dFl0bWtjaWZjSzE4aWZJV3h0T1hOTWVTaFhaYVVY?=
 =?utf-8?B?VTVnYklhNFBIOEV3UFdhd1hZOCtDaUJlQjZuZnArS3JxZlhsRHBuUmlxeXBx?=
 =?utf-8?B?KzVtMFEwcGcyK2hlY3QxRDdwalpycU5XdUxLTkRtLzcweWQvTTYvcWpBZ2hm?=
 =?utf-8?B?ZzVFQ3J5SFVHQVBocU9Nc0Q4K2dNYkN5QVI0a1NxakhmbU5OR3JWNlJGVGJk?=
 =?utf-8?B?Y2VjU1B5dDFUc0FYMmJmVXAyUWlHbFVtV01SNHNOVzZHM0VGZkVnSW1QSEd4?=
 =?utf-8?B?MmNlMUUxWDQ0OGU0d0F2WEtYaVNDTGphZjhQWkEzNWY2L2JvNXEvdXZMNmdz?=
 =?utf-8?B?RzVMditpUFJUSW5yZEU3NFlsWlZvQnpRVWtvaWJFVjd2TldUekpVTTF3b28r?=
 =?utf-8?B?YU5xeFYwMnBMV0IvamVyNS9WZDI3QVdnbWVLRE1BY0k2b3FSU0Yyc2dCbTN1?=
 =?utf-8?B?dGR1SmVhQlZrMTk5ZTNxc2tGU2x1aTNDWkFjQkcwSjJrekMzMysxam4wRXdi?=
 =?utf-8?B?QkZDK1dKblF4emhSMDZvdm50cDUrL0wzZ0JmUnh3REY3UzhYOWlGRWp4M2lx?=
 =?utf-8?B?Q2c3ZzN6SVlza3E0NjBaRklidDdvWmo3cG8vUGwxRmVldkp0ejdRaFJPQkdr?=
 =?utf-8?B?R2QzbktTeTlDNkxkanZrcFc5dVBmZ2FxeDBXOVprTW8rRW9JbDBCRWR4YjFq?=
 =?utf-8?B?Z3Z6aXhMR3pGdk9odFlkTzNqandwWjNWVEtzSWl2TFRlZWpobUFwbUxzSFlt?=
 =?utf-8?B?VVc1d2xhNllGb0lySTlBODhZM0RONDV1elNFYnVGMHZIN3doU0I2M3dnRDhC?=
 =?utf-8?B?ek1MYmhQakMzaFZNOFBBZ0VWWUE0azNoQlZTRURoMk9TTnFMV0VnVFc4ZHFG?=
 =?utf-8?B?QnR2YkFyY3RPQlFIcVVUbEhteDJMUmVpQXZKSDZxQ1FMdlFkZjlEUjFxdGY4?=
 =?utf-8?B?aklPSkhyNXg2NE9ySTJ5akVSUER2Z0xDNlFMWFpadmhyNjR1TS9KUXdvZjdh?=
 =?utf-8?B?RUZrUEl0NnFFdkNmblpuV1d3NnR5Tk40Um5DVFVZRWNoc1dPR01ubnU4QVpn?=
 =?utf-8?B?azBZODMwT255SHA0Sm9FSTJJWTVoWWRmcjNMT2hYYTRZVE1JbVVMTVlndzNR?=
 =?utf-8?B?Q3h5Q3FtY0x3TmZtS1h0cklvNmkvcks4U3dycCttbXpvcW9FVE9sWG5GQ2VF?=
 =?utf-8?B?VTBteUkzTVVrd1lFWjdWK0ZjcUVCT3Y2Nm9semhuSmZ0Nm01bzRYbWcwTi9h?=
 =?utf-8?B?R2R4OWZYR3JJeEVnT015VjJhRm01RFk4WEFOM0Y0R2pIZ2dnQnU4OHk4YVVG?=
 =?utf-8?B?THZpdWwvSGNUZmppQnRJZFVFMnV4dlBHaXlWSWtNTUlYYVVEQXZkcFRGTGtN?=
 =?utf-8?B?Nlh0K2hvMEdYcjN2RDhXcDYzdmNZTVlEWFZMWHJXNUZjVlFydXB0dmovRWpV?=
 =?utf-8?B?ZnpKT3RRVndLUy9yU2RWelBxd2xxYkJiYmd2eDZaSm9tQ2hUcGFTZz09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b05458c-85b5-4088-cbfa-08dec48f7b80
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2026 12:22:46.5368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9vQdad7xgI6MgWjxkKT/wVzGY280WA6yyCt589qnNtLi9AIZqa9yAeZ+7GkDFOMxsVnbDW/jOls5tPg4qIVzqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P265MB3214
X-Spamd-Bar: ----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GKYNMHMYTJIXVLOKJWG4ANE4OT62TVLB
X-Message-ID-Hash: GKYNMHMYTJIXVLOKJWG4ANE4OT62TVLB
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 1/4] rust: drm: gem: shmem: Add DmaResvGuard helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKYNMHMYTJIXVLOKJWG4ANE4OT62TVLB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[71];
	R_DKIM_REJECT(1.00)[garyguo.net:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[garyguo.net : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,vger.kernel.org,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	DKIM_TRACE(0.00)[garyguo.net:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,nvidia.com:email,linaro.org:email,garyguo.net:mid,garyguo.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4697F668C9E

On Thu Jun 4, 2026 at 8:24 PM BST, Lyude Paul wrote:
> Just a temporary holdover to make locking/unlocking the dma_resv lock much
> easier.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Co-authored-by: Alexandre Courbot <acourbot@nvidia.com>
> Signed-off-by: Alexandre Courbot <acourbot@nvidia.com>
>
> ---
> V17:
> * Fix format of commit message title
>
>  rust/kernel/drm/gem/shmem.rs | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
>
> diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
> index 084b798ce795b..650c34dd8b7a4 100644
> --- a/rust/kernel/drm/gem/shmem.rs
> +++ b/rust/kernel/drm/gem/shmem.rs
> @@ -30,7 +30,10 @@
>          Deref,
>          DerefMut, //
>      },
> -    ptr::NonNull, //
> +    ptr::{
> +        self,
> +        NonNull, //
> +    },
>  };
>  use gem::{
>      BaseObjectPrivate,
> @@ -244,3 +247,29 @@ impl<T: DriverObject, C: DeviceContext> driver::AllocImpl for Object<T, C> {
>          dumb_map_offset: None,
>      };
>  }
> +
> +/// Private helper-type for holding the `dma_resv` object for a GEM shmem object.
> +///
> +/// When this is dropped, the `dma_resv` lock is dropped as well.
> +///
> +// TODO: This should be replace with a WwMutex equivalent once we have such bindings in the kernel.
> +struct DmaResvGuard<'a, T: DriverObject, C: DeviceContext = Registered>(&'a Object<T, C>);
> +
> +impl<'a, T: DriverObject, C: DeviceContext> DmaResvGuard<'a, T, C> {
> +    #[inline(always)]

Why `always` here?

Best,
Gary

> +    #[expect(unused)]
> +    fn new(obj: &'a Object<T, C>) -> Self {
> +        // SAFETY: This lock is initialized throughout the lifetime of `object`.
> +        unsafe { bindings::dma_resv_lock(obj.raw_dma_resv(), ptr::null_mut()) };
> +
> +        Self(obj)
> +    }
> +}
> +
> +impl<'a, T: DriverObject, C: DeviceContext> Drop for DmaResvGuard<'a, T, C> {
> +    #[inline(always)]
> +    fn drop(&mut self) {
> +        // SAFETY: We are releasing the lock grabbed during the creation of this object.
> +        unsafe { bindings::dma_resv_unlock(self.0.raw_dma_resv()) };
> +    }
> +}


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
