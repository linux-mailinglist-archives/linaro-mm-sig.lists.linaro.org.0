Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B15F666C35
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 09:17:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 104CB3F03C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 08:17:39 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2089.outbound.protection.outlook.com [40.107.94.89])
	by lists.linaro.org (Postfix) with ESMTPS id 927B03E900
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Jan 2023 08:17:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=rbV7JbG+;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.89 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OHV1vpGkZa9GYnVJhkgpwvt5TD70KPg07ZB4C0gt3ncuU+Qps67J5RhuWsnhq9PQNdjyaR20e9beTGD9vz0J2n6HVZ0UehFxP/GC0EEDO8QPL7giiVKeuIpbJ/yNwGtbOZ76APTAHGCH6XZc8zL7xB4T24L1zeio8kYEtf+89scHFiSltP4LXYqZb2EdY9tr/AiMTfYYhvDfGqJPNuqkiJo6Lws2K2fWyZhM9d3MlHF1wUjxeyAUVrHCzJ2q13hxWiSlirssLZGQkrXSpPecnu8hjD/zIGa3ZkItZ4XKD1th21heJe+A9TMZVzWuVJTjvVPLvWVFIVJnwo7Do/L2MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UhpZ6TmtUE/4qtDH4tuv1gmdSIFfJVCkGumJ+omqkEQ=;
 b=DbFVEDDvWP4eAprTpiFazKdKCm/7DbAYB0JAMGIicXZ/pSz5QbBZM9NwhyTT83HWLPIAWAhcpxxl3jqCovTVL4MqTaSUekzKIOYO09EsasH2QTfccI8Zxfs4cNLL6OzZUAzuWUOaXLCxocseFA0qbTMXeVwPE0ACs4NUrn43GtIK9STRuFaf8lwB5WRr29bIMTfq93edC/Zj44z1DvJVLN7Wn3efWSt3d7B26L8WeqpH0XSDMdfzhiCLzPFzW9HspjQS1leiun3HjUROPU3mSOfmKe7xRK1F1MaX+FyrpCycNKqxvjkvGvOVv4EqhduuHeGzYGhljwY+jGIKIu0mkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UhpZ6TmtUE/4qtDH4tuv1gmdSIFfJVCkGumJ+omqkEQ=;
 b=rbV7JbG+YtA0jU1tnlzDCnp6b4kM8kHW6DMywXCC5+xAgbJdC03e0d2lfVKX1ULBpEc67EbskjTu31VKSUmZ2H2HEj5p4KS4pDEsyPG9AJV9Gl2KjRfOLuEEswv3B1L8wzl10SU/B2WmE8tbRIpUQ3t0ABfLjJld3pJnGouvMSE=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH2PR12MB4296.namprd12.prod.outlook.com (2603:10b6:610:af::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Thu, 12 Jan
 2023 08:17:33 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0%3]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 08:17:32 +0000
Message-ID: <2df3c97f-9e54-e743-a29f-f20f5461c851@amd.com>
Date: Thu, 12 Jan 2023 09:17:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Shakeel Butt <shakeelb@google.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20230109213809.418135-1-tjmercier@google.com>
 <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
 <Y78+rfzXPq5XGs9O@phenom.ffwll.local>
 <CABdmKX0TAv=iRz0s+F6dVVX=xsK00BeUPkRM4bnsfemDAY9U4w@mail.gmail.com>
 <20230112081337.fxgnhdk44mxu26et@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230112081337.fxgnhdk44mxu26et@google.com>
