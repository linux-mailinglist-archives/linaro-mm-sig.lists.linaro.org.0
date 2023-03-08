Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E2D6B01EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 09:47:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 479D73F0A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 08:47:11 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2061.outbound.protection.outlook.com [40.107.220.61])
	by lists.linaro.org (Postfix) with ESMTPS id E1B773E941
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 08:46:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=EDtQlAVU;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grixCilKwcFfqazWUzCU04YSGzQV505MwDKVkPM2tuVnZ7VGnVm8HewliPtoYiraeIYMx9c0UKTfaq2g4TMpqvyCHREu+dyl3KGecmP7IMFvKiSqBuCj1qmAOLYsMjaCU3r4PrEa2f+ndIWGasMdueSoI/x2mABZjLCYp+Af4NeKhGKtEScUlXv6kO3H3gCkyJRAhxkVt9z/oyrlNl/orOowjW6yCd5983/4sLfd94QycZ6Ceqsz2bpTWp4KSeqTsqPZhtzVD/z02gLv1JPsHidQuTVN2YoN2oUPxQM0hUwz2k1ofjhJBXzryD2b0WuPFWg4YC1nXrJ9/Co0lVdYXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVXRzxfVsfdpdo+eb5haV4SJjK7YF6HK19r6YZixgDk=;
 b=DaYEiTGcEz4ZF8tJ0E/48hvC5mgBZ/0JV29TDs39DB0BJU6mXngdirt1yA3Ms5JSlCI2PIlmMYUNolpJZK2C2HDjKsKv9SBUflgRFKDmc2uYV12tvDzsRY8hKiRFZWPG+Ou16u51kV9TXjdYALECpILCDjhCMngcxp/sBNbH2EuXoX4tLW36Inic/kA3XFxYW0sMB2HxSU2f4h6Ms79Xadk+O9Kz0TVB9q4qKuMBgeULeKXkMa4C8IPV1zpvYAO85R1QN5MsSVQSZoBCQGlGbKoGnsUdXdSvILGhmnXf93mrE404lZJvhc0afl3elv2IPAu37jdOfQD2pMcPO4AfmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pVXRzxfVsfdpdo+eb5haV4SJjK7YF6HK19r6YZixgDk=;
 b=EDtQlAVUaoDokqoTwoP2/KPw2/Z3qlOhsD8HReHMLOBsMyrju3V/pstzOpwWE9PGvA38PqeVAGy73YbgNCh/9KcBO9CDGWfr1T7BZY6Nr8HqX/XJskSRI9VgnXrA1IffQp3wl382JgNeS3WvzKIyEye6RfM/OgnYQDZrrwjFcDI=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DS7PR12MB6144.namprd12.prod.outlook.com (2603:10b6:8:98::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.16; Wed, 8 Mar 2023 08:46:46 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 08:46:46 +0000
Message-ID: <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
Date: Wed, 8 Mar 2023 09:46:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Asahi Lina <lina@asahilina.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
X-ClientProxiedBy: FR2P281CA0082.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::9) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DS7PR12MB6144:EE_
X-MS-Office365-Filtering-Correlation-Id: 158e4127-3c50-4188-7549-08db1fb1a5fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z20FVIsgxTAYY5/9ZZ0nnyM9OLbzHVHaNkB0k2ZAgFE+U4H7E+9ebaFejn3S8YVzxtW9xhiIrO0BI6EDwYjrzUPn1g83iW0GHFOVegIeIvgBXIp5A5tq/h6Fri2z32TWPFUMgq9zY8vpFLL7LFYSpGdDwKNKYa5nXNwBUWsFepdAruJJhSYUoTSHekCjzsam6Ie9sYhKRy77H+QfTaFJrpPvQO3cEbwmfrOp26LJERubXPG3K/fZjy5q1MohzmaJrSEX5HpONFtK61Yi5kOf4UntaR5IkcJT0FHSzGh08pgcyLcJCw6VFgpZVbLWg8GQfGD5UxLmsLj4PYXw4gNlGxgRJoB2mzrwGAKWsAARgYREL50H7MEAfww/v+vhexsmo7CMIeP6lRzI4VjKqHKhC+ATRZ9qeP7Xyt15Zs1esXIefamVH3wNhzde2FLMA09fLq6WR7POizA+g7eGyEf3ojk2f4q7nFWkV3D3u+iDIJA6mNNuXYHP/ZRrA2//GVDVbkF/L2SptTtuwh2Wf0pHgf6v7+AQMfUGBSPT2w8ufL4onGPzwD7AUeny6ZEyPsX/Va4dobWOqnWTEnVrHVKNdHy2HPhm8rQNd3XKo8pin1QLVK1v5dqZq4lFeCzbDEINitsf8viVnVL1/fi4P4GkiIkQueIskwP+Xsb4Lc7jU1qBX47ehA+EoynCf/ZY3Qk4EMhMelCa6dOkn44nHHFekTGAzFHoTnjma0P5OU1Owb8xnilsgEwa57domi0ZEAzI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199018)(2906002)(6486002)(186003)(38100700002)(6666004)(6506007)(83380400001)(6512007)(86362001)(31696002)(41300700001)(66946007)(66556008)(66476007)(8676002)(31686004)(110136005)(54906003)(2616005)(36756003)(478600001)(921005)(7416002)(4326008)(316002)(5660300002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OUFieEVsQzVPcmc5ZkdXZWx3WnU5T0w4cTJOcmlrRzJhU3p0bjNXYUdOVTRM?=
 =?utf-8?B?VjYwcCthTGpoRThuVzc5VGpZcTk3QTNIZ2ZmcXltWHdCU2VUdDNuY25RcW1V?=
 =?utf-8?B?bVhrdTRsSXNucVhXRFIwVHFvNGRWZHlVTkNuMm9mRlU2QmdHSDRKMmU2Q0hH?=
 =?utf-8?B?dXlBbnlHY2t6UDduNVpad1VDb0w0bEY1bjVudENOeE1zbXJGbkFabFQ4c3ZZ?=
 =?utf-8?B?QmNHZ01zOGYrV0F3QUNPd2V5MmFhR2lEWXBJdjM5b0JrcnUzL0RlYytjdzZP?=
 =?utf-8?B?SjFrTXpuODVUSzNFblJXa3dCWWlVR0R6Y2VBNTJMRi9SdHppUVcwMlRtcjRm?=
 =?utf-8?B?TUt0WHVXOGpoQVlTR29ZWFBMNVpVMTRqUnRVMmZGWHBtcldtVy9xWFdqaVRl?=
 =?utf-8?B?QzZnbFlGeEx2UGxtZDBtVW5QcEx5TkI2Q2hhOUczMTQ1TUZVWUpUZ25ISTRY?=
 =?utf-8?B?UjJDdDRickQwKzFLSUpZNk1YTU1YUm55TE5pTTdTYng0ZkxQbzczRUthRkNq?=
 =?utf-8?B?TzE2cjBuS3dCTHV6ZEVnUDdud1JwdXNZcnY0U2tnWHpkVHZ5b0Y5d21xRmlw?=
 =?utf-8?B?MFN1Rmk0dmF6Q0c2YjVLL1c0REZYbHRLWlY2bVlPZndzclM4R21mTTBnMTB4?=
 =?utf-8?B?Z3phWE1TUFBCakFWU2hobGxyNUlaK3pYb3VlelVGMWVLNXBTQzMwTFJxZjhs?=
 =?utf-8?B?d01keFRGUk5qK3c2TjdQTHJVK2thZ0h6Sk84Um85K2JsU24ydlZYa2VJOUxE?=
 =?utf-8?B?azRSNERYZVJPMVV2Zk1pUk1ZczRFbVFCd2gzQ0JUS2psa01wMHRTdE1IU1Bq?=
 =?utf-8?B?bWFDY2NlRlN3VXNxanA0UmpvWUw1NjRYSndPVlJqYktnY1M3L2FnTGl5VXlx?=
 =?utf-8?B?WTNjUmtJbTBWTWRUT0RMYXVHMDNkUUFMaWpJdjV2bndzU283cDJKUmFWV2Z6?=
 =?utf-8?B?QW5RZ3BoSVJHUmFIbnFVMnR5RDV3UUdqaEJlSEoyNnNvcU1NUzM2eVZwZDZI?=
 =?utf-8?B?NmdVODM2K2x1Yk5DSVJjWC9xZGRzT0g5b1hZQmd5Sm1tVGE0N1kvOGRMelZo?=
 =?utf-8?B?NDFvVEd2djZvRW1LdHozanFVNkJQc1h1RE1UZXZIRVFxL0kxRnV4anVLTWZr?=
 =?utf-8?B?bTY0ZDRJdGd0ZFRzQ0tzSzFDVDNxWHNkTklaTTlhRXNQSStMaUVNanJQRFlR?=
 =?utf-8?B?ZFVKLzdmZEtmS1diSXBTdldxRllEQVl0M0RZRVB6SzZpSVlMa1c1dS91Zm9v?=
 =?utf-8?B?cGx0SWdkdCsvOFpiMCtOQ3YyTXRWYkJuRGRhcDhKZmxxYW85ZWQ0MXc0ektC?=
 =?utf-8?B?eGZOMWxscm03RkRYV2lwb1YyeStueThUbFlHVmRaZFhpRDArdUh3K3RRYVF3?=
 =?utf-8?B?anRBWDVnSVJzSHp5V2p5Y2VlWVFTb2diWGhlYVRINHZkMW5RalRPeWNPR2tP?=
 =?utf-8?B?YUxKNGVjb0c2alIwNFVjNW9IMXRyRWc2VUp1R3kyV0RuNHI0S1c5VVFOT0Nn?=
 =?utf-8?B?cmZPL3VBU1YwUlp6NGI1a1k1M0J0dzRoT2JMYVhteGpGOUVldVMvbG9Maysr?=
 =?utf-8?B?OVVjVk5CWGR1WlYrNzR6azNUUlFwenVOb01FYzJUMmgrSEcvQm1EdEQzTWRR?=
 =?utf-8?B?WnUrODc2TGswOFBIbXVuTy9pbzJvM3lxaFptT0RDdkZvTitoZ3RDcWpCcUpU?=
 =?utf-8?B?b3MxaVptNXNxNk9ZSkhRMVV2dFg2c21ibUtHYTRjbHdPYm4ydjFLZ0p5VHY2?=
 =?utf-8?B?NSt5N00xR0F0TGVKOFpiZ1pWRlBHWXBpNWt1SDk2VlRnY21PeEtmeXV4cVJ3?=
 =?utf-8?B?cHozSFNFbzV4UEFyZVdEeVJNWStXeFZ5cG5saXNpbUdPcFloeWNqLzNpWlN5?=
 =?utf-8?B?aU9wZjdsM1RuNmREcnVZUkdMbithYjNPWXlFZnJPUitMb3ZwU3JEaWdMMU82?=
 =?utf-8?B?YmszOVV1QVczVjg4d0Z4TXIwOHc2U1VFeXk0ZzV1ei81dGtiajgwb1lDbzlz?=
 =?utf-8?B?T3FWZEZZUVNPejlZWUM3Y1pLcWxWZXJBWFRGeVQyNmpxSFZpR1I0YnBxSUJv?=
 =?utf-8?B?VUVJK1l3MGFNcmhWS3U1R1B5S01TeEFPZ05lbS9ZV2owd0oreFlrV2E0WkZr?=
 =?utf-8?B?VFVsMUNLUUNtODM1RkEzV3V0bElGNlAwYUNoeHZlcVM3dFRQZ2dNTTQ1NkxO?=
 =?utf-8?Q?vFQkzj7RX6ZAQaj/Fc3iRHeXyGwTydL4pIYCyvyAnVN7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 158e4127-3c50-4188-7549-08db1fb1a5fd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 08:46:46.0861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DpcddRteAkCW14Mjtb2ma293L1byNgAoKhxmd1yiV5iFhsXFX4rBDvx+gpIiBW1F
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6144
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E1B773E941
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.61:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: GLLJ2SHICHI7XDQ23XKH62QBPMPJ7RV5
X-Message-ID-Hash: GLLJ2SHICHI7XDQ23XKH62QBPMPJ7RV5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLLJ2SHICHI7XDQ23XKH62QBPMPJ7RV5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 07.03.23 um 15:25 schrieb Asahi Lina:
> Some hardware may require more complex resource utilization accounting
> than the simple job count supported by drm_sched internally. Add a
> can_run_job callback to allow drivers to implement more logic before
> deciding whether to run a GPU job.

