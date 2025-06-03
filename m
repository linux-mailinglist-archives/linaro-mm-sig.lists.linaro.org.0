Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC194ACC8EB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 16:18:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A086345748
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 14:18:51 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2051.outbound.protection.outlook.com [40.107.101.51])
	by lists.linaro.org (Postfix) with ESMTPS id 64F3C44010
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 14:18:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="uO9J/oUs";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZb0YeeJTIF2ZNa3H4GjN7yOEJ/DHOzMwvSKGz/W4MEDGL5ahl6JEAyXwIirSMgdhHAKb+9+NQAKcgPuDKeAOaf7zjwu+iSaUmxdHTDFmreAXp1WVKcXAlTNruBU6EAH7TxsJGwl0dNfcSFRod5QGr26sercV9iRHFj4tn4f1IbFmb9AkHJA2wTdWeQrO/pU809ECj8P4SuEXPZqzuSJ0FUvrg4xzFFc1JJKxrcm6Za1QzMPnoq5Ocdisdjav8KmbUpvJHXXEtkfQoyIQrZnJs7+FFV0Z2xbBG62mZB3wBqrOw6FEmO4ufvRJt4wHq4dnb/SzosCd/EOUBEIkZPRzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dRkfjBJwjz9F33JbcWXxiaXaXaBniiCUMF4JZmjhrwo=;
 b=aW1U7sa84vs9HGjDM7jby1LLd7Ao95I7b0uTuJM+eYo3Fsxrcea3KZ68a/T5cxeRpXO2OUJu3lKLkXCHnBp6XZj5ZgudPWLIaLikKGBrT3v15R7eAUjIoNHLJFjd56GUc16t18K6o8YcB+wLT0bfLcZVCLUjOXTHuAUUdtc0WJvKXlW59A3R7uOSLcXYyWeh4WdrKtuHwg8/5nPqnT8ldP37wb72YGGgOWocqxqVNSsLR2m3M9z38Z88tkTUPHUVxgZF2Oe4op1ZBUAfHea7p9BzyhYSZYvMM0zxdiWWWtkMtj8UZAanS7JZgniiCcT4e7qxniq1DWT46t+YrhMWDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dRkfjBJwjz9F33JbcWXxiaXaXaBniiCUMF4JZmjhrwo=;
 b=uO9J/oUsnNvd7hnSI+OtLmOobpsEyWp8O/d7IbaupzqkHE86VafJHddU1MYjXZ2VTVApf/q7PMLKH+D4Nl/1pUCrt9cfMJU7nxp+aZDc586JJadZYHqRo204EE+92hs23fAYDMKL+q1tEYR00ki5hsv//vVFOozLNeYPS4vxWd8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7169.namprd12.prod.outlook.com (2603:10b6:930:5e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Tue, 3 Jun
 2025 14:18:32 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 3 Jun 2025
 14:18:32 +0000
