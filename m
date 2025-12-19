Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD020CD01DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 14:51:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9C28400F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 13:51:03 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012017.outbound.protection.outlook.com [52.101.53.17])
	by lists.linaro.org (Postfix) with ESMTPS id D7D6E3F789
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 13:50:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=tYUcVGFo;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rpt55L1s1smHvdJBELrN+rXCgiscUq1fRsPZo1aCaAj1MW+Gu7FUPPFrVctxqBvljqiCtJ8mvWbCu7DdlcJKedo+IdXMrk4HOev5Y2RCtKoUnikjWK3GynsEEtOCtCpXT3ugntfCP/uZnNupQbY7w7o/nQjaxSFt5BNi3x1AK/+GHtIOTWLZOV1T84t/afcbwj9NH2EMPWccUa6L+VmiE4XLbTgs1T0nLf4z5PeptHUYzA5h+5D0APsXrEBTtwvtF00iPVDa3pFcYabk2CDiYEAouTJCtA8rcU2uRhZqaMpogDs1bTXovJLdK9cjSOkdGtQPKTiyrimoErYPox7MAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HffFPp18LcCJhtX+HWXS+oBG9ZPTU9zfsOPw8T3rak8=;
 b=UWTwb1WBbBdqGZ7cwJR4V3m1LfkSqKF3eGcmDDZ5Q+rYvw4HdzDTa2X1Asz9A5DPVb6ISqZQeBzc5UB/+uhTabMF9uK+ze+rj8NZ0iA7r7uuaU19GunVdfQN7T8xS70N/OfVUWLt86ukffFdb3fn54j/xqGzRpw50WC7DKC9tO9BeDn1u1qcxDDXsdNoowN64xI6mwP3cdqw5S7yZJRM16kOkvDu5aYPvLoxtUG0EqYHF23bxxdlurF6WMyMmsVLapJS9k9xd+X1N5BsCl/3oG7sd3IWtx6oOz+1Hj+WtEvOhK4BIloBNnzkiy7eo3ci+D9FIb/HKEKacxorL7imGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HffFPp18LcCJhtX+HWXS+oBG9ZPTU9zfsOPw8T3rak8=;
 b=tYUcVGFo8WzCh8/wXHSuLcr26kHszebxDOE486G5kec4wmZyCyxWtxvrVJoZWxmVO5J8OvTx9/PlghPUZ2d/ikFKZ7gTSrnGMs908Drbquk80Dwa+DaVUx2cbrMXq9UgUH9F0VD9dY6THksxJwDjuD8KBcT4xNnWte+1bIafWBw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7770.namprd12.prod.outlook.com (2603:10b6:8:138::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 13:50:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 13:50:55 +0000
Message-ID: <5eda1755-865c-4bb0-a1a0-a4e6dac5388c@amd.com>
Date: Fri, 19 Dec 2025 14:50:50 +0100
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@redhat.com>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
 <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
 <20251219-large-daffy-monkey-74665d@houat>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251219-large-daffy-monkey-74665d@houat>
X-ClientProxiedBy: YT4PR01CA0077.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:ff::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7770:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d42afe9-9a38-4d06-c2fe-08de3f05a1b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WG0zdTU2SjF0UXNOWXJGK0lXdWJvbGJxZkVRcGZ1aXpwSHBDZ1F1ZXFQMzdn?=
 =?utf-8?B?bUE2OHNqKzZXTUMwVUpBYjlubWRjSklkN1BxNVpLdmxibk5tZkxjeHp0Nlpk?=
 =?utf-8?B?azlHcFYrTDZjb3ZHaHBucGFTRDc1dTlzc2k0VDZzYk10cmI0YzFBeThKS1Y1?=
 =?utf-8?B?Q0RlRm8wbkRLVU5uSTE4b3FBMnd5YXBYTzB0ZkIyQXBXU1lnR21QaDNONVVH?=
 =?utf-8?B?OGtTZHNzbDVoQnZIT2RHNk9VRXZvNlRRNjVFTlRkdU83bkxGbnBUUTFNS0JQ?=
 =?utf-8?B?TjR1R2xWTVA0ZHZRa0ZkZ2FtbUF2RmNCdTFxREtCeTlIZ0duak0vR2o3Vk9N?=
 =?utf-8?B?NDhxY3gyOXVLWEkrVmk5amo2VmRXQVF3V2llTjE0aHVsSFZrd0RFNVFwREJy?=
 =?utf-8?B?NHV0SG9yaDZyTk50WHMvaWFlbWZwV2J1ekl0NW5xc2ZhTmR6K3BKdlFPVHpW?=
 =?utf-8?B?ak5MQ1U3Wnl1dlkvZHJCa0dBaGx2VEs4MnM3bkx2Z2lmd29nTTA2VEExYUpy?=
 =?utf-8?B?VjBIS3h4ZWc3L2VjUTI4bkREN2dMUk5scGZ5NEtWYXR5VHV1MU5jWkVYL2g2?=
 =?utf-8?B?dlNkS2FuOG15Qk1UWmtjK3F6SUFnQzhtdDkyMWpDbUZZRTdrWVRnMFpjdll5?=
 =?utf-8?B?WVFzYzdMYzBHWWxkU2ZtaGc2czBZNVFGU1lEOFd3TzVXK3lhNVd0OTRFTVBB?=
 =?utf-8?B?VnVZRzFlZXdMekwyZTFYZWlvdW5xcjlCeHQxTEZKb0ozTzZxa1gzWlJ4dVZa?=
 =?utf-8?B?bDRrU09MdkRTYTE5QzhaME8ySHplN0dPbjZyTWluejhNckpVV0FUNDdoRUJm?=
 =?utf-8?B?UFovaEs4MlRvaldkZW9QczlYY3pjS3BsT0xlQkNFWTY1Ris2UlFYMFp4ZVUz?=
 =?utf-8?B?VDFTaXVOUUZrMWs1azM3ME5XeFhDNTY4TEVVSnBQNXJLcE1ySHIzclJIczBu?=
 =?utf-8?B?bi9mN2hSVWRzMEpmU3RvUnlsVGR6V1ptTnI5V1hBSHZIQitUYStOTUxkUE1w?=
 =?utf-8?B?TkZxekJ1emtPU0tjbmFoREMyV0lMbXpuaysrbkE1T09WWUZwWkVVeFpHYXNK?=
 =?utf-8?B?WDBzTEozVDVhekhhSG1lTFpvc1NaQ0VOTEFpUElWaDBzOFRvSkhadHh3a1NL?=
 =?utf-8?B?L0JWZVdrUExXeWpTcnl3YTVvMTdudDYzZFYvSXZPb2lCSjNVN0w5ZmtjazR2?=
 =?utf-8?B?NHRRcm1mRkc3K3VpQVNveVZVR2ZZWXBrVHl6WGFtMHFyZUJXVm5OUjdKSUFR?=
 =?utf-8?B?emxQRjlHbmZYbmwxampWY0s2dGNWdmVYZFBXZk9TQ0JxbnFhaWFOUDh2M0JJ?=
 =?utf-8?B?TktHQUQyZktLcGpKVHQ4WmRPS2FwdU9ZZnltQ21TWWJjaFl4b0p5R2FvS2d0?=
 =?utf-8?B?MVQ2L2ZaY0ZDUEREMjMrSkxQZ0srMEZVR0YwY0Z2cG9vckFobTRXRDRtSUkx?=
 =?utf-8?B?SUhFaGczNGRvMXdqd09HQUpySFl5N2V4Mk9keWZYZW4ybVVWdkY2bi9wVTZ3?=
 =?utf-8?B?ZVpmNEMyYy9Gb2NGNVF5dzRreVhqdGVYLy9qV0ZhbU8yalN6S09wbnFpaDZQ?=
 =?utf-8?B?bU91aXkvSUFwb3IxdmQ5VWw5Y0tqTHRBVnlMM3dvQmNidjJEMWQwTW52ZVlu?=
 =?utf-8?B?SzcybnVYOS9jMUt6SGVObXlaMzJpVnRBVTB5T0RkQWNUTzJqN1ZRbzRhbDM1?=
 =?utf-8?B?RmFCdXRnQVZTUml1TEQyNjFQRDdjVmFtMDF4RHMxbzZKK3BLTW9LSkhzWkZv?=
 =?utf-8?B?MGU4SExwLytnSmo5TVhTdUU1ek9QNHNCdE5vZENnbzJLM2VBODFXS1VDeVRN?=
 =?utf-8?B?MnlLZFBpZHpZUytqVzBORmFSUy9uWDVMb2hHWkRwK3l1Z3gvZXhSMUdsZW5o?=
 =?utf-8?B?MW9SQUJUV01YanVRcDMxYjVLeGhuNHNIeDU0Z0xyc2kzRHpiS0lqdzF5MlJK?=
 =?utf-8?Q?+/UWtASrOViHDIvQaYfR7jwEExQZpjSO?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTlGalRjRE1FVjJ1RzdNWjU3ZWYxYmVORWs2NlliQmlkOGxsaEx3RVd3cmdY?=
 =?utf-8?B?R1I4dm1ocmdVYUJkRmowTW4rbFpRbGR0RHVCNys1a1cwSTcrZTZuQjl2QUJ1?=
 =?utf-8?B?anlSYjUvcFBpS1oxU0VPVFdCRW92akY5eGplYmhpQXo1MDdUS1ErTkVqRnVQ?=
 =?utf-8?B?VEZMaFI2NU5rY3VEZkFBV2YvUkxZSkJFREZjeC9VaXVGK05LVEg2Q0dUMzJs?=
 =?utf-8?B?VUZHV3Z6RENtMDRjWENqMXMyTElSTkZQSjJ1LzYySVNYWHZ0N1V6YUNBODNO?=
 =?utf-8?B?eWRTbkIySXFpbURiNFBLOHhTMVBWcEpjeDl6WDYwQzlvL3U5QndyS28wQktx?=
 =?utf-8?B?TW5EMk90SHFMYllQcHJaY0h0QnhMMm5PTEtmTXB1bE5JMFZvZEs4b3dWbHV3?=
 =?utf-8?B?ZXcvSnlhbjFiVkRSN0p0RTdsSE9FczlGVDIzN1diTXFKcDduRVNkWmkrMjlG?=
 =?utf-8?B?dVZQaTZ0a1Y4Z3pJK29qRVI4SmZTeU5Ecy9QcVpRQncySmtZOGE1MmdsTnhm?=
 =?utf-8?B?cW9DRWI3eDBEdERGRk1WZXkzUHB3b21taS9EZnZXOHErZlpCb1EvdXRvRHp6?=
 =?utf-8?B?VHZyUWxHbm1xZnJFVE1BYk1oTFcwbjk0Uk5vNCtyb0NXczJHV0hMbERPUCtS?=
 =?utf-8?B?WDhTeWtjdEdmUk81cmMwSzNRU1dVUlgyMDNhR21Zd1NXbDJUYVFZajBFazds?=
 =?utf-8?B?Qk5wRTJ2YllHTmlXZGhtd1dRc25LSVNVS0xwNExkMFZDN1lTS3BSVTZiaEdJ?=
 =?utf-8?B?T1VlWks4OUhPTHJRcithZVpwbzFsSzR1YkU1WlJEcVhMVEo4VUJFR1JoS1VP?=
 =?utf-8?B?anlQZDJBRHc5RTZ5K05NNE5vWFdVbnEyNy9mK24vbUJZMnFWcUxnUFE1dVph?=
 =?utf-8?B?STFNaSs3SFFpbEhCUjFZa0U0cEptVVZjN3E3a2NSdVBQUjg4RmgxbmNxZmV1?=
 =?utf-8?B?Ulg1anh0UHJLaVhTQ3JOTkxwZnVKaTlGMzVxODJEbmdSYWdNdU9XWWRnVlhi?=
 =?utf-8?B?ajNCWHU5QVRDY0prQWQxb1Yva0U4R2lUTzBxUlpxbDRZT0xteVljWUVydWJC?=
 =?utf-8?B?aDRSb010RFRiUm9kMVR6TXkwdy9NZk5abzhLNDJTWTYyWmVFdkhDSjhETnNQ?=
 =?utf-8?B?T0lRdGI5RjlDaGNCTW11TmlmcXZ1NmlULzJYS05paDhyL2owcTlwME5NbE45?=
 =?utf-8?B?ZVRySnZKbEtpNXJPVFEvZUVON2M0Z1RMQmJwbjVVekxrOVB0RjJJU2xkeDg4?=
 =?utf-8?B?cjJ0WXVTYnZ3T1FYaWUybUN5dWYxQlZpZWVZZ05CajNxa0lmN3lNcUJOQXZR?=
 =?utf-8?B?WWpzR3g0MkpRMGpwVXFZbGI1dHRmVENFdEV5bW1kUzN6YjQ5cUNkY09DRDhH?=
 =?utf-8?B?ZUhicC9RTmJoVEdvTFZOaXU0ZjJHYjBhNnc3Syt0UnhLY0YzQWlLbGVBZFEy?=
 =?utf-8?B?c0pXbnBhNnhJNnRnSzQ3QlBLK1ZvL2g5cmx5WWNOaU1NbjBiWEh2UHhIL0Z0?=
 =?utf-8?B?SEIvcWtid3p2dEsweUxUbDAvRHdXTnIrSTk5K1J6aHJxUDBiK2xPcG5QTFhl?=
 =?utf-8?B?VGs1ZE0zYjd6R1l6T3lNMy9QT3NyWk9OdnFZMy8rZ0RvdW95RG5EalhCczFh?=
 =?utf-8?B?L0VDOVk0NDZMc25KVmM5dXJuZTg3Yld6NVlTYWc4c3BXRHBEQkRseE0wNkZj?=
 =?utf-8?B?QkxFS011WjVERHRidmR0QjNrSElERFQ5d3dkUGpvVDZNczFXcjkvUm1UOHZM?=
 =?utf-8?B?YlBJUjl4ZFIrVDRKK0VZVEhrUXQwOEF2eGVXL1lBMFYyTkdTN0dEaDhuck1m?=
 =?utf-8?B?cllxNHdoMlRSWHZadS9FZEJsSFdnU05pcmZRTVZmc3V5cDZCM29QVmtrbjBO?=
 =?utf-8?B?YXRwM3FQTUQ2ZVpFcDhZci8wWW1lVDh0MUlFQzMzY2MweTZnQjdzaXY3TFlU?=
 =?utf-8?B?ek1BY3JScmFSYjVSNDNEYzBLZUl2Ui9YeGs5ckQ0R1EweWtIdTduTkVyU3JL?=
 =?utf-8?B?eVo2a0p0L2xIVEhpTEhsMHBuQkpwclZSNjAxdmMvWHI3clF2blppeUk4ejZt?=
 =?utf-8?B?bzEvckRWOGR3b1h5MHkvSTZiQ0Fub1dhVWg1L3JkR1dTZFlvMmhYMzR1ZC9h?=
 =?utf-8?Q?Yin0Vnvx2U774ed0CYgGg76Uf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d42afe9-9a38-4d06-c2fe-08de3f05a1b2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 13:50:55.4877
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mTXlhUtns2Kxudjn7qYz7tHfU00H1IMgheLiUhW9dYWZlMzJhH6axIvHj8qUp4fn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7770
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.17:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	BLOCKLISTDE_FAIL(0.00)[52.101.53.17:server fail];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D7D6E3F789
X-Spamd-Bar: ----
Message-ID-Hash: 3ZRK3ORAAPZWAWGSWEV3DTNNOPNBZIMN
X-Message-ID-Hash: 3ZRK3ORAAPZWAWGSWEV3DTNNOPNBZIMN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZRK3ORAAPZWAWGSWEV3DTNNOPNBZIMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTkvMjUgMTE6MjUsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IE9uIE1vbiwgRGVjIDE1
LCAyMDI1IGF0IDAzOjUzOjIyUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBP
biAxMi8xNS8yNSAxNDo1OSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCi4uLg0KPj4+Pj4gVGhlIHNo
YXJlZCBvd25lcnNoaXAgaXMgaW5kZWVkIGJyb2tlbiwgYnV0IGl0J3Mgbm90IG1vcmUgb3IgbGVz
cyBicm9rZW4NCj4+Pj4+IHRoYW4sIHNheSwgbWVtZmQgKyB1ZG1hYnVmLCBhbmQgSSdtIHN1cmUg
cGxlbnR5IG9mIG90aGVycy4NCj4+Pj4+DQo+Pj4+PiBTbyB3ZSByZWFsbHkgaW1wcm92ZSB0aGUg
Y29tbW9uIGNhc2UsIGJ1dCBvbmx5IG1ha2UgdGhlICJhZHZhbmNlZCINCj4+Pj4+IHNsaWdodGx5
IG1vcmUgYnJva2VuIHRoYW4gaXQgYWxyZWFkeSBpcy4NCj4+Pj4+DQo+Pj4+PiBXb3VsZCB5b3Ug
ZGlzYWdyZWU/DQo+Pj4+DQo+Pj4+IEkgc3Ryb25nbHkgZGlzYWdyZWUuIEFzIGZhciBhcyBJIGNh
biBzZWUgdGhlcmUgaXMgYSBodWdlIGNoYW5jZSB3ZQ0KPj4+PiBicmVhayBleGlzdGluZyB1c2Ug
Y2FzZXMgd2l0aCB0aGF0Lg0KPj4+DQo+Pj4gV2hpY2ggb25lcz8gQW5kIHdoYXQgYWJvdXQgdGhl
IG9uZXMgdGhhdCBhcmUgYWxyZWFkeSBicm9rZW4/DQo+Pg0KPj4gV2VsbCBldmVyeWJvZHkgdGhh
dCBleHBlY3RzIHRoYXQgZHJpdmVyIHJlc291cmNlcyBhcmUgKm5vdCogYWNjb3VudGVkIHRvIG1l
bWNnLg0KPiANCj4gV2hpY2ggaXMgYSB0aGluZyBvbmx5IGJlY2F1c2UgdGhlc2UgYnVmZmVycyBo
YXZlIG5ldmVyIGJlZW4gYWNjb3VudGVkDQo+IGZvciBpbiB0aGUgZmlyc3QgcGxhY2UuDQoNClll
YWgsIGNvbXBsZXRlbHkgYWdyZWUuIEJ5IG5vdCBhY2NvdW50aW5nIGl0IGZvciBzdWNoIGEgbG9u
ZyB0aW1lIHdlIGVuZGVkIHVwIHdpdGggcGVvcGxlIGRlcGVuZGluZyBvbiB0aGlzIGJlaGF2aW9y
Lg0KDQpOb3QgbmljZSwgYnV0IHRoYXQncyB3aGF0IGl0IGlzLg0KDQo+IFNvIEkgZ3Vlc3MgdGhl
IGNvbmNsdXNpb24gaXMgdGhhdCB3ZSBzaG91bGRuJ3QNCj4gZXZlbiB0cnkgdG8gZG8gbWVtb3J5
IGFjY291bnRpbmcsIGJlY2F1c2Ugc29tZW9uZSBzb21ld2hlcmUgbWlnaHQgbm90DQo+IGV4cGVj
dCB0aGF0IG9uZSBvZiBpdHMgYXBwbGljYXRpb24gd291bGQgdGFrZSB0b28gbXVjaCBSQU0gaW4g
dGhlDQo+IHN5c3RlbT8NCg0KV2VsbCB3ZSBkbyBuZWVkIHNvbWUga2luZCBvZiBzb2x1dGlvbiB0
byB0aGUgcHJvYmxlbS4gRWl0aGVyIGhhdmluZyBzb21lIHNldHRpbmcgd2hlcmUgeW91IHNheSAi
VGhpcyBtZW1jZyBsaW1pdCBpcyBpbmNsdXNpdmUvZXhjbHVzaXZlIGRldmljZSBkcml2ZXIgYWxs
b2NhdGVkIG1lbW9yeSIgb3IgaGF2ZSBhIGNvbXBsZXRlbHkgc2VwYXJhdGUgbGltaXQgZm9yIGRl
dmljZSBkcml2ZXIgYWxsb2NhdGVkIG1lbW9yeS4NCg0KS2V5IHBvaW50IGlzIHdlIGhhdmUgYm90
aCB1c2UgY2FzZXMsIHNvIHdlIG5lZWQgdG8gc3VwcG9ydCBib3RoLg0KDQo+Pj4+IFRoZXJlIGhh
cyBiZWVuIHNvbWUgd29yayBvbiBUVE0gYnkgRGF2ZSBidXQgSSBzdGlsbCBoYXZlbid0IGZvdW5k
IHRpbWUNCj4+Pj4gdG8gd3JhcCBteSBoZWFkIGFyb3VuZCBhbGwgcG9zc2libGUgc2lkZSBlZmZl
Y3RzIHN1Y2ggYSBjaGFuZ2UgY2FuDQo+Pj4+IGhhdmUuDQo+Pj4+DQo+Pj4+IFRoZSBmdW5kYW1l
bnRhbCBwcm9ibGVtIGlzIHRoYXQgbmVpdGhlciBtZW1jZyBub3IgdGhlIGNsYXNzaWMgcmVzb3Vy
Y2UNCj4+Pj4gdHJhY2tpbmcgKGUuZy4gdGhlIE9PTSBraWxsZXIpIGhhcyBhIGdvb2QgdW5kZXJz
dGFuZGluZyBvZiBzaGFyZWQNCj4+Pj4gcmVzb3VyY2VzLg0KPj4+DQo+Pj4gQW5kIHlldCBoZWFw
IGFsbG9jYXRpb25zIGRvbid0IG5lY2Vzc2FyaWx5IGhhdmUgdG8gYmUgc2hhcmVkLiBCdXQgdGhl
eQ0KPj4+IGFsbCBoYXZlIHRvIGJlIGFsbG9jYXRlZC4NCj4+Pg0KPj4+PiBGb3IgZXhhbXBsZSB5
b3UgY2FuIHVzZSBtZW1mZCB0byBiYXNpY2FsbHkga2lsbCBhbnkgcHJvY2VzcyBpbiB0aGUNCj4+
Pj4gc3lzdGVtIGJlY2F1c2UgdGhlIE9PTSBraWxsZXIgY2FuJ3QgaWRlbnRpZnkgdGhlIHByb2Nl
c3Mgd2hpY2ggaG9sZHMNCj4+Pj4gdGhlIHJlZmVyZW5jZSB0byB0aGUgbWVtb3J5IGluIHF1ZXN0
aW9uLiBBbmQgdGhhdCBpcyBhICpNVUNIKiBiaWdnZXINCj4+Pj4gcHJvYmxlbSB0aGFuIGp1c3Qg
aW5hY2N1cmF0ZSBtZW1jZyBhY2NvdW50aW5nLg0KPj4+DQo+Pj4gV2hlbiB5b3UgZnJhbWUgaXQg
bGlrZSB0aGF0LCBzdXJlLiBBbHNvLCB5b3UgY2FuIHVzZSB0aGUgc3lzdGVtIGhlYXAgdG8NCj4+
PiBEb1MgYW55IHByb2Nlc3MgaW4gdGhlIHN5c3RlbS4gSSdtIG5vdCBzYXlpbmcgdGhhdCB3aGF0
IHlvdSdyZSBjb25jZXJuZWQNCj4+PiBhYm91dCBpc24ndCBhbiBpc3N1ZSwgYnV0IGxldCdzIG5v
dCBicnVzaCBvZmYgb3RoZXIgcGVvcGxlIGxlZ2l0aW1hdGUNCj4+PiBpc3N1ZXMgYXMgd2VsbC4N
Cj4+DQo+PiBDb21wbGV0ZWx5IGFncmVlLCBidXQgd2Ugc2hvdWxkIHByaW9yaXRpemUuDQo+Pg0K
Pj4gVGhhdCBkcml2ZXIgYWxsb2NhdGVkIG1lbW9yeSBpcyBub3QgbWVtY2cgYWNjb3VudGVkIGlz
IGFjdHVhbGx5IHVBUEksDQo+PiBlLmcuIHRoYXQgaXMgbm90IHNvbWV0aGluZyB3aGljaCBjYW4g
ZWFzaWx5IGNoYW5nZS4NCj4+DQo+PiBXaGlsZSBmaXhpbmcgdGhlIE9PTSBraWxsZXIgbG9va3Mg
cGVyZmVjdGx5IGRvYWJsZSBhbmQgd2lsbCB0aGVuIG1vc3QNCj4+IGxpa2VseSBhbHNvIHNob3cg
YSBiZXR0ZXIgcGF0aCBob3cgdG8gZml4IHRoZSBtZW1jZyBhY2NvdW50aW5nLg0KPiANCj4gSSBk
b24ndCBuZWNlc3NhcmlseSBkaXNhZ3JlZSwgYnV0IHdlIGRvbid0IG5lY2Vzc2FyaWx5IGhhdmUg
dGhlIHNhbWUNCj4gcHJpb3JpdGllcyBlaXRoZXIuIFlvdXIgdXNlLWNhc2VzIGFyZSBwcm9iYWJs
eSBxdWl0ZSBkaWZmZXJlbnQgZnJvbQ0KPiBtaW5lLCBhbmQgdGhhdCdzIG9rLiBCdXQgdGhhdCdz
IHByZWNpc2VseSB3aHkgYWxsIHRoZXNlIGRpc2N1c3Npb25zDQo+IHNob3VsZCBiZSBtYWRlIG9u
IHRoZSBNTCB3aGVuIHBvc3NpYmxlLCBvciBhdCBsZWFzdCBoYXZlIHNvbWUgbm90ZXMgd2hlbg0K
PiBhIGRpc2N1c3Npb24gaGFzIGhhcHBlbmVkIGF0IGEgY29uZmVyZW5jZSBvciBzb21ldGhpbmcu
DQo+IA0KPiBTbyBmYXIsIG15IHdob2xlIGV4cGVyaWVuY2Ugd2l0aCB0aGlzIHRvcGljLCBkZXNw
aXRlIGJlaW5nIHRoZSBvbmx5IG9uZQ0KPiAoYWZhaWspIHNlbmRpbmcgcGF0Y2hlcyBhYm91dCB0
aGlzIGZvciB0aGUgbGFzdCAxLjV5LCBpcyB0aGF0IGV2ZXJ5dGltZQ0KPiBzb21lIHdvcmsgb24g
dGhpcyBpcyBkb25lIHRoZSBhbnN3ZXIgaXMgIm9oIGJ1dCB5b3Ugc2hvdWxkbid0IGhhdmUNCj4g
d29ya2VkIG9uIGl0IGJlY2F1c2Ugd2UgY29tcGxldGVseSBjaGFuZ2VkIG91ciBtaW5kIiwgYW5k
IHRoYXQncyBwcmV0dHkNCj4gZnJ1c3RyYXRpbmcuDQoNCldlbGNvbWUgdG8gdGhlIGNsdWIgOikN
Cg0KSSd2ZSBhbHJlYWR5IHBvc3RlZCBwYXRjaGVzIHRvIHN0YXJ0IGFkZHJlc3NpbmcgYXQgbGVh
c3QgdGhlIE9PTSBraWxsZXIgaXNzdWUgfjEwIHllYXJzIGFnby4NCg0KVGhvc2UgcGF0Y2hlcyB3
ZXJlIG5vdCB3ZWxsIHJlY2VpdmVkIGJlY2F1c2UgYmFjayB0aGVuIGRyaXZlciBtZW1vcnkgd2Fz
IG5lZ2xpZ2libGUgYW5kIHRoZSBwcm9ibGVtIHNpbXBseSBkaWRuJ3QgaHVydCBtdWNoLg0KDQpC
dXQgYnkgbm93IHdlIGhhdmUgR1BVcyBhbmQgQUkgYWNjZWxlcmF0b3JzIHdoaWNoIGVhdCB1cCA5
MCUgb2YgeW91ciBzeXN0ZW0gbWVtb3J5LCBzZWN1cml0eSByZXNlYXJjaGVycyBzdHVtYmxpbmcg
b3ZlciBpdCBhbmQgSUlSQyBldmVuIG11bHRpcGxlIENWRSBudW1iZXJzIGZvciBzb21lIG9mIHRo
ZSByZXN1bHRpbmcgaXNzdWVzLi4uDQoNCkkgc2hvdWxkIHByb2JhYmx5IGRpZyBpdCB1cCBhbmQg
cmUtc2VuZCBteSBwYXRjaCBzZXQuDQoNCkhhcHB5IGhvbGlkYXlzLA0KQ2hyaXN0aWFuLg0KDQo+
IA0KPiBNYXhpbWUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
