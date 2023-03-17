Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9BF6BE402
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 09:41:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ECF53F4A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 08:41:20 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2075.outbound.protection.outlook.com [40.107.101.75])
	by lists.linaro.org (Postfix) with ESMTPS id 76FB53E975
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:41:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=P2erWaRK;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.75 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gS0z08DCSTBbabB+n732/gvEZlvl9E8eZPmbTWLpVZKP9w46EgyYkpeQX+OeJMv2/r8Q5uhukMUWOlX1KJ/iNGskFH/nrg4HUr7jQTTtVrO6/+jLf5aPzv5HJhd65kXK4uelaG0fYMk+doqcs09Oxtn7PgkYzuw46hur2TfO14OBX7xJmSotB5iqnP7GSlzNrSliK4ljIaRIBRBABE+jleDPcD1X0GNol7/MFOz9jFiAVwoE80Ljq3xeywWurzIw/mAIZnzCltAiDpH5A20wquxA+QwXY51XirzD3Hpx0XYrE15AOI9cEHt4xPNBsIb/D3ppOFV9wUnfYJzixb37Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p9sczkb/yl8HH2CtHvR6g5bT18OAJjP3EB479yPVeVo=;
 b=e+IuuhWBwz98UIFGtdtmEMA7FDryCnI0sJGWqBsexZJRe9dIu0h/PnipATYQSijvKUVCOx3I7+2MpBmGdgfU5QnQMmYrZR1cNQ/u26HZTGw3cAYEgTpK9WLp09qB+tlASK+Jic06cRAgzJyOBcODRxKcV2BgrwRTF2ah8yZEhGyxcsGCTJ7uLYZaJapbPZQsN8xQJkhWfUu0Zw8fUNwkI5tC+yWePeOKgvHAdX9hUEvZYnupjKcXqk0TTUoMaHV5bU/Ahg6VQhD/9wddCnhp41rVYl5qm8cS9jeE0o7v1TAQ/fbtnFd95qtT9iKmZEtzUcKEJa2UdZB7kues7luEbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p9sczkb/yl8HH2CtHvR6g5bT18OAJjP3EB479yPVeVo=;
 b=P2erWaRKubVDt9Dm+7K26P0R5/6/lH6FxjWlDO3LSCyxKPqjoHzBuOYthLm0fUcyhMUgx6sIGl2Btyivf7gVpydVzk02njeMmCjVwbKMJaEVZH7bkIL4sBwZpXubyTdMqK6zF+JiGdInQRW0smT2tZjiGxEF6fnmfEHPhtyYd4U=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN7PR12MB6929.namprd12.prod.outlook.com (2603:10b6:806:263::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Fri, 17 Mar
 2023 08:40:56 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.024; Fri, 17 Mar 2023
 08:40:56 +0000
Message-ID: <30f75b09-fdc6-bb3c-0785-f7b0f3183192@amd.com>
Date: Fri, 17 Mar 2023 09:40:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Lee Jones <lee@kernel.org>, dri-devel@lists.freedesktop.org
References: <20230317081718.2650744-1-lee@kernel.org>
 <20230317081718.2650744-6-lee@kernel.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230317081718.2650744-6-lee@kernel.org>
X-ClientProxiedBy: FR2P281CA0131.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::14) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SN7PR12MB6929:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a04f609-2c30-4462-8f05-08db26c3536f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yUXwD0t9fGuvVGpuVfDpEEPQr89XjJ+fWqRb6qPXIvc5UGk78jr7ktORcGleNX0s7MqFNDTEPywXu78Xo8esAiZEWMrzCNo229jW6KnzXtz9INHLG/KpW98bg5C90ZP40I+grsofdHcBx6TfVgQTT8Q3kRybi2MoAJFlDcR4QB8yif+m2cwoHbccTMfrF/ZqjmwdZrBbA9L61TMQeZazbug1M4hc/2CtrJbsUBthCxPwfWTl52bB8LwrOgYPIhrCzKRQvmqbXzQFFRM/Pb27sTvIYb1k8tFzXMlVbjjt4o2LxasunkS5FUgkojkIyFpzzQoe9XDVvv1MSDDbZ0IGg7qm1te6s77PfpiKIxVbu6G8duAgIeJUtZyBk7ro/5b0bCvgydWiKDrZk09LWUwVn/pdxDEC2TlsFRRf1WuKuM7VMDclvmPHeRDXHWbg0/NwhZhmKYodsCMsG5jPBVN/dLUPdjUEkzJ8dduPILjFyp2UZbOMMcZOFom3WbM5GX0fpZSQHcS5C5IFWPwjQs2+jzuYrl345aFbbHbaOMx+qPVDrcIisJ+UR0jmRZaGBpqn2TtcSIxpysiZhoLjJqoVc/LT+TUHPx0fD0mYN1td0cJR2J2qaobXzlKmrKkjVuIwFDLMWdIQ4ObE7qmHoAiaH67qhF2pW3M9sBXyB/BdQWW/7H/JJa9uug8/HodWX1OxWOdlceh5pJ+XUNnWBWxVhA65oOJ67nUC/aBOScxdwCE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(451199018)(36756003)(478600001)(54906003)(316002)(86362001)(6506007)(5660300002)(6486002)(8676002)(41300700001)(66476007)(66946007)(66556008)(2906002)(6666004)(8936002)(4326008)(83380400001)(31696002)(6512007)(2616005)(38100700002)(186003)(66574015)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a0crWmhOYWt0RU9CMDMzZU5yVmhiZ3IrYjFCWm1HQUlsNXFuMDRtWVNwWVZP?=
 =?utf-8?B?TTVQNGRHeG9vOUlPU3d6VE5HaDZ2TndQY2tzc2dmcnBFSjRqb0ZtOC85cUMv?=
 =?utf-8?B?L1dBeUJUdis5d1ZKVlVubkFHdTBpWE1MMllHU01aYmd0VFEzcnFmN3RpY2xZ?=
 =?utf-8?B?WEFlamdRbytNemNpd3J1czJzR0U5WnZwdFRXYnlEQ01MZjB0dk5FY3FpWFdZ?=
 =?utf-8?B?Vi9DQW9OT09tdXNFUDlnTTZyQkRKbEFsZTlvM2JRT2NRSy93VHROemhuL3ZS?=
 =?utf-8?B?YWdhMURGeURIRHB5aS9GT21FYWN3b0lPa1RwQzdXV3Y5NDZkY04vOVZsKys4?=
 =?utf-8?B?YTR3cnV1d21pME1PS0hzcVVvYzR4RCtycWRpeEVlbTZHcktHYitvTW9Ua2tu?=
 =?utf-8?B?S3RvYWlPUjk3RGprVUdTb0JpZWo4dkVnRk45TXZ2bThEa2pNZ1Z6N2dPeEtC?=
 =?utf-8?B?SkZCUS92TVBqWWJJV1NabTZiLzVVbEQzb0IybDZVUmVwRTErT0xYQzlwaW14?=
 =?utf-8?B?YmV5SGd2aURwbU00MTlNR0swTCtuVDdhdGJ0YzJlRGtRdENXeGRzUmh0T1pB?=
 =?utf-8?B?bi9vOFppMmk4MDVOVUYyUVhpd25scjI5ekEzV0k5TFlPdTN6OWRaT3JvRXBo?=
 =?utf-8?B?MFgwU01tTWZYcnpRZlZHcCsxSUFNN2ZPOUUzcUlVMUw4dEd3cmo2R01ZNjB6?=
 =?utf-8?B?TWxrdWh6TWJxRkYvWGFIZ0txZCt4dDNlRzZpSnl1dW00Tlg2TDByQ1pOc053?=
 =?utf-8?B?bnR6a2NPei9kNXdxOUZTYjlGV1BUYlVOUDNLcCt4bWsrN1pMd204aGRnRUlv?=
 =?utf-8?B?RldzWVdjTU1TWUlsSUZianF5OTliYkd1N2JIMzBiNjVpejR0VC9XbklUWFRR?=
 =?utf-8?B?aWtoWG1CZWUxOU1nT2FITGdGV2h1cnBKeFNqMGtvSW4vdk1VZ2w0QnptOU40?=
 =?utf-8?B?eFB5ckNUZ2ZHZE5MaHpDbEVMZ3p2RmwzcmJla3JvdExVMWRja3UrWVl4aGQy?=
 =?utf-8?B?Ny9KU3N6ZWQ0S3RLQ0dNUFlUNXMxeXVDcm1RMVRGR2FuZWo0MmdKSVFiRFYw?=
 =?utf-8?B?bzJMWUo2YzNyL0NPUmZxQURGVXA4aWhhUUZzSjBUWDB3a3F5QlRTc3ZDSUFq?=
 =?utf-8?B?NGVraEhmY0I4ZEhnYlVnUnBnVXJ4ak0wVWhFbmpEalB6Yy9kNFZyQ1Z4emdq?=
 =?utf-8?B?bmxuQWpONjltN3llZm5XN1JJWURXc0dyQm5xc2hIbW04N3g4THVtS2hSYy9p?=
 =?utf-8?B?OXpzRTFQcmVSdUFTZ2dqSGcwVHlDNllBZ0pGeGoyTmNrbG1rbXFmNlRtREYx?=
 =?utf-8?B?VnIzbFBOZC9CNTFHdWhoTjVrcnZaZVBVbVAzQ2k0WU8wcmNHV3hmT2kyQXB6?=
 =?utf-8?B?Y0xrcVJRUitpR0lqOUxrNjlHejhvOXJ2RDVta3Uzcy9ibjZLMW0xei9zNENz?=
 =?utf-8?B?Q1c4aEhWcWZoVnByNVl3Yi80YXduenducnJXZTNIZXR2QlF1MlQ5RkE3akFk?=
 =?utf-8?B?MXVBWDNGMko3WWpvNUJiTmdTRy8ybGdzN3ZHQnptcTZPL25YbUZkQitCQllY?=
 =?utf-8?B?VkN3RENYd212dlBWN1pzT3pzS1Z6SGlhVVdQa0tFSzdmVjJlTk4yU0NOenhZ?=
 =?utf-8?B?UkNxMk0vMkxOZDNJdEJ2S214NklJb1FvVFE1NHJBQWxYalBEdzJETlBMaFFR?=
 =?utf-8?B?R3BaUlNSbCt2S0RvRnU3bkNvNlVoOTJGVk1YL09JRVY5Vzd5dzN2TDRGOFQx?=
 =?utf-8?B?Rng4MndzdHZWWUlRM1QxOVNJZThOZ2dkYVUzZENmY2RDV0ZtM3hneUJPUE9v?=
 =?utf-8?B?Y3hURkEwbWdTTGQvNmJPVndzdlg0Vk1hbE1jMnFjaTMvMXNCNkI4LzZmWDZz?=
 =?utf-8?B?ZHhiOWZGSWZFdFUrK0hRYVptTE43TEFLakJ0clUyemJHd3ZPRVBXVE00bFIw?=
 =?utf-8?B?K2FIZ2NXbTZNTllwNis0cDdmWUNRTGU2R1hOcm9zdXZINlFiU04yanVMaWRo?=
 =?utf-8?B?enBSeFVTMTJoNUFvNzA3aGtqQ1ladXpEajYvUHE4WEtuZ0poNkIzY1dVazFC?=
 =?utf-8?B?bnJISUZnWEVFeUN0QWxrTUxCTk9zaWhRU2YybmZGOVB5UU5YejIvODREc3c2?=
 =?utf-8?B?b1pyZUNGSXc4NTNOLytYaG9qeE9vRG1HN2RTb2Q3VXJRbnZqaTRrQUNRclFW?=
 =?utf-8?Q?LEKMJ02FMEXcS2ctzxfz5/bvPHYaKBZq6ak2wnc5w1pZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a04f609-2c30-4462-8f05-08db26c3536f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 08:40:56.4136
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pWtrPYw5m3ptsCABbws/EeDRQuZwtBQy22ruwx1xITzUDqXuEfzpIOdrxtKT6UX8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6929
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 76FB53E975
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-0.967];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,lists.freedesktop.org:email,amd.com:dkim,amd.com:email,ffwll.ch:email];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.75:from]
Message-ID-Hash: VJACKGSU7BEHZ76GPDQW6ISFNEDNWIP5
X-Message-ID-Hash: VJACKGSU7BEHZ76GPDQW6ISFNEDNWIP5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Huang Rui <ray.huang@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/37] drm/ttm/ttm_bo: Provide a missing 'bulk' description and correct misnaming of 'placement'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJACKGSU7BEHZ76GPDQW6ISFNEDNWIP5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDMuMjMgdW0gMDk6MTYgc2NocmllYiBMZWUgSm9uZXM6DQo+ICdidWxrJyBkZXNjcmlw
dGlvbiB0YWtlbiBmcm9tIGFub3RoZXIgaW4gdGhlIHNhbWUgZmlsZS4NCj4NCj4gRml4ZXMgdGhl
IGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQo+DQo+ICAgZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm8uYzo5ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1l
bWJlciAnYnVsaycgbm90IGRlc2NyaWJlZCBpbiAndHRtX2JvX3NldF9idWxrX21vdmUnDQo+ICAg
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYzo3Njg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFt
ZXRlciBvciBtZW1iZXIgJ3BsYWNlbWVudCcgbm90IGRlc2NyaWJlZCBpbiAndHRtX2JvX21lbV9z
cGFjZScNCj4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jOjc2ODogd2FybmluZzogRXhj
ZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAncHJvcG9zZWRfcGxhY2VtZW50JyBkZXNjcmlwdGlvbiBp
biAndHRtX2JvX21lbV9zcGFjZScNCj4NCj4gQ2M6IENocmlzdGlhbiBLb2VuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6IEh1YW5nIFJ1aSA8cmF5Lmh1YW5nQGFtZC5jb20+DQo+
IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4NCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnDQo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+DQoNClJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoN
CkdvaW5nIHRvIHVwc3RyZWFtIHRoYXQgdGhyb3VnaCBkcm0tbWlzYy1uZXh0IGluIGEgbWludXRl
Lg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm8uYyB8IDMgKystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym8uYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMNCj4gaW5kZXggNDU5ZjFiNDQ0MGRh
YS4uZDA1NmQyOGY4NzU4YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jDQo+IEBAIC04NCw2ICs4
NCw3IEBAIEVYUE9SVF9TWU1CT0wodHRtX2JvX21vdmVfdG9fbHJ1X3RhaWwpOw0KPiAgICAqIHR0
bV9ib19zZXRfYnVsa19tb3ZlIC0gdXBkYXRlIEJPcyBidWxrIG1vdmUgb2JqZWN0DQo+ICAgICoN
Cj4gICAgKiBAYm86IFRoZSBidWZmZXIgb2JqZWN0Lg0KPiArICogQGJ1bGs6IGJ1bGsgbW92ZSBz
dHJ1Y3R1cmUNCj4gICAgKg0KPiAgICAqIFVwZGF0ZSB0aGUgQk9zIGJ1bGsgbW92ZSBvYmplY3Qs
IG1ha2luZyBzdXJlIHRoYXQgcmVzb3VyY2VzIGFyZSBhZGRlZC9yZW1vdmVkDQo+ICAgICogYXMg
d2VsbC4gQSBidWxrIG1vdmUgYWxsb3dzIHRvIG1vdmUgbWFueSByZXNvdXJjZSBvbiB0aGUgTFJV
IGF0IG9uY2UsDQo+IEBAIC03NDgsNyArNzQ5LDcgQEAgc3RhdGljIGludCB0dG1fYm9fbWVtX2Zv
cmNlX3NwYWNlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQo+ICAgICoNCj4gICAgKiBA
Ym86IFBvaW50ZXIgdG8gYSBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QuIHRoZSBkYXRhIG9mIHdo
aWNoDQo+ICAgICogd2Ugd2FudCB0byBhbGxvY2F0ZSBzcGFjZSBmb3IuDQo+IC0gKiBAcHJvcG9z
ZWRfcGxhY2VtZW50OiBQcm9wb3NlZCBuZXcgcGxhY2VtZW50IGZvciB0aGUgYnVmZmVyIG9iamVj
dC4NCj4gKyAqIEBwbGFjZW1lbnQ6IFByb3Bvc2VkIG5ldyBwbGFjZW1lbnQgZm9yIHRoZSBidWZm
ZXIgb2JqZWN0Lg0KPiAgICAqIEBtZW06IEEgc3RydWN0IHR0bV9yZXNvdXJjZS4NCj4gICAgKiBA
Y3R4OiBpZiBhbmQgaG93IHRvIHNsZWVwLCBsb2NrIGJ1ZmZlcnMgYW5kIGFsbG9jIG1lbW9yeQ0K
PiAgICAqDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