Well complete NAK.

This is clearly going against the idea of having jobs only depend on 
fences and nothing else which is mandatory for correct memory management.

If the hw is busy with something you need to return the fence for this 
from the prepare_job callback so that the scheduler can be notified when 
the hw is available again.

Regards,
Christian.

>
> Signed-off-by: Asahi Lina <lina@asahilina.net>
> ---
>   drivers/gpu/drm/scheduler/sched_main.c | 10 ++++++++++
>   include/drm/gpu_scheduler.h            |  8 ++++++++
>   2 files changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 4e6ad6e122bc..5c0add2c7546 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -1001,6 +1001,16 @@ static int drm_sched_main(void *param)
>   		if (!entity)
>   			continue;
>   
> +		if (sched->ops->can_run_job) {
> +			sched_job = to_drm_sched_job(spsc_queue_peek(&entity->job_queue));
> +			if (!sched_job) {
> +				complete_all(&entity->entity_idle);
> +				continue;
> +			}
> +			if (!sched->ops->can_run_job(sched_job))
> +				continue;
> +		}
> +
>   		sched_job = drm_sched_entity_pop_job(entity);
>   
>   		if (!sched_job) {
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index 9db9e5e504ee..bd89ea9507b9 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -396,6 +396,14 @@ struct drm_sched_backend_ops {
>   	struct dma_fence *(*prepare_job)(struct drm_sched_job *sched_job,
>   					 struct drm_sched_entity *s_entity);
>   
> +	/**
> +	 * @can_run_job: Called before job execution to check whether the
> +	 * hardware is free enough to run the job.  This can be used to
> +	 * implement more complex hardware resource policies than the
> +	 * hw_submission limit.
> +	 */
> +	bool (*can_run_job)(struct drm_sched_job *sched_job);
> +
>   	/**
>            * @run_job: Called to execute the job once all of the dependencies
>            * have been resolved.  This may be called multiple times, if
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