X-ClientProxiedBy: FR3P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH2PR12MB4296:EE_
X-MS-Office365-Filtering-Correlation-Id: ef4d5930-d6f8-4c08-992b-08daf4757411
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xm7yPWzQLZGzmC6sVqwvO7+qAxlA61VClD/CI+xqIwjQi6bSObX4dWU16JV/WRntLVb7GkZYtNuYpsTzdX+bkE6MRplB5z84veWuXZK8+Rsi+GIRZgwKM8zrps/mcJbol6gTYRBRnPZdd9TEoieDrjbCy2FMNKhz5iboRwhZGZDgecZ0UPVpgJcOyeUZ7vvfaJLbwjYyx67xOW0V0Z82iyFP3XU0GnU2M+bIGWGnUBB73MzNo92CjncSYuCBFW3DZMPfkdfvnju8PuV5XkK+DFWNVOlK+ArX5SIXrvMqoyRrxjkAPVvAi7kRWLi/n8eoBjMkrVbh/3LMyLwb38CG+2i0VLx3/TtlyQ9GY/6oO1QJbsoisnSRzPwG2ySb75RECsA2I4zT2n1j3xmHU1C0CTU0HXTlUsZk5CVFFJSjXPibKFhlln8m8wPtFV84VxM7MB7vdQuPbQKYgxNz2VWwiE5Aa1srnzeaWYX5ezWsn7cmnIAmaFaB1AnD8ZYs80M3+60cH8rxH2R/k1d0zM3U8fOlDAgCKIJsZU8UFxXOL0ZNhjxy7wbdORD0nlEus1XShpsS8Afb/MKgbr8zTtZ8+h8seVfiqYGS6tCCry6BnIip22Q3/M3+/bglw3lRk/t8JT43UhclaWmoRgvKf+5PGvf+I2bWbbbC2QPZB/i5saoAQlrwXBDj7B9i0xe9/sdRLNh9snaDOZr36bsCQRawbmSE/0Icmvy+BV2oI6ZLRKQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(451199015)(8936002)(5660300002)(7416002)(7406005)(41300700001)(38100700002)(36756003)(2906002)(31696002)(86362001)(6486002)(478600001)(31686004)(26005)(186003)(6512007)(6506007)(8676002)(4326008)(66476007)(66946007)(66556008)(316002)(110136005)(2616005)(54906003)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OUo0VHB5ZnpTZUtxV2dndEROdVNuYUtvckkwVzRVckpvNUpHR2lQaStUd051?=
 =?utf-8?B?RzFEK0wyUFQvbGR2bFJHWGVRL3ZhUlAxbDREbWJzWUp3RHhrSC9WL0hsdG1W?=
 =?utf-8?B?N0dzODFlN3VoS2w2RnBIVnJmRFlSV2g3UGNVMVRJNkFIUzcwcHpCQzdxMENR?=
 =?utf-8?B?U0xNOFMrTnNqWm1GbVlxNVA2dm1DQjY1Qm8wQkNSOGdGUHhJUG5hbFd5OWdX?=
 =?utf-8?B?S2xVZCtBYXNiVFFlUEFXV0dzZVZrd0wzbktiNUhrRFlqZ3JvZ2V5VXB5L3dV?=
 =?utf-8?B?Sk1oVGpYTU5aeG0wMEhIMEpwU3ptZHZvY0ZiZGZpS3hvUUxtWFBTdEJ4WjFI?=
 =?utf-8?B?eGV2c1FFdTdRNzM5aFl2clFuM1FuREw5cHNuU0dYUTVENVE0MU5RNHVGRmhS?=
 =?utf-8?B?MzN4bXIwQ2t0RUxxS2EzbFVxSDZpVFhvbjB2Y3lqWmgzRUFSZ0tpeUwyZ2I4?=
 =?utf-8?B?QzJkOG14YmVCeWszdktJOGNLcUI0bVVqRVR3YWswRVpPT3BadjhQaStLRUM5?=
 =?utf-8?B?YWhQQ2J2VG11UnVZa1VsYStkalg1NjUrUmxVTUdYa0hQSFBKNTJJUkhZQ1VM?=
 =?utf-8?B?OUZCVlpwcHpsZ0J0TjB0UHpMVitvNE1nRXJpOGNxOGNRRjlCdkxqNVFQcERm?=
 =?utf-8?B?MkR6NGZEbU9tUkRucWRCY2dGYXdueDhnZjVkZm5ZRUpRNU82SUZOODYzUkli?=
 =?utf-8?B?SmlkZmlPYkFiQjY0SWRKN05kN3JOb21ISGtSejR5SHBuT3JLWEgxK3plc2lv?=
 =?utf-8?B?MnI1L3oveUNMWXFYUUlZTkJteDVnTGZuOVdxOHl5RE1NZFRuTHpuTGhUTzcw?=
 =?utf-8?B?L3ZadndFVXNiTDFNZXRoakl3WUpMalM2SlF6SHhHa1VaQytwVFpnNmF1MFFB?=
 =?utf-8?B?cnhnaSs4cENpclVIbGNqQmVyaDN6SHFYTjhVOEgzMjZTUkJ1RHZ6K0lKRUVK?=
 =?utf-8?B?aGgxMGxQNGhhWGJrQmdUK2NZSDdvdWdjRUpkV2RvaWFhY0NzK2U4am44T0xr?=
 =?utf-8?B?VHVDTkhDRU5NU2ZVeHh6U2Z3S2xCT3lCaGljN3l0dEJKR0xWYXJDSVJRY3NF?=
 =?utf-8?B?ZURiUnZ3L0ZJNWx6NDNRdVFOMmE5QTc5cXpiLzMrRXQrNVRsVmYzMS9hY3pG?=
 =?utf-8?B?WTFuWGN1eDB1TDVvRFRuY2ZJWnpYSkxDZWh3R3piZXJGNjJqVVR0U0FndG81?=
 =?utf-8?B?L1BtWjJtWUdObVdLTVVwTjkzNjU0TUYrMU9JL1gxNG9RVS92MEtzTEZsWk5n?=
 =?utf-8?B?djA2TjFORjNVMlpFU0IrbnFNeklrZFVCNzN1K2ZNZXplbUIvWFBVbnYwWUpU?=
 =?utf-8?B?V3pnbExsRE1LcXQ3V0NQenErTThrTldISkpTVlBmNklldWtHTklYbjhiZTJZ?=
 =?utf-8?B?ZlliYXpIcXFPWWx3OERHZUpHT0NaeDZiZHVMV1d5eWwzMHZreHdSclQrSkwz?=
 =?utf-8?B?dmNuaFFkWFJzRjdMYkZ0aEVndUhNRnlXeDBxUkk1cHRhazhBWkhEMmJtZ1RJ?=
 =?utf-8?B?SUM0ckNCcGRmdGFENkNCOWlOT2cxaVFTSkNSWW1WMUJQb0VTbEFFbDNqNmxZ?=
 =?utf-8?B?UVAxc0lFV1VqZ1ZoVGNmcVB6ZUp4RitkTkRPMW82V3pHYVE5MkdJZC9UcFFR?=
 =?utf-8?B?aUE3V2dGampheFM2d2VTRlhrNVpFOVRMVEZvcGFpT2l4MEwvWkFnaGZPakVE?=
 =?utf-8?B?Q1VzYUNaN3pLRHJZamRsMHdTUituOVYyRzZzSVVGRmlsaVpTUTJHU1YxaXlX?=
 =?utf-8?B?aU1FcHFOUWFsY0Nwd0tLdGx1cG1nWloxZmJsdzNNV3hIQVdCM0tPM2tjYnhF?=
 =?utf-8?B?RHhvQVlWNWlTcEhSdWpqZHYwZEIxS3RpMG1sZjFwOWFMT0ZiTjVYZDFic2JK?=
 =?utf-8?B?NnFXcmJzdnJlT2RpS0xCdkNnWkUyVno0aXFmbTZZNU9DQVl2THVsaWIwNENR?=
 =?utf-8?B?V2VmYXJ3eWN4MUM0NXBkUm5JRXEwU0JUdEYrU3gxZ1o5citWSXFMNWpwc2xt?=
 =?utf-8?B?dm1VaTI1REtPVEdtVDAxbzFaNk1rRGNIZ2h5TUszSDZYQjVpaFZDcVZtajV2?=
 =?utf-8?B?dmxrWFlyOFFReHBNRjlmYndOLzNiOGsxOHN4bnF1dUNpd2gyVlpwOHBGVlkx?=
 =?utf-8?Q?9/rapmkssopwpK/aUC2zLkLXd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4d5930-d6f8-4c08-992b-08daf4757411
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 08:17:32.4820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TFdVJy4fXovAhBnUlO1FQi7je/3ZE5Db5Yfu6Y+1FibZcqyAbtkIHcA2Dcsr+XDS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4296
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,google.com,linaro.org,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,mail-mw2nam10on2089.outbound.protection.outlook.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2603:10b6:408:43::13:received];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.89:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 927B03E900
X-Spamd-Bar: -------
Message-ID-Hash: EUXZAWBEN4HUIVPHC7C6HGCDNPZH6CYM
X-Message-ID-Hash: EUXZAWBEN4HUIVPHC7C6HGCDNPZH6CYM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vge
 r.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EUXZAWBEN4HUIVPHC7C6HGCDNPZH6CYM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 12.01.23 um 09:13 schrieb Shakeel Butt:
> On Wed, Jan 11, 2023 at 04:49:36PM -0800, T.J. Mercier wrote:
> [...]
>>> The problem is a bit that with gpu allocations reclaim is essentially "we
>>> pass the error to userspace and they get to sort the mess out". There are
>>> some exceptions (some gpu drivers to have shrinkers) would we need to make
>>> sure these shrinkers are tied into the cgroup stuff before we could enable
>>> charging for them?
>>>
>> I'm also not sure that we can depend on the dmabuf being backed at
>> export time 100% of the time? (They are for dmabuf heaps.) If not,
>> that'd make calling the existing memcg folio based functions a bit
>> difficult.
>>
> Where does the actual memory get allocated? I see the first patch is
> updating the stat in dma_buf_export() and dma_buf_release(). Does the
> memory get allocated and freed in those code paths?

Nope, dma_buf_export() just makes the memory available to others.

The driver which calls dma_buf_export() is the one allocating the memory.

Regards,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