Message-ID: <924ac01f-b86b-4a03-b563-878fa7736712@amd.com>
Date: Tue, 3 Jun 2025 16:18:22 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aD72alIxu718uri4@infradead.org>
X-ClientProxiedBy: FR2P281CA0118.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7169:EE_
X-MS-Office365-Filtering-Correlation-Id: b21eb87b-d161-464c-073e-08dda2a984e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aXEyTzI0M2MvaXZYV3FDdFRMVEZsb3hmS09RczA0TmJZdzdjTjA3UWVIMWI5?=
 =?utf-8?B?M0dQaHhmckZqSzhGdkdoeUdzczBtc1k1K0tvMitFWnRYUlZ2OGhxOTA1MzN1?=
 =?utf-8?B?eldLSTVyd3BsNVlxZDFobDQ2TitROEFwc3pCMEYvdjlOdzl4c09zRmF4dlhW?=
 =?utf-8?B?NkdTWWVjN3JGUlVYRU94K2Vhc2dZS2tsekh3c1pLdk5QSG5CVWZtbmhUcm9T?=
 =?utf-8?B?MDcvMDQ3TFMwZDVQWksvV2tFMkNDd2VBU0JBV1VWUklQdyt4aUdMWG0xdnEw?=
 =?utf-8?B?QXozb2FZNWRKL0VhRERYMmNtL3VDYXRLT0VqVmJpQUg2em5mS1crcXBiZkRi?=
 =?utf-8?B?c2M1UFNIamZvL3JpN2NWK1h5N3VENXUrSFBoQXpmOFJvbEpUcVN6SEdQM3F0?=
 =?utf-8?B?cU40MDNRRjFKNjZmcHlZMktrdjNncjNGQ1BFMytlS2h1ZkdOTTlzRCt0K3Rs?=
 =?utf-8?B?THZRNnlIZmR3anFYbjRxNEJFcGJwbHVnMWV6dm5IY0NSMXdXdUM1M2xCd0tG?=
 =?utf-8?B?YXhnNGcyMWtRTVlhck5vODd6Q05iejM1amVuMDg2YmRQSFZoSTdjRWhqZHBp?=
 =?utf-8?B?VUl1dWh3WGxCMXAvRFpYUXJZcjhwdGw3aCtWMWo4b205d0MwTWFtMHozeDh2?=
 =?utf-8?B?Tk5HSytiOXl2R0hCRDkyZzc2S3oxMmpFUDBqYWtjaXI4VzdHV0RSVnNKZUdJ?=
 =?utf-8?B?S0d3MzBWbS84a2U0VG1QSWRjbER2b2RJTGRvSllWZHVSNlZKMFhFT1VvMlZK?=
 =?utf-8?B?ZW9nRitwNjZmeitQaDdvd3JaRXJpWTVXTWdRVytrbW5VNjQ3L1ZMN1R6M2NU?=
 =?utf-8?B?S1gvbVJwR3RPQzF0QnBCL3ZuVGZnVkNxM0YxaUEzTXZSdTY1czN1ZmdpeS9k?=
 =?utf-8?B?OWo1eUh1TVZRNkNzVHlJMHRLK3RUUjduSDhpTVNXL0U5M3B4Nk9ZYWlZYnVj?=
 =?utf-8?B?OHoxM21Ia1kzekdTWklnQ1R1SlZQdUJ3SjNyU1RRWEluaXFLc1BzNzdTRkt6?=
 =?utf-8?B?ZTRlU0FybWc1QlVjUmo1UUQ4bTRnU1FPdUhaTG5BUDM2OE9wdXVCdU0rRHFz?=
 =?utf-8?B?UDZ2S3JsN014RXJucXFQemdrMTc3WEp4eVRKaTRidDhXZnUwSjZJVU41bkpK?=
 =?utf-8?B?SHczOGFlYTVZT1lzUHRxN2lMRmwwckRFdmllQVhKKzBiQjhDUCsraUFmeGdK?=
 =?utf-8?B?VUdrczFMNWhJNll0SDhlMWxSUzM3MXN0ekFlYnpWWXhXZmZrVVdnY3ZtT2xC?=
 =?utf-8?B?dkJzOW1rWlJoSGFySTF6K0VDR1BnWWU2cFFmTDV4SGlDL0xVb2pBODZNeUVu?=
 =?utf-8?B?QlRsMHhVVDUzaFdMNXVFNnVzcmdzeFdZaDhjUzlPUWZYbndqZ2ZkZEF6YWkz?=
 =?utf-8?B?RXUxb1FHb0ZkS2x6MWU2VGdlMmZQVUJFSHBxRzlFQkNzMUFBVjdDSjRsajJs?=
 =?utf-8?B?YTYzT2ZKR1NtV1Q0dVRQNzJiU0FLRFhDcndaTVFpSmtvZ2lTOUdJM0dST044?=
 =?utf-8?B?T1Y0YjFKM2txWmFwRVEwSFhsS21LSmJ4bVJiRGhQcTh5NnJ0M2xLaS9tdS9r?=
 =?utf-8?B?K3U5L3o5SFRBc3NwbkdLbjdwUDVaVXB4VUhLS1ZLNkhEK09TQ2ppL0NJOHdU?=
 =?utf-8?B?RzFjUm4zMVRFSVFFSjVjQjJDcThlVnBTMm56OVBsTVovSitVOVN0RGs2Tnoz?=
 =?utf-8?B?U3BkcEZIS1JVTEdHYVB0YmZVTlIwNURZQWZkTFlISE9kMXgvc0ZrWXpoUHIx?=
 =?utf-8?B?WmpEU29vSUhIYU81dE4wRG9ybmNzWnd1MHE0aVh6RE56VkFOejJRMUVtanU5?=
 =?utf-8?B?Smdiam9GNG1NSkxYV2JuMTlFUVZzYjdDMnRvU2tYZ1FJMlhPNTJnM1dmYUpl?=
 =?utf-8?B?TC9xWVAzKzFoc09BRWVOVW1TZmNlWVRYYnZuUElObFZFNkhreExYaHhEQVRX?=
 =?utf-8?Q?al5l/n6gLGM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dUF1SHp5S3FBT2FZWmtDaUZXcE9kNzI0R2JvT1hhKytQdzVwSEtvdmtZNEN2?=
 =?utf-8?B?VERNWnE3SitFcUxCNFlSMzJzL1c2WTJBMDg2QlNqTlBNTjNWanZMVTFZUlg5?=
 =?utf-8?B?cy9RWVk2RlkrTE1KRUVUeG9sbVJLY2dFRFM1S1RScnpnUENkZTNxYkJCY2x2?=
 =?utf-8?B?c3ZiTVRPZGdyYS9EQzF3RFhkNVcxUzlkbDlEK3Z0WU1KbHoxeGtkaStrZlpa?=
 =?utf-8?B?VVkyeVBER0dPM0lvOXNqQ3EyeDBqdy9VVUU2S1lEcE94ckNYRnZkOGFlL2cr?=
 =?utf-8?B?enpGS2orb1ZSTUNpU2tTaCtQR21UdUJKbVZseThJV1hzNkRTNjZteDRNQ3lu?=
 =?utf-8?B?RE5XdzU4M2VGVXFnSnZYTjVDaGUzZlN0VU9nRTljTlNTTGJxMVBSOFdYZitV?=
 =?utf-8?B?dHh1YW9BRW9DS21DekYxYTNqL3FHRTdaOXpsa0xHRHNlOGwyWDAramtnZUk3?=
 =?utf-8?B?cnc4YnY0ajM4aXhvVm8vSys1cjFqdkFtUmhoQVBYMCtIdFpVZzJYZHRZQVlO?=
 =?utf-8?B?R21GYUdMNTF5NVNnMWI3Q3B3U25CRllDOU50MnJ6VjZsZXlWMkNQT2hYV1ZX?=
 =?utf-8?B?Vzk3emdHZ2orY2xMNGRkWmFHbGlpck5oaFNoaUFBdU5zUUZNanhsWjhYNVM3?=
 =?utf-8?B?L1ZoT253V3pwaXB3L3dhVzFUdVUzQ0xDNTh0TTZkMVhlMmp6NGlnTGg1Z2RV?=
 =?utf-8?B?UkVRVyt5ZlZYOWI2cnU2cU4yUFZHUnpPMzFrWDRyU1BsYjRRWjR5aVNIcU4z?=
 =?utf-8?B?ZEZLcFV5dzBzdzVOcHgrWStIbnRUREx3YWE0T05pbFQ4eVhwS1JhbnROV3k5?=
 =?utf-8?B?NkxTcHkwb3ZIWldQd1lGTnl5ZW90VkhKQnVoanV3Q0tBZ3V4TVRONTN3T05v?=
 =?utf-8?B?UGZidjlBV0kwWjNkZnhlb3BhTHlidnU1cUpPdVZGSVIrYzhQZEs3Mk5hanJW?=
 =?utf-8?B?U3g3ZVU1b0M3LzhiOWRLUldkWVNFU2h4VTlZUnN4WEQvRzN1VlpCYWh5aU54?=
 =?utf-8?B?TDMvVUZITkRHcGszSDhFc3phNlArZUEvTlgwTUlSMzdjeDJoNzdDeitwVUhm?=
 =?utf-8?B?NWNOUkZDUk56ZEYweHFJci9OeWRWNC9LY2NzeVZlcG1PMnpIMTFxT3FwVnBv?=
 =?utf-8?B?UUlPWEtsc0w0bW9Va2s3cHMvQm1aa2w3SUNZdHNLUE5McFB0MlJ3cCtGNmdX?=
 =?utf-8?B?SWsyZnk0dkV3RzEyV3ZJeE10Um1PZFZIRytxajBMK3l0MDBwZEdCOUlHTzNx?=
 =?utf-8?B?TGEvbzF3RThhdENVMm13L25PY0tKRGd0UE01QURQdVZmbUtHakQyUXJ3bkEv?=
 =?utf-8?B?U1FyUlA5bXg4MnAxU21SV0JaOTNwc3NMcVAyRFFKZTVBUitDYTZQbWcvSjRz?=
 =?utf-8?B?ZW1oQ1ZaMnNKZk8rTHdCbUN1VDJpdzBtQWp6WW5EK1BNWkhEQ1FYRWZMMTlC?=
 =?utf-8?B?K20wZ004c21GSEhBSU54UVpha0QvUDZ3bXRWM2dDdVdWcFZHVDV1REUreVo2?=
 =?utf-8?B?dW50NG9JVmNIREVhM1QxaDZvNnVZdzhwSmNyTmw0ZWt2eURidlkyOXhMeS8v?=
 =?utf-8?B?elluMktsWEd4K0JFL2tRdWR5OGlySEp2bXQxd0pUVWt3QlVRd280UmkwY1Ra?=
 =?utf-8?B?QjY0OGRGZzEvQVN4YUpBei8xVGd2RGx1Mk1DL2o1SSt1WlVLV2Z1TWc0cEZa?=
 =?utf-8?B?NXJoZTNyVGkrb1BpcjlMWWdBa3FtU0s5TEZYTTRaaXVvWElBejJGays4cldn?=
 =?utf-8?B?YTNIaFNzTWpaeU4xYStTOE9uUHp3WjY2a0pIbEtMQlp3RCs0ZXlKSkg0VEJW?=
 =?utf-8?B?RG5HRHBudDZoU25MSU1MdWhrdTRjQ0lONHZ6VUlrdVZjSjlIYXJzaW12SFJD?=
 =?utf-8?B?M3UyOVZ3eHhEejhyU2g3eWxmQjF5RmZZZm51eHc4cTZ1d3pvaUJPZnFEQW1G?=
 =?utf-8?B?OG9QM1hid1RnTEFLN1ZhdFBTZmNuSTZWVTBFekI0YVZ5TVYwV2VPRWZiQVNz?=
 =?utf-8?B?N042OEE5VUgwTGNqdTlKQnZ0SGxkOS8xSEdnTUpHN3dGM0hlWW1LY2JERlBw?=
 =?utf-8?B?bmdFajN2ZENtWVVtdmQvalluN01EdEFuTXdhN2IrNW5iSG53ZnJmN01SaG52?=
 =?utf-8?Q?Xh0GjNL4271TuVLIlDQ/CzExj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b21eb87b-d161-464c-073e-08dda2a984e2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 14:18:32.1143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vzF5dHKajhuYKpFRNVGV5h6pyFlLiIXvRXSlrOibDxLykN0vhRtNlYWhRGqh+FLb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7169
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[honor.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[40.107.101.51:from,2603:10b6:510:13c::22:received];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.51:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 64F3C44010
X-Spamd-Bar: --------
Message-ID-Hash: MZQCB3T47SJYHZ3OB5LMMUVZEKWIFKGM
X-Message-ID-Hash: MZQCB3T47SJYHZ3OB5LMMUVZEKWIFKGM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MZQCB3T47SJYHZ3OB5LMMUVZEKWIFKGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8zLzI1IDE1OjE5LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToNCj4gT24gVHVlLCBKdW4g
MDMsIDIwMjUgYXQgMDM6MTQ6MjBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
IE9uIDYvMy8yNSAxNTowMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6DQo+Pj4gVGhpcyBpcyBh
IHJlYWxseSB3ZWlyZCBpbnRlcmZhY2UuICBObyBvbmUgaGFzIHlldCB0byBleHBsYWluIHdoeSBk
bWFidWYNCj4+PiBpcyBzbyBzcGVjaWFsIHRoYXQgd2UgY2FuJ3Qgc3VwcG9ydCBkaXJlY3QgSS9P
IHRvIGl0IHdoZW4gd2UgY2FuIHN1cHBvcnQNCj4+PiBpdCB0byBvdGhlcndpc2UgZXhvdGljIG1h
cHBpbmdzIGxpa2UgUENJIFAyUCBvbmVzLg0KPj4NCj4+IFdpdGggdWRtYWJ1ZiB5b3UgY2FuIGRv
IGRpcmVjdCBJL08sIGl0J3MganVzdCBpbmVmZmljaWVudCB0byB3YWxrIHRoZQ0KPj4gcGFnZSB0
YWJsZXMgZm9yIGl0IHdoZW4geW91IGFscmVhZHkgaGF2ZSBhbiBhcnJheSBvZiBhbGwgdGhlIGZv
bGlvcy4NCj4gDQo+IERvZXMgaXQgbWF0dGVyIGNvbXBhcmVkIHRvIHRoZSBJL08gaW4gdGhpcyBj
YXNlPw0KDQpJdCB1bmZvcnR1bmF0ZWx5IGRvZXMsIHNlZSB0aGUgbnVtYmVycyBvbiBwYXRjaCAz
IGFuZCA0Lg0KDQpJJ20gbm90IHZlcnkga2VlbiBhYm91dCBpdCBlaXRoZXIsIGJ1dCBJIGRvbid0
IHNlZSBtdWNoIG90aGVyIHdheSB0byBkbyB0aGlzLg0KDQo+IEVpdGhlciB3YXkgdGhlcmUgaGFz
IGJlZW4gdGFsayAoaW4gY2FzZSBvZiBuZXR3b3JraW5nIGltcGxlbWVudGF0aW9ucykNCj4gdGhh
dCB1c2UgYSBkbWFidWYgYXMgYSBmaXJzdCBjbGFzcyBjb250YWluZXIgZm9yIGxvd2VyIGxldmVs
IEkvTy4NCj4gSSdkIG11Y2ggcmF0aGVyIGRvIHRoYXQgdGhhbiBhZGRpbmcgb2RkIHNpZGUgaW50
ZXJmYWNlcy4gIEkuZS4gaGF2ZQ0KPiBhIHZlcnNpb24gb2Ygc3BsaWNlIHRoYXQgZG9lc24ndCBi
b3RoZXIgd2l0aCB0aGUgcGlwZSwgYnV0IGluc3RlYWQNCj4ganVzdCB1c2VzIGluLWtlcm5lbCBk
aXJlY3QgSS9PIG9uIG9uZSBzaWRlIGFuZCBkbWFidWYtcHJvdmlkZWQgZm9saW9zDQo+IG9uIHRo
ZSBvdGhlci4NCg0KVGhhdCB3b3VsZCB3b3JrIGZvciBtZSBhcyB3ZWxsLiBCdXQgaWYgc3BsaWNl
IG9yIGNvcHlfZmlsZV9yYW5nZSBpcyB1c2VkIGlzIG5vdCB0aGF0IGltcG9ydGFudCB0byBtZS4N
Cg0KTXkgcXVlc3Rpb24gaXMgcmF0aGVyIGlmIGl0J3Mgb2sgdG8gY2FsbCBmX29wLT53cml0ZV9p
dGVyKCkgYW5kIGZfb3AtPnJlYWRfaXRlcigpIHdpdGggcGFnZXMgYWxsb2NhdGVkIGJ5IGFsbG9j
X3BhZ2VzKCksIGUuZy4gd2hlcmUgZHJpdmVycyBwb3RlbnRpYWxseSBpZ25vcmUgdGhlIHBhZ2Ug
Y291bnQgYW5kIGp1c3QgcmUtdXNlIHBhZ2VzIGFzIHRoZXkgbGlrZT8NCg0KUmVnYXJkcywNCkNo
cmlzdGlhbi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
