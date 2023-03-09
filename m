Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F566B1D4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 09:06:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B41793F0A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 08:06:28 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2080.outbound.protection.outlook.com [40.107.94.80])
	by lists.linaro.org (Postfix) with ESMTPS id 1CD243EC68
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 08:06:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=DyUf4QUt;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.80 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOz8R6LWeAuv0U+Di+X1aoYSorF1vwF9QtqqZd75ZrIO/BinBD4LaeixyAXrxvUAWWg470NfbvV2XPPkKGS0z2/WvZNw/y20LrUMpgWHg87Wm1S42gKeH5aPdYFk/lUu5yLUE4T4OLzUtZEtyeNFeC4HXkQwHhvHAarYGRTZi/J5mSb4y8paO8wOubgMb4/gwv1mX6dnYufg40EupI8bX2uHyPW8EIeAa8f9TM25AyJpKq67YaEhqRUDAfZ+fU8IlsYO9kcc3lV29H32NF3POWTbnWsWSzq+MARXKWLv0v052rgQQMFk6LeMNM67kYGX6cEFIdZCCtCvgKFFb16aHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k7Zsip1WQpEb5AxlIi9nL3EM+jx/pA438H0eFny95q0=;
 b=ZrUAAGy3OZWi44uxKGU9SdZLz36FV79Id2W6ydEnyx4IAjya1nH0cXJCc0LsT4EDg0rxDTN02zBwMh5KWt6rcEWdB1oRLoHlgUTr5dLW+JRCKhhK9coEk9B3gAm/O0fs7mc30eR1qrXOzZ1uKsioi3qkHVaVnQtceGEH8TjhcxF64RNVAl8cQG13IKakl7ECih0gSxmycdJf1+5ltxS/bT3h31mCQQbmk71sllTiniclm8jft4a0lJmtukc3Txzx/iIiXwk11HadaMXwBelKac/jFutBQETRz0+vyvttxnLP7ErmdJmAlxnA9kjGcXnuGg5I6nBDdHp2urC+T0Vu3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7Zsip1WQpEb5AxlIi9nL3EM+jx/pA438H0eFny95q0=;
 b=DyUf4QUtP/6ZT38+uzgvqdpM2gTLtlOMYNC7IA1gtzP//U78eXopCtPDHBr+LP+qbh9YuqEFJGCzoQIFABWMOZj5dJ8OgUFOFHOnhChtc9F7VJOeh4EwVCnJBZxZSmo76olT55i3dB1fwJacIHhpxSOC/Ra52oEjYXN4/zHF11o=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB5328.namprd12.prod.outlook.com (2603:10b6:5:39f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Thu, 9 Mar
 2023 08:06:06 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 08:06:05 +0000
Message-ID: <f93448e6-4133-8a49-a12e-7a7012cb5409@amd.com>
Date: Thu, 9 Mar 2023 09:05:57 +0100
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
 <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <a075d886-0820-b6fb-fcd0-45bfdc75e37d@asahilina.net>
 <2b1060e9-86ba-7e16-14f1-5b5fa63de719@amd.com>
 <9f76bb68-b462-b138-d0ad-d27c972530d4@asahilina.net>
 <a39c6b40-f190-002d-ae1c-8b58c6442df2@amd.com>
 <4bbfc1a3-cfc3-87f4-897b-b6637bac3bd0@asahilina.net>
 <b0aa78b2-b432-200a-8953-a80c462fa6ee@amd.com>
 <c0624252-070e-bd44-2116-93a1d63a1359@asahilina.net>
 <d1fccceb-ca77-f653-17fc-63168e0da884@amd.com>
 <9c3dc2ad-11e4-6004-7230-8ca752e3d9f7@asahilina.net>
 <d544748c-8a2b-7c08-f199-182a56af22be@amd.com>
 <3e5e0120-50fd-51c0-d817-5b1dc4c14e97@asahilina.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <3e5e0120-50fd-51c0-d817-5b1dc4c14e97@asahilina.net>
