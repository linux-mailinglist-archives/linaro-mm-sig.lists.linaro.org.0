Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +VWaEjBKKWpXTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4F1668C93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=garyguo.net header.s=selector1 header.b=cHAwbYws;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=garyguo.net (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9ACA40A70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:27:42 +0000 (UTC)
Received: from CWXP265CU009.outbound.protection.outlook.com (mail-ukwestazon11021143.outbound.protection.outlook.com [52.101.100.143])
	by lists.linaro.org (Postfix) with ESMTPS id 05FFD3F75A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 12:17:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Trldd8WelcClyFjh6JnBoq9mvr/WT9KJqNGGVuHblrnlRLxp+mqRPx8q8pT0Zvqg7cuCesWVM8WuuwFcYjWHZzWJO/cnpkOjiRhORLUIXEJUucbUQspGNJYq3r4w4aLk8pbkjctMheKs0rFNr/z5okm88Wy+cIYfdf1W908lVFwvkLdMv/AnZUgYWxEGnU8W1zd0gEs40xeAduFb6lrCiZsG6CjwaXntQgWG8j9lsQJSByYBFTHrXWhaSM4Roa8V0EZt5SQ5J37uk8lD8PBo1ugG7zHHp77bo+Bq2o58PZR03Ii0xFXf0L1HyzBqMYzsLsotA57FY6Iqzcp9y4zDkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tsyKPgxgXA0dhtIM9njK4DvRxpCfeLRVNtEOsYwfnns=;
 b=fMYs9bvC9bmly0UCUUat1ki3h2RBePTksceAEnrb5v7Z8wfwDC8jwfsqkl9YnKFTMqBulyXTSeHtjKtWqSLazP4qax4VFwWJ5WLcBjUEBv8cVADwMyNVdjYa+TH1u11FQHj343yucEvThjVmKaE5UAMJg1I0V6rQXDnJHmPzNbvYBOreslozxNkDDTg+RscxYq4pW5RgN+4M6aQXdAqdgWPRfkP7dTFp40Q1aAEtyVMlEZGo1PnBV7qEvGa82WwjYdVSI2M/SMhnmk+8o4E/0E85bE3+VzPeSFktgq4eNBBz4cdaJMazC5N3HPLQ/nMj+Ec1qN3HWU07OH4h/fUr8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsyKPgxgXA0dhtIM9njK4DvRxpCfeLRVNtEOsYwfnns=;
 b=cHAwbYwshsMV7baLbBnvq23BOCzBgcolgCf03GzxTrUQp9fWropVeU5ecpo3+J6hT8XTM8srJmlODvRMeESx8omxGHH2j5XvOjr/x49HFkNqcYbnwdHFdklSF1f0oVFDZe80ZgAbDCNlibJ9cfDQEJU2jtmwCe9TnxvwRe9OTuw=
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LO0P265MB6776.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:30f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Sun, 7 Jun 2026
 12:17:33 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.21.0092.011; Sun, 7 Jun 2026
 12:17:33 +0000
Date: Sun, 07 Jun 2026 13:17:32 +0100
Message-Id: <DJ2T75A5H6Y2.ISIBOQVMAO4I@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "Alexandre Courbot" <acourbot@nvidia.com>, "Lyude Paul"
 <lyude@redhat.com>, "Miguel Ojeda" <ojeda@kernel.org>
X-Mailer: aerc 0.21.0
References: <20260604192740.659240-1-lyude@redhat.com>
 <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
In-Reply-To: <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
X-ClientProxiedBy: LO4P265CA0144.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::17) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LO0P265MB6776:EE_
X-MS-Office365-Filtering-Correlation-Id: 75a42c06-4ba3-4701-46b7-08dec48ec0a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|10070799003|1800799024|7416014|376014|4143699003|3023799007|56012099006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	TTF3F2sXuVvUkHkGCwWTjakltJxSFHoOTpvJ5Lwsp+ipR50gcC+vD0oTifxwWVayGqOhzj9A0MRRyxrAehRF04IO/FJfNpBHjUkqBoPvb8p01hwxL1Um5R1q00eS62MG0V20I5uVeCZR0FE640625v0IMIff8KrA5YA0dpbfle+XgMEwq5NSWXfvSsPl0947wp6O+AX9krpzDWpy9CQo2GkLab1B6xOUDNk2Nf5TVc6pF6KN2kut7l0G3fdkB50rDwN98rcIhdmgyhY/aJENA8HRFBcsXeMHyAEORJSuLCS8C7iQyvltBjs6a+OLsomcxMLCpgtgWc+ropRbJ4QcQS5wKZuBQMIZrg6SXlM7ctp6WuDjFIzS1gbSHI88/3+6GJvSnIb5YJPdXb33atCyPNcrAOY4UgQ/60n1WPLqTZc+IF5UU2yYnb5IMBOCmUggb2sfi5XCja4IbmjMOA3QsJdotgMRWfA9Pt3sLatyLv1pC1l3NisW9PraRgsA6spqsY8/vD/IwdiscZPFZF8f4e/CsYIzmgwJLGMKeZpXEupBZmwsEWRJ0Hd5YMinvTVqGdIjFv83591Dw7urTe5RetdID7YemeRoL6hYNsQzTtc7EhLlQsx6lkQaUDSA+O8N/fAlgS+0pqEIOz/wJg0CYw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(7416014)(376014)(4143699003)(3023799007)(56012099006)(6133799003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?akNVR3RsaG8zUDNhMFc3N3RkUHVCRTc0SVlOdjVJNjVIUWk4cjhxdzlmTU9K?=
 =?utf-8?B?ZGp6WkExL3pXWkFHZTU1blQ0aUFGTGV4cUFIcWNUZHRlVEVyelQ2TFVBdjUz?=
 =?utf-8?B?b2kzci85OEZQczJ0VmlMLzd3bGlRSGxNOUs3U1JtTWJIV3lHcERVTmNIZDBi?=
 =?utf-8?B?cllhczlacTc4dnJPL0xLOGxwbTc0bDd1bC80K1VZTkovN1N6L2wvNm8ydnFn?=
 =?utf-8?B?bGN0SVkrcDJaZjBTVCtnYTBEaTdDb3ZwZHVUaDhHNEw1TW1wT0lOZTM0ZWVM?=
 =?utf-8?B?ZjdENzFPN0huZE94THkrbTMyRXJmclpweEx0NHpwNHNDRHpyaWl4OHA4Ymx0?=
 =?utf-8?B?ZDN2M0Z1Vk5xaE1mcU5RUkdBRUhzYUtYcDkrbEZjNGNIRzBJSUpERnVQbHdW?=
 =?utf-8?B?bEVzM2kzRTluWDFpaUZad1Ria05TQk9IT2k2Nm5pSzFneXZuRTFMN3VxL3pi?=
 =?utf-8?B?U3hqeTZDdVBZVW9ieU9JcDRPOThKazFpWEdlaVpVb2NZejJWV0RpVUZJMVpq?=
 =?utf-8?B?K1BaeU1NN0JueXlyMUpPNXJVMkR6TDh5TXdvR0JBanViRkZCQzlJRU5Ed3Zn?=
 =?utf-8?B?V0hhVzRvRGlBS2JPVXVhaUpBbmRNRUoxRFJwTEcyTDFMbmM5eDl2SFBXa0M1?=
 =?utf-8?B?QSt2YjltMy9XRmxQSDFJUXEzYjRaSUxKaTEvRTQ5aDVpZXI4R2tNVlRIVTlx?=
 =?utf-8?B?anlNSnRBRWZmcDZtMG5haEYxdnRKWHhtWVlWOWVyVy84c2Vrc2ZUZWR0TXZu?=
 =?utf-8?B?bCtyVnZXMEJNUy8xM3k4dHp4Lzkzdk1hbC9Xb2JwZUJOaFFVU1VOOEFzTEVr?=
 =?utf-8?B?ZVoyNWlwTlhMNnBHR2ROMmZqYXRGTm5YbkNwY3Z2N1MrNnVpN1VSOVpveXhJ?=
 =?utf-8?B?N2NHdmZoaXFSeW90dDVTSnB6NG9iSmtWZkxOUjF5RnV4REw0ME9FV042SVFP?=
 =?utf-8?B?M0cxVG9IdzY1aGp0N0ZFd3dSdVZGa3h0ZnU1eTZvZXdXUWRabTNaMWR3Y0lF?=
 =?utf-8?B?QnNSV0FTa3BBYW5iV1ZLVVJVQU11TXFFQ3d1blRRa0N5ZXAzRmNBNlplc0xp?=
 =?utf-8?B?T0RRREpYWFU5UnJsSXJ4eDA1UWdRZHIrVDErUXpOeHlTTXJEd21xallmbk5a?=
 =?utf-8?B?UUNJTFF1U3RpQ3NNQVE1VWFhUWJ6NHJXWStEczYvWXNDUWhJNHpiOEgzc3du?=
 =?utf-8?B?TERXcHNlMG1WYVNhSmUxZmRUTTlGcDZUOW82K0VScVRvK1hEbVFSakRDaHEw?=
 =?utf-8?B?cEp2Vitydy9BUFlTNzFmZVVDVzBLUzUrRGo3SEFZVTV3Zy9CQXV2K1JFNU5I?=
 =?utf-8?B?cWdVWk9IZkg5WnpLNklWTkJMR1ZCT3pLdFBqYzJvblJoS1NIMkhiNkUybWZG?=
 =?utf-8?B?RGpyZ3lBRHhOSlVyNkh0ajFBZ0UxaEF5dTNVK1N1QVBvZlROMGFoOStZNllQ?=
 =?utf-8?B?TTlVQUZtVjBmcjM3VHpLdE41MDVKMmczUGloaG43WUlvVDNpSnVxVEJ0NHJT?=
 =?utf-8?B?OGVTZzhncVVlSzg0ZUR6bmp5T2VWWDdhKzVkTHZKTzFEbE1Eb1doVUJyWVgr?=
 =?utf-8?B?RGxqMHhlUGZLcEY4NzBFdmRiOU43TytmdlZ6VTdNamhaZmdkcnAwbmJ4VWJj?=
 =?utf-8?B?eFllVG44K1N4SjluZnV1bGRndkkvVjY2TTk4SkNjWmpnQUo2UkVYQjVoc1ZX?=
 =?utf-8?B?cmI4dk1pL1I3L3cyU3FaUGVYWi9qRGdvNUlRYVFES20zRW9XYWFCak1zb1o2?=
 =?utf-8?B?T1RqRVYzRWlLNlJrcitkQkQ5YVlyMFg0aVhMcmFGMjdsS1hVeDJiNkowYkM4?=
 =?utf-8?B?QWV0WUN6dkdXYVhOeGlxT1NyaGpFL05WQVVZc3ZZTnFuNkxEdTgvN2QxOVZS?=
 =?utf-8?B?S1J2Zm0vSFkwRUx2R09wOHU1Y1gwM1d2d3JxTVcrRGhyaldaYjE4akpGL3hn?=
 =?utf-8?B?a3N6Ly9BTU1LS1JKTUVjUFdGSzlVS21nT014Y014OWlGV3dUKzFZNWtMaklT?=
 =?utf-8?B?ZFlITFdaTml3M3lvNG1YUFJpZU16VkVKMXRGQkx0ampkYjlhTGJmWWgvT3ps?=
 =?utf-8?B?dUczd0ErSFJOOWhBQ2ZZR0hldjRCeU43SlBKTHFmMlVrT3VqQTVocjdlN1Bz?=
 =?utf-8?B?Q2FXSUR1dWQrSkVPQzhQSjZ3MFFKeWFFeUtTYUpBRWh2OGYvcmoycHNUaEty?=
 =?utf-8?B?STg1eXNpTlltaDZUb29ySWxJZGw5bEc5ck5RdUlWTXBWWmlNU0xEMnQ3OEhO?=
 =?utf-8?B?TytFUFhtYkV0bEUvNkVFN1NmRlV6ek5uSXZRS2RzVHpXVVhOTnBIQzZ1S1Vy?=
 =?utf-8?B?eW91Nm1oVzFoTXNuQ3FpMm93aDZST2dsb0hqc2JneXh4bG85SzhVdz09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a42c06-4ba3-4701-46b7-08dec48ec0a6
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2026 12:17:33.0642
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v76kazmi6Q0UIsuFF/tbOb3f8YQY9A8Fw4lj+XBqLpmsCCqD1UN1LN53S2BxTju4ptWSoYiPLl3A5hp3pyttGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB6776
X-Spamd-Bar: -----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EKSWVL2HNXOXSUE2LRCAUIK6TLJB6TLU
X-Message-ID-Hash: EKSWVL2HNXOXSUE2LRCAUIK6TLJB6TLU
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 0/4] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EKSWVL2HNXOXSUE2LRCAUIK6TLJB6TLU/>
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
	FORGED_RECIPIENTS(0.00)[m:acourbot@nvidia.com,m:lyude@redhat.com,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,garyguo.net,amd.com,lists.linux.dev,linux.intel.com,google.com,ffwll.ch,linaro.org,kernel.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC4F1668C93

On Sun Jun 7, 2026 at 3:07 AM BST, Alexandre Courbot wrote:
> On Fri Jun 5, 2026 at 4:24 AM JST, Lyude Paul wrote:
>> Most of this patch series has already been pushed upstream, this is just
>> the second half of the patch series that has not been pushed yet + some
>> additional changes which were required to implement changes requested by
>> the mailing list. This patch series is originally from Asahi, previously
>> posted by Daniel Almeida.
>>
>> The previous version of the patch series can be found here:
>>
>> 	https://patchwork.freedesktop.org/series/164580/
>>
>> Branch with patches applied available here:
>>
>> 	https://gitlab.freedesktop.org/lyudess/linux/-/commits/rust/gem-shmem
>>
>> This patch series applies on top of drm-rust-next
>>
>> Patch-series wide changes since V15:
>> * Fix some major rebasing errors I somehow didn't notice :(
>> * Drop the dependency on LazyInit, use the trick that Alice suggested
>>   instead.
>> * Fix dependency ordering so that Tyr can get the vmap stuff first
>>   without the other bits.
>> Patch-series wide changes since V16:
>> * Fix ordering one more time (SetOnce::reset() doesn't need to come
>>   before adding vmap functions)
>> * Rebase against the latest DeviceContext changes from me that got
>>   pushed.
>>
>
> Not a problem of this series, but when trying to build it I initially
> got these warnings/errors:
>
> CLIPPY L rust/kernel.o
> warning: gendwarfksyms: symbol_print_versions: no information for symbol _RNvMs1_NtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtCsbuTvttuFvbr_6kernel6devres6DevresINtNtNtNtB18_3drm3gem5shmem10SGTableMapNtNtB1K_5tests11KunitObjectNtNtB1O_6device6UninitEEE16assume_init_dropB18_

IMO we really shouldn't use Clippy to generate code. We spent too much effort in
fixing codegen issues that are only present when driven by clippy.

We should just run a check phase with clippy to get the lints only, and then use
rustc to generate actual code.

Best,
Gary

> ...
> .vmlinux.export.c:8577:500: warning: null character ignored [-Wnull-character]
>  8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
>       |      ^
> .vmlinux.export.c:8577:501: warning: null character ignored [-Wnull-character]
>  8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
>       |      ^
> .vmlinux.export.c:8577:502: warning: null character ignored [-Wnull-character]
>  8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
>       |      ^
> .vmlinux.export.c:8577:503: warning: null character ignored [-Wnull-character]
>  8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
>       |      ^
> ...
> .vmlinux.export.c:24529:2: error: embedding a #include directive within macro arguments is not supported
>  24529 | #include <linux/module.h>
>        |  ^
> .vmlinux.export.c:8577:1: note: expansion of macro 'KSYMTAB_FUNC' requested here
>  8577 | KSYMTAB_FUNC(_RINvXsi_NtNtCsbuTvttuFvbr_6kernel4sync3arcINtB6_9UniqueArcINtNtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninit11MaybeUninitIN...
>       | ^
> .vmlinux.export.c:8577:1: error: unterminated function-like macro invocation
>  8577 | KSYMTAB_FUNC(_RINvXsi_NtNtCsbuTvttuFvbr_6kernel4sync3arcINtB6_9UniqueArcINtNtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninit11MaybeUninitIN...
>       | ^
> ../include/linux/export-internal.h:62:9: note: macro 'KSYMTAB_FUNC' defined here
>    62 | #define KSYMTAB_FUNC(name, ns)  __KSYMTAB(name, KSYM_FUNC(name), ns)
>       |         ^
>
> This is fixed by [1]. Maybe we should merge that one patch separately
> and before the rest? I seem to be seeing these long symbol problems more
> often recently.
>
> [1] https://lore.kernel.org/all/20260605-nova-exports-v4-1-e948c287407c@nvidia.com/


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
