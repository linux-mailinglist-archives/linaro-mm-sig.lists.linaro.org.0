Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP9uLU6ZDWoMzwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:21:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA1E58C4E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:21:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBA7E40975
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 11:21:48 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010019.outbound.protection.outlook.com [40.93.198.19])
	by lists.linaro.org (Postfix) with ESMTPS id AAA183F7F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 11:21:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Sbwc6DT8;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.19 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GAECtCPEfMJ0Xh8bjb/i883oJUbcI+RnDO83wbgy49VJ/xuMA1/o31CPzlRD1jiV12ZQeBxBIC1JgW/155svdZx5fjagrnVDDgWFsI5imTzutNjOtI2ZPcX6mpaCy2jifxTp/uhtUwZ/sPX4ViByHd7TZrBaQ27SlakpYsqF3CDvsnjDM0A7yQckakyvD8GhJ5+WIEnexQY4daivTge+qVXpn3oQixSUXxadO3Tl95IAeOTJMJ8BktX4h93MeZ3yptDuYLoWZ+RyzBqTBinFbjTeXNLb4T70FlDFBLcogGQiyfGD9cEmeXy0FU3a4roTnNtQE9ME/R/kpqlgV61Ptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bMkdtj4/VjJmQfSS8pJtUJDtx2BMYRJ3Q2W42DaSjrQ=;
 b=Sgk1SEYqxO03S7ASdpeODXuXMY7Z9cUaD3ec/X3YoEe0m2sPg2WOyW+WRb6LAPRWvUauXcnReQ+0kPAKZSx4MLruALwa/saCX0+DQgJEP+s6kc6x2XHCNgf21EFSapdnK6hSINgr3Fh7DK3lPrNDYXiR2ngRzcUbtqliE15bZD8lPHV+uWAGRvU6NxHpYxCmUCkwwYMxun5cWaulGGMpa4/llLvfkJftY/nwHbdMj8f0rWV6qtQI2/TiVSYrzuFuc/fc8dn3zF0dFdGNJvY1GAeHxWEhuilzGP6Cjf0EThNYZcbR9HknUygHniIiBddDUEOUgQh+K1SQHEHxPs4BuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bMkdtj4/VjJmQfSS8pJtUJDtx2BMYRJ3Q2W42DaSjrQ=;
 b=Sbwc6DT8Brvq2BYgj2TZo4GuVbC9N7wFtywYNl9pSnDG6oYODElZKShMCSpWnSW8S/g3po7IRx5PTqh1SnUF4Pfwo55cosmq3df+YRspw9Qn+CZxHUi2jxmf5Twx6noLCLNYdS/p+2o1NEuA6NSA+77cko2qgGOEQu4fTJsLTvk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6493.namprd12.prod.outlook.com (2603:10b6:8:b6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 11:21:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Wed, 20 May 2026
 11:21:33 +0000
Message-ID: <1e94106a-f72e-447e-9885-2d2cc8f8e722@amd.com>
Date: Wed, 20 May 2026 13:21:26 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
 Xaver Hugl <xaver.hugl@kde.org>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
 <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
 <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
 <385a4d4f-fe22-41a7-8d4b-4dc6bc9930d3@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <385a4d4f-fe22-41a7-8d4b-4dc6bc9930d3@mailbox.org>
X-ClientProxiedBy: BL1PR13CA0081.namprd13.prod.outlook.com
 (2603:10b6:208:2b8::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6493:EE_
X-MS-Office365-Filtering-Correlation-Id: d440df65-d31e-4e0b-0dd3-08deb661f296
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|4143699003|22082099003|18002099003|56012099003|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: 
	ze466dad6Kfj9aK4hCsQjF2BIYDSqOtT7KzTRCYSJ6YtayLNJ2oHVjkljesBAKbGmhc2wcHBPO3QXbhrx3oEHgoddE8fhdhta6XpP4pKdan7YQUVAXPFvm4kzVkW0LClY7sKVcxN5sBAbaYdMdGxrruVi/ayTd1Jg2tHCrgECxtY/iVzVI1h7PDiTBz+rn0CMEqAFh8Zclrgg46aFWbYgQzIllBjgZh162ikncWEpskluykEyu6whLp/RaFY6YS61jMyrFBUN4ZufuPKg0hN6iT9nAzziharP14n62K5QE8HIsxYociOgoscKIX/Su5Wb83J0P5qCUmag4VMD5WpyrUI32Sw2bjJZR6mBjdkomPb6Z6nLT4Xu/iIpzS7YVkr/BrOqthj04A0nn8334CRljhzstFehEPn8c1j8dyCzaTzZ6Rg23mZmDaSWJAiq62FYeoIHGHn8/7sr/erQSpGQGb+kLZRQrTnPjEJaqCMWV0KsfBOHf6YhIuSOnzzhGY1dJGBzxhiuIL0MrCFvRptFb4g/Z/YQFdfV3eIlA5O+FUMPw58hpUqUok3rnHh4jiVCHHUNmgr4JwytbZoUusLE01jyCKN9xOIz6VUvIQPaJPhMECXrjMzStJ5P9i106RtH2hpss4bLxmdxuigftD6ouBxqiqwSDOu4osqu+Kz3y7Pn8LRaoW4wiV+Zuzbq60U
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(4143699003)(22082099003)(18002099003)(56012099003)(3023799007)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b2tDOFBTZDJaV3ptbXIxT2JiS3BSM0s0QnFPRlg0a1JpQVJGbFo4YWNhUTRS?=
 =?utf-8?B?SDI0bUJaZmZZb0FWcnB4b3hXaDkwTWpka3NMVW1jNzhXVDdBY01HWEtPa3Zs?=
 =?utf-8?B?Zkh4aHpKMXZvUzRna1AxMW1xOThRVjJidUdvOGdwODNuZnVyODkya2dMR2pX?=
 =?utf-8?B?b0JucWllbm9GbGFyT2RGT0lPNUZQV0dTUHI0d1JCT2FMV2x4OE5Raks4TlUv?=
 =?utf-8?B?NkJlWUZ0bnZnSVF5RGdZd2g2MnlNTFhoWnZhSlRLTjN3VVRQKzBrL3ZOTUU5?=
 =?utf-8?B?OFgwRjFkcVdzaWpiTGFDY1lVQ0ExMWlsVmxJYitab3VEYzk5TlBlM0tlRCtU?=
 =?utf-8?B?T24rcXlEcllaU0lKY1ptSncxVjFiZ1hQVWZTNjh6dFZNN1VsOFphTmxPcFpD?=
 =?utf-8?B?VGJKOXFFZkZiU25aT0VFZGRGZUNlSVZpeUpSLzljY3l3eG8xSElIbTIxN0FG?=
 =?utf-8?B?TWJRNmxiMkV5REJ2QnJmNmxpMzFWa3ZDai9mVHRWbjd3NmpvemMxR1dsSnp3?=
 =?utf-8?B?NURNK0R2UUdmclVFTHIybU40aTFDZ21RTTJGakhicGhHOEgxc0pZZnZXZ0lY?=
 =?utf-8?B?UDJSRGFLblBpYzEvLzdIZUVzTUFLWEJTazdPMm90NE9jaHFjakMxd1M2dHJh?=
 =?utf-8?B?OGpCUTMyKzQxQnYvODAxRzZjWURKNEpHNGNkRk9kQ2pPZ0svL0E0bTBEZ0gw?=
 =?utf-8?B?ZVhEQWFGNjRuZG9RNWNJc3RNeGtXdCtNaUxORW9XNy9ZcFJYRGpIenVDZXV2?=
 =?utf-8?B?dXVKMWl6NW55M285SGJUYnNXL2ttV0kwYWs4cGRtUC9FMHl2WmMzeFFSbURD?=
 =?utf-8?B?Y0RaVko4V1ZkdEZ4ODV5MGpDUGMzWENIVzA5WS9kWHUrZE9xR2dya2hMMXVr?=
 =?utf-8?B?cGJuNFhCdFFHNDB6WUZEdHdOaG9mUlNXV2lpUnA4bnBSYWp4TWMxZHhjZStX?=
 =?utf-8?B?YkRTZlRZbkxmRzg2djR3cVNuY3h3U0h0N0hwWngzT0lYai9YRC9sL2dsODNt?=
 =?utf-8?B?OFRscGhkeGhZVDdGbDNMSHYxcHlHRE5UdG5WK2Q1M1ZWeFA0eUtNTDMvd0RJ?=
 =?utf-8?B?TlloYk1XblhaT0t2N0daL2pJZXMzVThuMXIwV3laVEhSUXBqWFZ0YnRRdTB4?=
 =?utf-8?B?QjF3WHMzd1dtbmNnQXAwcVIwc21oc1JzNnZNSGp6VTZ6VDN4V1FIZ2hTUDZ0?=
 =?utf-8?B?eWM3QTFLNE03S0FUYWxkRUVudGRyUGlqK3hudHU1TDdUdlpnVDg0NlRTRlBC?=
 =?utf-8?B?cHFEalhFdUhoY252aGQ3aEFJZnFRNWJ2VmxiOHBJczVmeS9yMDhpdUQyYVJs?=
 =?utf-8?B?SkFCSmU1akJtZ3luZ24xSVB2bkZEeWhCaHppeGl2V0N2Sm5oNGNNb2FlZi8r?=
 =?utf-8?B?QnRuY2pVZnN0ZXdKVWliUm5YSTVqZ2dVWWtadndrdEQ0WUxoMWttN29aYW9X?=
 =?utf-8?B?dDRncXkzV3d1WVdndmVNc0VyWEZFWGxBL0h4bGIzZDUwYUhYbHNJNVlPWFA5?=
 =?utf-8?B?MkZvYkF1Z0tDOW5tM1VqbTU0QUJpOStZVVhtVDlqdGMySlBZWENjdk9xK1Y3?=
 =?utf-8?B?VVBOUGZWS1FwMjRQMlh3QjRVQmUzNkFKVHU0VW9ER3BTS0k4YzByQzhBdkM2?=
 =?utf-8?B?SkhOTmJ0VzU1V0lMQVBrMDVYNW5paEwvcmcvRDA2VXNUYVlhYnlxZDdkYlY5?=
 =?utf-8?B?a09qV0lRalVuaEF2d05lS1FWam04R3VZSXh5TGVEa2MxN3dENGlSSlZxSW52?=
 =?utf-8?B?SlVUSkk1S1J5MktBaERtbG5KMTNKci91eUY4eS9tbmZFNnJxamRpbnBkQWd0?=
 =?utf-8?B?NDFnVytDSUQ0RW8rZk1KNlJFa0NQVnozbnlhU2ZMeXN4Tmg2MHV3Vjhhdm5K?=
 =?utf-8?B?cGFBUWVhMkdySExVbUtibTYvRHQzdU9MeWkxbDJaTGRtbUZwR2VBZTVFUmor?=
 =?utf-8?B?Zm5nVWlkbjh0bmhnOU1zYmV5SFRiSURYWmVhSkQ2N0pNUDE2M1FNbG12MUdw?=
 =?utf-8?B?c3RkWGdNcVF2a2lUSXBadVppbGc3WGhWRnF0RDZhK2NPRnlDclZTc0dHbEZF?=
 =?utf-8?B?M05rWHB0SXBQYzBTOHBFQWUvTlA3Y2ZxNk5GM1IxU2xHaTlDTHg1Q3dUc0di?=
 =?utf-8?B?K1dwUHU4KzZ0Q2xLUkY2U0E2VEtkdXdFbFovd0huYnFlMkw4U0o5L2w2Q0RG?=
 =?utf-8?B?cFA1MnZzTDFsN0p0WUkvZlFUMmRMbW5ra0o1NUFjZXVnSkJHb0o3eE5DOHVP?=
 =?utf-8?B?bkFQeEozMWFQd3A5VFJKZzN4K2NtUldKOERDaG9JaGlkNlZjeGxRYzRBREZ6?=
 =?utf-8?Q?HuXbKv1W/n9G16YLQJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d440df65-d31e-4e0b-0dd3-08deb661f296
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 11:21:33.2919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lN47Jq8rGKFwoiS7EC2Y2yikhmGzK/Dhfb0305PJjzdhER7rAm8IQGsgmbqVk5QX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6493
X-Spamd-Bar: --
Message-ID-Hash: UQRKYRDHHW3ZFLBAHH5I6QJ5K3NK66N2
X-Message-ID-Hash: UQRKYRDHHW3ZFLBAHH5I6QJ5K3NK66N2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQRKYRDHHW3ZFLBAHH5I6QJ5K3NK66N2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 3CA1E58C4E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMC8yNiAxMDoxMywgTWljaGVsIETDpG56ZXIgd3JvdGU6DQo+IE9uIDUvMTkvMjYgMTg6
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA1LzE5LzI2IDE3OjMxLCBYYXZlciBI
dWdsIHdyb3RlOg0KPj4+IEFtIERpLiwgMTkuIE1haSAyMDI2IHVtIDE1OjI5IFVociBzY2hyaWVi
IENocmlzdGlhbiBLw7ZuaWcNCj4+PiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPjoNCj4+Pj4+
IDEuIFRoaXMgc2VyaWVzIG1ha2VzIHRoZSBhYmlsaXR5IHRvIG1hbmlwdWxhdGUgc3luY29ianMg
YXZhaWxhYmxlDQo+Pj4+PiBpbmRlcGVuZGVudGx5IG9mIGF0dGFjaGVkIGhhcmR3YXJlLg0KPj4+
Pj4gMi4gSXQgbWFrZXMgaXQgYXZhaWxhYmxlIHVuZGVyIGEgY29uc2lzdGVudCBwYXRoIC9kZXYv
c3luY29iai4NCj4+Pj4NCj4+Pj4gRXhhY3RseSB0aGF0IGlzIGEgYmlnIG5vLWdvLiBUaGlzIGhh
cyB0byBiZSB1bmRlciAvZGV2L2RyaS4NCj4+PiBGV0lXIHVkbWFidWYgaXMgYWxzbyB1bmRlciAv
ZGV2IGRpcmVjdGx5LCBidXQgSSBkb24ndCB0aGluayBhbnkNCj4+PiBjb21wb3NpdG9yIGRldmVs
b3BlciB3b3VsZCBjb21wbGFpbiBhYm91dCBhIGRpZmZlcmVudCBwYXRoLg0KPj4+IFdoYXQgYXJl
IHRoZSBydWxlcyBmb3IgdGhhdD8gQ291bGQgdGhpcyBzaW1wbHkgYmUgcHV0IGluIC9kZXYvZHJp
L3N5bmNvYmo/DQo+Pg0KPj4gVGhlIHN5bmNvYmogYXJlIGFjdHVhbGx5IHRoZSBEUk0gc3BlY2lm
aWMgd2F5IG9mIGRvaW5nIHRoaW5ncy4gVGhlIGdlbmVyYWwga2VybmVsIHdpZGUgd2F5IGlzIHRv
IHVzZSBzeW5jIGZpbGVzIChzZWUgZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jKS4NCj4+DQo+
PiBCdXQgdGhlcmUgaGFzIGFscmVhZHkgYmVlbiB0b25zIG9mIHByb2JsZW1zIHdpdGggdGhvc2Ug
c3luYyBmaWxlcy4gRS5nLiB0aGV5IGRvZXNuJ3Qgc3VwcG9ydCB5b3VyIHVzZSBjYXNlIGF0IGFs
bCBzaW5jZSB0aGV5IGRvbid0IGhhdmUgd2FpdCBiZWZvcmUgc3VibWl0IGJlaGF2aW9yLg0KPj4N
Cj4+IFNvIHRoZXJlIGFyZSBhbHJlYWR5IHdheXMgdG8gZG8gdGhpcywgYnV0IHRoZSBMaW51eCBr
ZXJuZWwgc28gZmFyIHRvbGQgZXZlcnlib2R5IHRoYXQgdGhpcyBpcyBmb3JiaWRkZW4uIFRoZSBE
Uk0gc3luY29iaiB3YWl0IGJlZm9yZSBzaWduYWwgZnVuY3Rpb25hbGl0eSBpcyBtdWNoIGJldHRl
ciwgYnV0IHRoZW4gYmFzaWNhbGx5IHRoZSBzZWNvbmQgdHJ5IHRvIGRvIHRoaXMuDQo+IA0KPiBJ
J20gbm90IHF1aXRlIHN1cmUgd2hhdCB5b3UncmUgZ2V0dGluZyBhdCBoZXJlLCBqdXN0IHRvIGJl
IGNsZWFyIHRob3VnaDoNCj4gDQo+IFdoaWxlIHRoZSBzeW5jb2JqIFdheWxhbmQgcHJvdG9jb2wg
ZXh0ZW5zaW9uIHN1cHBvcnRzIHdhaXQtYmVmb3JlLXN1Ym1pdCBiZWhhdmlvdXIgYXQgdGhlIFdh
eWxhbmQgcHJvdG9jb2wgbGV2ZWwsIGl0IGRvZXNuJ3QgbmVlZCBvciBjYXVzZSB3YWl0LWJlZm9y
ZS1zdWJtaXQgYmVoYXZpb3VyIGZvciBETUEgZmVuY2VzIGluIHRoZSBrZXJuZWwuIFRoZSB1c3Vh
bCBydWxlcyBhcHBseSB0byBmZW5jZXMgYXR0YWNoZWQgdG8gc3luY29iaiB0aW1lbGluZSBwb2lu
dHMuIFRoZSB3YWl0LWJlZm9yZS1zdWJtaXQgYmVoYXZpb3VyIGF0IHRoZSBXYXlsYW5kIHByb3Rv
Y29sIGxldmVsIGNvbWVzIGZyb20gYWxsb3dpbmcgc3VibWl0IGJlZm9yZSBhIGZlbmNlIGlzIGF0
dGFjaGVkIHRvIHRoZSBhY3F1aXJlIHRpbWVsaW5lIHBvaW50Lg0KDQpZZWFoIEkga25vdy4gSSdt
IG9uZSBvZiB0aGUgcGVvcGxlIHdobyBjYW1lIHVwIHdpdGggdGhlIGlkZWEgb2YgZG9pbmcgd2Fp
dCBiZWZvcmUgc2lnbmFsIHRoaXMgd2F5IGluIHRoZSBkcm1fc3luY29iai4NCg0KV2hhdCBJIHdh
bnRlZCB0byBzYXkgaXMgdGhhdCBhIGxvdCBvZiBwZW9wbGUgdXNlZCB0aGUgZG1hX2ZlbmNlIHRv
IGltcGxlbWVudCB3YWl0IGJlZm9yZSBzaWduYWwgYmVmb3JlIGFuZCBnb3QgYSBibG9vZHkgbm9z
ZSBmcm9tIHRoYXQuDQoNCj4gKEl0IHRvb2sgbWUgYSB3aGlsZSB0byByZWFsaXplIHRoaXMgZGlz
dGluY3Rpb24sIGJlZm9yZSB3aGljaCBJIG1pc3Rha2VubHkgdGhvdWdodCB0aGUga2VybmVsJ3Mg
RE1BIGZlbmNlIHJ1bGVzIHdvdWxkIHByb2hpYml0IHdhaXQtYmVmb3JlLXN1Ym1pdCBiZWhhdmlv
dXIgYXQgdGhlIFdheWxhbmQgcHJvdG9jb2wgbGV2ZWwgYXMgd2VsbCkNCg0KVGhpcyBpcyB3aGF0
IHN1cnByaXNlZCBtZS4NCg0KVGhlIGRybV9zeW5jb2JqIGltcGxlbWVudGF0aW9uIHNvbHZlZCB0
aGUgd2FpdCBiZWZvcmUgc2lnbmFsIGZvciB0aGUga2VybmVsLCBidXQgbXkgbGFzdCBmZWVkYmFj
ayB3YXMgdGhhdCB3ZSBiYXNpY2FsbHkganVzdCBtb3ZlZCB0aGUgaXNzdWUgdG8gdXNlcnNwYWNl
IGFuZCBXYXlsYW5kIGNvbXBvc2l0b3JzIHdvdWxkIGhhdmUgcXVpdGUgc29tZSBvdmVyaGVhZCB0
byBpbXBsZW1lbnQgaXQgY29ycmVjdGx5Lg0KDQpUaGF0IGNvbXBvc2l0b3JzIG5vdyB1c2UgZXZl
bnRmZCB0byBzaW1wbGlmeSB0aGF0IHdhcyBuZXdzIHRvIG1lIGJ1dCBtYWtlcyB0b3RhbGx5IHNl
bnNlIGluIGhpbmRzaWdodC4NCg0KQnV0IGFueXdheSwgd2UgbmVlZCB0byBzb21laG93IHNpbXBs
aWZ5IHRoZSBkcm1fc3luY29iaiAtPiBldmVudGZkIHVzYWdlIGluIHRoZSBjb21wb3NpdG9yLiBU
aGF0IHJlcXVpcmVtZW50IGlzIHBlcmZlY3RseSBqdXN0aWZpZWQgYW5kIGF2b2lkaW5nIGltcG9y
dGluZyB0aGUgZHJtX3N5bmNvYmogZmQgaW50byBhbnkgRFJNIGRyaXZlciBzaG91bGQgYWN0dWFs
bHkgYmUgcmVhbGx5IGVhc3kgdG8gaW1wbGVtZW50Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