X-ClientProxiedBy: FR3P281CA0024.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM4PR12MB5328:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ae74c51-6a11-40e2-9080-08db207521fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YgFdnB5iYuuMzG4JjUA0NRNwMBHsXasK9slfyi0G6sJ5PV2XYGgVVIDUN3FTeOO9d+krRx4moMhoIAIwfquGXSF3lZAPtLifvnCP8e89UwKp1rcDXFnXHHaJZBhJ558sB6Lt+haEv+qX1UZ/LeSqatSfBHSncG6J01LQLxMb9zRAy62wsUVrt14zYeonGptqaQVgF3p773AZ5FtYwWBpj5OGgHMXAErH+55lYk93n+qoL2ndpRHQxVAnawAF2t1k4K8HLZiZoCAWxEXthWnU3w2X+5BCylhp6o3XyiM2LK0jSf/lcEcug+jvyoEvkisPZFcySODsHeqasQiyohkCrAfOYQVfI9CeLhoNDbqok54aPuU8pKfpuPVXDbLfLG/0SIAPNSMqU21LHHLUnw590wicuXgVMC8ma3tRP7uV+Oqk7YBx0sJQH/6f8mz/WOM5vdJl6yvnJsWpoSVtSGjp8uh+H0zX4hhWVNQmNFEM2hJe1FbPY8ZiUNIrduDNzJyvJ97EpdLtaoZrTLcdVOmEThjqeaqP/GtmOAxQpw8Pfh8rt+xoMSphY6CR/xqEvGWT8pKYBM64s2KpA01WCDYoCAUJXnmRKfITKDFSkF9WrsDAlQEuobNTzh5ELYelleH/0gigGP7e1YDPdH6KqmUKerUv23PwFPzMWYEFWf2Dl0jvcmf+x5YNUqHkJSD4mTg3jDb1DeHOmJOajFu8QbjAp+K6opkN0uDjKkceg7nlXkzvfVzBd/57zah/1anaYqaz
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199018)(66476007)(66946007)(66556008)(316002)(66574015)(41300700001)(83380400001)(8676002)(4326008)(31686004)(54906003)(36756003)(110136005)(7416002)(8936002)(38100700002)(2906002)(2616005)(921005)(5660300002)(186003)(478600001)(86362001)(6666004)(31696002)(6486002)(26005)(6506007)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RXhTejdqVlpKZ1c4TlFoanorTW1GWDBSWTZQVVV4UE5lcFpHVFAwdHVyZ2Qx?=
 =?utf-8?B?MXZFaWNBQ2tMeWs2ME96enRWSU1tQzZkcTdGeVN4N3ovUDFESm1LWUNzK0VH?=
 =?utf-8?B?cStEUzlJSnpXWENnNFQyY2F6UlNtakdHcEdYY1BSL3hORDdCTnpacGRHSUlU?=
 =?utf-8?B?dXNtbnJBTFZXdklQOG1DQ2YvUXp4NnJ5UUxMZ2VtODNaaHhXVWFnMitjVXZO?=
 =?utf-8?B?KzB4a2Fad2ZWN05hV0VEck8vaG5TaWMyNUVCWWxRb2R2UWVnVEN4SHREalRj?=
 =?utf-8?B?UzJ1VnhSL1EwSmZOcktRb1Z1bGZGNHRYZ05nK28wMGU5MEZ1M0tBc1FKb1lM?=
 =?utf-8?B?anFaa3A0R2M2Qm9CcXhOTnY5RTNJbU5COWxCdmJKa0FneUpYYWlobFdmc3kz?=
 =?utf-8?B?dmZZOUpIWkxRRnBXTGMxUVczbUFOQk1wZGpkUUxrUEVOVHdsT0RQbGJVWkp5?=
 =?utf-8?B?R1Z4MlJEemRxN0k1cW9JVlFTY0Q1TDQxT3cwN2FGWUsrbXNGemltVEVLZTJz?=
 =?utf-8?B?S1FiYnBFY2ViM2c2UHBtYlBMYmYwWG5LSk1Ya3Zid09vUjVobkY0OUVPdEhr?=
 =?utf-8?B?bkljYWFMMlJIWXE0akNvUFJSTitCazVMUU9qSUR1TExITkN5WlNFWEtWdWVI?=
 =?utf-8?B?YkpTRFFsTGtkNjNITVI2SC9ZKzVVV2dDZzVvZE4ySTVRanJva3J4Vk0yVnRQ?=
 =?utf-8?B?SnIyVmZybmU2ZXBuV3d2U3VsL3h2WEZOMUNxYWlHNlN6UjMyUGx4TzRmcWt4?=
 =?utf-8?B?M3RwRlRBTDIwdG1nTzlIQzVHWHJPRXRLa2FISlRic3Brb0YvZlhQemZKV1c4?=
 =?utf-8?B?UDNydzVpTEttUVd6MXlnTi9TdjJQYmw4UzM2SXpHekN5N2VrMmc1aW5PV1ZH?=
 =?utf-8?B?ZUlHSTRFR24wNnJSK3pqZjVWNE9CcjA4WDJGYVJDVzJwQnZNblA1aGx3NzA3?=
 =?utf-8?B?dXU2eEd1TFVKZG4yQ1R3eWNHc1ZZVDg1N3ZFQkM3YzBYMkJ6VWdGS0xPV2lM?=
 =?utf-8?B?am5KNHR3NUxsNlpic2hvVzc0U0R2Q2l3OXpyN3JhaGlWQVNjb2szSVdrMHhH?=
 =?utf-8?B?RUVnV3JhS0ZxWmgxZkhkRm5OTjBON0V6T255bnhieU5IVnBadXdzalRSdkJZ?=
 =?utf-8?B?amJYeXpLbDF4WlIwYlZYOWtWdStlbGJxZTZBZ2xlbmsxKzJwVjVPcEEwZklV?=
 =?utf-8?B?ekZmcjkrS0lKY1RnanVSZW81eTY4WDhXMDRvRTljc1F3ajJUZmVidy9qTEEr?=
 =?utf-8?B?UnRuTW9hOWhJTlRJZGhFam52T1dWcFhnMG5oamd2aUtwMVBsL3pKc1NmRytx?=
 =?utf-8?B?c2N1L1g4L1VEQzV1MGllVHlpaGYvcjN6dWgzTm5KVmhTVlA5b0M4YXRvUlhI?=
 =?utf-8?B?c0Y1UTF4L2h1bVNxU1NlcmZ0R1E3YVBpUDRra0NOZWoxM2dUVGRDc1VPb2xw?=
 =?utf-8?B?V0hFYkZZWjV5Qkx2dkdEL05NZnhGNFVyckVFYzZtOURhTDFWdjZ0WHJHRGY0?=
 =?utf-8?B?UEtmeEFaakNTb2JhcENqN1lvSUd0S2R4VEdkeUJsUXF6RVdQd3dLTTRGeGc4?=
 =?utf-8?B?RWE3bVR0cnBFZk1JL05GZGJWSnMrNWdSSUYzTEdBUUZSZ1c0aXE0MG4wS3FY?=
 =?utf-8?B?ZnpubXUxZ3dqU3huVVRzWWJLS3JLNE1rd21NY0txUy9ESjRIdkJ2cENYY0Zz?=
 =?utf-8?B?SlNibjRaSjNFZG5vY2NJN1BVVXhCRUJjSzcrREJ6ZUROM0k0Um9iRXc2NDZj?=
 =?utf-8?B?bzB6SWxGdkxaWHZWMitpQU1mVHM2WmQ4YU9oWUF0eXhacFp2M0w2NFh2RHhl?=
 =?utf-8?B?SXNmL0p1bDR2UU5qZzhVZ0N4NkR6aU1XcHQ4WGNCNjNBWUxVbzh0OEd3b0hz?=
 =?utf-8?B?Rm5GOWJ2RW1ibDVoT1ZDOUg4bldMTHM4cnVSSHI5cmp2M1NFcU1KODZ2SWtO?=
 =?utf-8?B?NSswQkx1TysyV0t3a01mbUt0WjFhbWhReGtQcGdCUEE1OEdLTjdqWFdxQ2hW?=
 =?utf-8?B?V0NXWFZXZXZJQ2ZyTTQ5a3V3VWVmdm9lQUttaXA4b09Salphbng3ZzBvTkww?=
 =?utf-8?B?RUlSOEFSUXlBS3dYamQ4aUw1bWxPQlAyZzZHN3BIdlJDeWZtUkVqTFErZGgz?=
 =?utf-8?Q?1PhrdaGUY0pvL5oF6rtO477+2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae74c51-6a11-40e2-9080-08db207521fb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 08:06:05.8172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cEsDZJ+Mj0HcqTIWT9xZfIOEqaOrJIttAGsVMuu5mrplSrOUf2VdlzQZzIftB8R2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5328
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1CD243EC68
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.80:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	URIBL_BLOCKED(0.00)[mail-mw2nam10on2080.outbound.protection.outlook.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: VPUM4X63LANFR3QTKYCAYNMWFFX5VPZK
X-Message-ID-Hash: VPUM4X63LANFR3QTKYCAYNMWFFX5VPZK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPUM4X63LANFR3QTKYCAYNMWFFX5VPZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDMuMjMgdW0gMDc6MzAgc2NocmllYiBBc2FoaSBMaW5hOg0KPiBPbiAwOS8wMy8yMDIz
IDA1LjE0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEkgdGhpbmsgeW91IG1lYW4gd2Fr
ZV91cF9pbnRlcnJ1cHRpYmxlKCkuIFRoYXQgd291bGQgYmUNCj4+PiBkcm1fc2NoZWRfam9iX2Rv
bmUoKSwgb24gdGhlIGZlbmNlIGNhbGxiYWNrIHdoZW4gYSBqb2IgY29tcGxldGVzLCB3aGljaA0K
Pj4+IGFzIEkga2VlcCBzYXlpbmcgaXMgdGhlIHNhbWUgbG9naWMgdXNlZCBmb3INCj4+PiBod19y
cV9jb3VudC9od19zdWJtaXNzaW9uX2xpbWl0IHRyYWNraW5nLg0KPj4gQXMgdGhlIGRvY3VtZW50
YXRpb24gdG8gd2FpdF9ldmVudCBzYXlzOg0KPj4NCj4+ICAgwqAqIHdha2VfdXAoKSBoYXMgdG8g
YmUgY2FsbGVkIGFmdGVyIGNoYW5naW5nIGFueSB2YXJpYWJsZSB0aGF0IGNvdWxkDQo+PiAgIMKg
KiBjaGFuZ2UgdGhlIHJlc3VsdCBvZiB0aGUgd2FpdCBjb25kaXRpb24uDQo+Pg0KPj4gU28gd2hh
dCB5b3UgZXNzZW50aWFsbHkgdHJ5IHRvIGRvIGhlcmUgaXMgdG8gc2tpcCB0aGF0IGFuZCBzYXkN
Cj4+IGRybV9zY2hlZF9qb2JfZG9uZSgpIHdvdWxkIGNhbGwgdGhhdCBhbnl3YXksIGJ1dCB3aGVu
IHlvdSByZWFkIGFueQ0KPj4gdmFyaWFibGUgdG8gZGV0ZXJtaW5lIHRoYXQgc3RhdGUgdGhlbiBh
cyBmYXIgYXMgSSBjYW4gc2VlIG5vdGhpbmcgaXMNCj4+IGd1YXJhbnR5aW5nIHRoYXQgb3JkZXIu
DQo+IFRoZSBkcml2ZXIgbmVlZHMgdG8gZ3VhcmFudGVlIHRoYXQgYW55IGNoYW5nZXMgdG8gdGhh
dCBzdGF0ZSBwcmVjZWRlIGENCj4gam9iIGNvbXBsZXRpb24gZmVuY2Ugc2lnbmFsIG9mIGNvdXJz
ZSwgdGhhdCdzIHRoZSBlbnRpcmUgaWRlYSBvZiB0aGUNCj4gQVBJLiBJdCdzIHN1cHBvc2VkIHRv
IHJlcHJlc2VudCBhIGNoZWNrIGZvciBwZXItc2NoZWR1bGVyIChvciBtb3JlDQo+IHNwZWNpZmlj
LCBidXQgbm90IG1vcmUgZ2xvYmFsKSByZXNvdXJjZXMgdGhhdCBhcmUgcmVsZWFzZWQgb24gam9i
DQo+IGNvbXBsZXRpb24uIE9mIGNvdXJzZSBpZiB5b3UgbWlzdXNlIHRoZSBBUEkgeW91IGNvdWxk
IGNhdXNlIGEgcHJvYmxlbSwNCj4gYnV0IHdoYXQgSSdtIHRyeWluZyB0byBzYXkgaXMgdGhhdCB0
aGUgQVBJIGFzIGRlc2lnbmVkIGFuZCB3aGVuIHVzZWQgYXMNCj4gaW50ZW5kZWQgZG9lcyB3b3Jr
IHByb3Blcmx5Lg0KPg0KPiBQdXQgYW5vdGhlciB3YXk6IGpvYiBjb21wbGV0aW9ucyBhbHdheXMg
bmVlZCB0byBjYXVzZSB0aGUgc2NoZWQgbWFpbg0KPiBsb29wIHRvIHJ1biBhbiBpdGVyYXRpb24g
YW55d2F5IChvdGhlcndpc2Ugd2Ugd291bGRuJ3QgbWFrZSBmb3J3YXJkDQo+IHByb2dyZXNzKSwg
YW5kIGpvYiBjb21wbGV0aW9ucyBhcmUgZXhhY3RseSB0aGUgc2lnbmFsIHRoYXQgdGhlDQo+IGNh
bl9ydW5fam9iKCkgY29uZGl0aW9uIG1heSBoYXZlIGNoYW5nZWQuDQo+DQo+PiBUaGUgb25seSBv
dGhlciBwb3NzaWJpbGl0eSBob3cgeW91IGNvdWxkIHVzZSB0aGUgY2FsbGJhY2sgY29ycmVjdGx5
DQo+PiB3b3VsZCBiZSB0byBjYWxsIGRybV9mZW5jZV9pc19zaWduYWxlZCgpIHRvIHF1ZXJ5IHRo
ZSBzdGF0ZSBvZiB5b3VyIGh3DQo+PiBzdWJtaXNzaW9uIGZyb20gdGhlIHNhbWUgZmVuY2Ugd2hp
Y2ggaXMgdGhlbiBzaWduYWxlZC4gQnV0IHRoZW4gdGhlDQo+PiBxdWVzdGlvbiBpcyBvbmNlIG1v
cmUgd2h5IHlvdSBkb24ndCBnaXZlIHRoYXQgZmVuY2UgZGlyZWN0bHkgdG8gdGhlDQo+PiBzY2hl
ZHVsZXI/DQo+IEJ1dCB0aGUgZHJpdmVyIGlzIHN1cHBvc2VkIHRvIGd1YXJhbnRlZSB0aGF0IHRo
ZSBvcmRlcmluZyBpcyBhbHdheXMgMS4NCj4gcmVzb3VyY2VzIGZyZWVkLCAyLiBmZW5jZSBzaWdu
YWxlZC4gU28geW91IGRvbid0IG5lZWQgdG8gY2hlY2sgZm9yIHRoZQ0KPiBmZW5jZSwgeW91IGNh
biBqdXN0IGNoZWNrIGZvciB0aGUgcmVzb3VyY2Ugc3RhdGUuDQoNClllYWgsIGJ1dCB0aGlzIGlz
IGV4YWN0bHkgd2hhdCB0aGUgZG1hX2ZlbmNlIGZyYW1ld29yayB0cmllZCB0byBwcmV2ZW50LiAN
CldlIHRyeSB2ZXJ5IGhhcmQgdG8gYXZvaWQgc3VjaCBzaWRlIGNoYW5uZWwgc2lnbmFsaW5nIDop
DQoNCkJ1dCBwdXR0aW5nIHRoYXQgaXNzdWUgYXNpZGUgZm9yIGEgbW9tZW50LiBXaGF0IEkgZG9u
J3QgZ2V0IGlzIHdoZW4geW91IA0KaGF2ZSBzdWNoIGludHJhIHF1ZXVlIGRlcGVuZGVuY2llcywg
dGhlbiB3aHkgY2FuJ3QgeW91IGNoZWNrIHRoYXQgYXQgYSANCm11Y2ggaGlnaGVyIGxldmVsPw0K
DQpJbiBvdGhlciB3b3JkcyBldmVuIHVzZXJzcGFjZSBzaG91bGQgYmUgYWJsZSB0byBwcmVkaWN0
IHRoYXQgZm9yIGl0J3MgDQpzdWJtaXNzaW9ucyBYIGFtb3VudCBvZiByZXNvdXJjZXMgYXJlIG5l
ZWRlZCBhbmQgd2hlbiBhbGwgb2YgbXkgDQpzdWJtaXNzaW9ucyBydW4gaW4gcGFyYWxsZWwgdGhh
dCB3b24ndCB3b3JrLg0KDQpBc2tpbmcgdGhlIGZpcm13YXJlIGZvciBhIHN0YXR1cyBpcyB1c3Vh
bGx5IGEgbWFnbml0dWRlcyBzbG93ZXIgdGhhbiANCmp1c3QgY29tcHV0aW5nIGl0IGJlZm9yZSBz
dWJtaXNzaW9uLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQoNCj4gSWYgdGhlIGNhbGxiYWNr
DQo+IHJldHVybnMgZmFsc2UgdGhlbiBieSBkZWZpbml0aW9uIHRoZSBmZW5jZSB3YXNuJ3QgeWV0
IHNpZ25hbGVkIGF0IHNvbWUNCj4gcG9pbnQgZHVyaW5nIGl0cyBleGVjdXRpb24gKGJlY2F1c2Ug
dGhlIHJlc291cmNlcyB3ZXJlbid0IHlldCBmcmVlZCksDQo+IGFuZCBzaW5jZSBpdCB3b3VsZCBi
ZSBpbiB0aGUgd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlKCkgY2hlY2sgcGF0aCwgYnkNCj4gZGVm
aW5pdGlvbiB0aGUgZmVuY2Ugc2lnbmFsaW5nIGF0IGFueSBwb2ludCBkdXJpbmcgb3IgYWZ0ZXIg
dGhlIGNoZWNrDQo+IHdvdWxkIGNhdXNlIHRoZSB0aHJlYWQgdG8gd2FrZSB1cCBhZ2FpbiBhbmQg
cmUtY2hlY2suDQo+DQo+IFRocmVhZCAxICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgVGhyZWFkIDINCj4gMS4gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlKCkgYXJtcyB3
cSAgICAgICAgICAgICAxLiBGcmVlIHJlc291cmNlcw0KPiAyLiBjYW5fcnVuX2pvYigpIGNoZWNr
cyByZXNvdXJjZXMgICAgICAgICAgICAgICAgIDIuIFNpZ25hbCBmZW5jZQ0KPiAzLiB3YWl0X2V2
ZW50X2ludGVycnVwdGlibGUoKSBzbGVlcHMgb24gd3EgICAgICAgIDMuIEZlbmNlIHdha2VzIHVw
IHdxDQo+IDQuIGxvb3ANCj4NCj4gVGhlcmUgaXMgbm8gcG9zc2libGUgaW50ZXJsZWF2aW5nIG9m
IHRob3NlIHNlcXVlbmNlcyB0aGF0IGxlYWRzIHRvIGENCj4gbG9zdCBldmVudCBhbmQgdGhlIHRo
cmVhZCBub3Qgd2FraW5nIHVwOg0KPiAtIElmIFQyLjMgaGFwcGVucyBiZWZvcmUgVDEuMSwgdGhh
dCBtZWFucyBUMi4xIGhhcHBlbmVkIGVhcmxpZXIgYW5kIFQxLjINCj4gbXVzdCByZXR1cm4gdHJ1
ZS4NCj4gLSBJZiBUMi4zIGhhcHBlbnMgYWZ0ZXIgVDEuMSBidXQgYmVmb3JlIFQxLjMsIHRoZSB3
cSBjb2RlIHdpbGwgZW5zdXJlDQo+IHRoZSB3cSBkb2VzIG5vdCBzbGVlcCAob3IgaW1tZWRpYXRl
bHkgd2FrZXMgdXApIGF0IFQxLjMgc2luY2UgaXQgd2FzDQo+IHNpZ25hbGVkIGR1cmluZyB0aGUg
Y29uZGl0aW9uIGNoZWNrLCBhZnRlciB0aGUgd3Egd2FzIGFybWVkLiBBdCB0aGUgbmV4dA0KPiBj
aGVjayBsb29wLCBUMS4yIHdpbGwgdGhlbiByZXR1cm4gdHJ1ZSwgc2luY2UgVDIuMSBhbHJlYWR5
IGhhcHBlbmVkDQo+IGJlZm9yZSBUMi4zLg0KPiAtIElmIFQyLjMgaGFwcGVucyBkdXJpbmcgVDEu
MywgdGhlIHdxIHdha2VzIHVwIG5vcm1hbGx5IGFuZCBkb2VzIGFub3RoZXINCj4gY2hlY2ssIGFu
ZCBhdCB0aGF0IHBvaW50IFQxLjIgcmV0dXJucyB0cnVlLg0KPg0KPiBRRUQuDQo+DQo+IH5+IExp
bmENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
