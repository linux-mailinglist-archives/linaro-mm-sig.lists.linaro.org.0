Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A417C746B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:04:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA3A3F952
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 14:04:14 +0000 (UTC)
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010047.outbound.protection.outlook.com [52.101.85.47])
	by lists.linaro.org (Postfix) with ESMTPS id 9BAA53F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:03:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="NusnbiG/";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.85.47 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WuFudPSo+p/HoEd4J2oFfaKDX8w5ejUlse8PDdtbEIh588CEDP3eRJ64EacANBPkbQaaYZpwJUm97KTGQt3vEmu+qhb2C+HHHh6Ux8Xu4MkOvNt80pHNn3G32JNNPsawEkGtzuw2fdLcSbJZjQgwaVmzl3rHaK7Q+9eyZVUoHg7tFYqfXR9RwseDFyp8McUp7Vs34MO1wq3es0HwDT3usGsHIwkCOcNNGAAGIJn3FX0dWNQT858AbthwCVi+0v5pD6owvFtuZIfw7o+iEnLzd8d70o0bN/qRtcfUeE2UQ2TSElk7YiRXCuAvV4fvbin9mm2EoQ07FAaVtznIV1Us/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EcWpbYZaMtv1Uv+TT1gJyWAW+VWzHGGu7Hu4vfprDUw=;
 b=cr9EQxXSQpENDiPtvYQyqo25yMOVXpsvX8GZaxvUeiE9yyT35u90HEDcXk3PCqQT3+IMGd+d/5XoSgtgBldwCcwon86bIKNuCxlQuSVbegGFZLOsqhSXnKv+pbxwJfA6N0QxtwbaJsKHDeevmu8HDnBR5EPkksabJ5TYjJpHm+bEVSZb2VhtZikWE5UuXU7eoyIFHKiDUhrL6yX0CvLLkNuuWW8Yd5kWX4Zi9LqFoLoQUrMjLfEasVFuGfF/32wJaBE/uLiBlqBDlcb6OQiYWJIoFOudvhn5MPhPH352TUyp6am1JiS319p0EBFk5AaIcIxaA4rTC0dnDLdrl7xHHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EcWpbYZaMtv1Uv+TT1gJyWAW+VWzHGGu7Hu4vfprDUw=;
 b=NusnbiG/4JsIRyczuPHDT/hdKJ0W7PFB7iQAkOysrSMgk6Kay1dNgoPk7JwwRTUYzcD7aCxQHEY+ndSP2jLP5tgVI+1j9mUY7kmBsxFyXzAR7FLcsstU+JGVLytOsP6E+xWMLdzZwAi/OMdyJuOJjQ1EBYt604GTOrZ9fGvz7WU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4205.namprd12.prod.outlook.com (2603:10b6:208:198::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 14:03:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 14:03:52 +0000
Message-ID: <7e436158-41ed-4c4b-a0e1-7d4bf03e3499@amd.com>
Date: Thu, 20 Nov 2025 15:03:48 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 alexdeucher@gmail.com, simona.vetter@ffwll.ch, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-3-christian.koenig@amd.com>
 <ef0f9459-6733-4e0a-9c06-c36c02e5a93c@ursulin.net>
 <35d7ab6c-bd4d-4267-8ae1-2637d6c0f1ff@amd.com>
 <ed7595b4-b6e4-4a7f-ad35-e3a3cf063e72@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ed7595b4-b6e4-4a7f-ad35-e3a3cf063e72@ursulin.net>
X-ClientProxiedBy: FR4P281CA0102.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4205:EE_
X-MS-Office365-Filtering-Correlation-Id: 303759d6-1545-44c2-1cdf-08de283da2ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Mi9aTmlrK2JuUGlqOCtjY0lGd0dCam50Nm1vejFkWGVKclQzVUU0R0o4bGd4?=
 =?utf-8?B?N2t2WnVXYVlId2JTZUUxOTBmODVNeDJyY0hwNFhXMWhQSUNrcEI0blRaa1hZ?=
 =?utf-8?B?TTRwZjE5eU1xQ0dWZHJ0UjJraDZHLzQwd3NoTHZJMFNWS2ZONkpPOWxESUtZ?=
 =?utf-8?B?YjIySU1jTmR5MEMzblNvYnlIRmVDY0NFVmJoaHFNT0dCWEZlREticDQrcjlo?=
 =?utf-8?B?RVNUOUxFWEdTZjJ6K3hDM1ZhRmsxbk5IRll4SGFOTUNHNC9yR2ZkVlE2N3hM?=
 =?utf-8?B?Q2VhY2V2Sk5GVmNSWS82bVp4SlRQVk5OQVJWQWRZdHdpdVMrb2Y4RU5hQ3VC?=
 =?utf-8?B?ZTRHSDBmdzBPalhPK2plTVN6NXp2dDdJbDRJS25McnVBcGxKTUFzdWszbC9y?=
 =?utf-8?B?M3VieThzdklNWGdWbnhMMm1sRDYrbkZybmJaSnhxMVpDUk5JMi9KMzhBMzEr?=
 =?utf-8?B?dzE3SjkrdGtQNkVBS3I1Y3pJUGFMenMwMVQwcTJtTHplS09IeVA0eDlIeG4y?=
 =?utf-8?B?SEZkd3Q3aTU2RmVHV1p0ODZDVUhaS0ZPam5yeWlPZ0hEdkJjdWFOR1JGbDFy?=
 =?utf-8?B?SjNtYlp4d2EralZ1a0JrWm8zV0lGaVFFYlJ5T0REQ1A5N3UvV2xUSlZuNldt?=
 =?utf-8?B?ejNDbkFaRWxLQ0lnQWFSYTRZZzBPVzIxakx3RElZaXRieW9QRmFOUy8vMmxX?=
 =?utf-8?B?VlFicUxjSVpHR1VpSzhyd1U5SSs0KzkyOEd0Y1BDemw5RHpSZ25FSFJOT24r?=
 =?utf-8?B?SG84UmQ1em9veUdrZFc5RnpJU21SN1NlckJZTXpXMXBwU1NIZEFsWTBWWEYx?=
 =?utf-8?B?ZUkzZ2RZRTJ2MEpydDJTMU5iUHVRRmd0UmFrSzBlRzFYdzRJZE82c3Jxdjlj?=
 =?utf-8?B?eUhYR0hzcVNackdOcmV2elBGUGZSanlSMWVwclRxTENjenkxYktZd2FmK0gw?=
 =?utf-8?B?eHl5Vy9EcFFTRW1IQ2loaDN5RE1vR2FSSXJzcGlvWmQrblZweW1VM0t5R3pQ?=
 =?utf-8?B?akxBLzhkTHBjQ0hsWjYwTlhOYXJKOUY1Vktod2tGV3JoK29UZUVXUmVFSFIz?=
 =?utf-8?B?eXgxeHBLTDdCY0lsTExvNjFmNDArSzE3bkN6a1lDUGtYOGpDdGErdE92allS?=
 =?utf-8?B?ZVBGaDVQYVgvOFVEWGFqYS9senhoRm1NMGxvNklzRThqTUJWYnFDSzQvMmJP?=
 =?utf-8?B?Wk9RaXpaZjhCZkpmRUoxOFo3M2loUmt3eExCcDBpME1Pakw5eDhmaFYwTWxr?=
 =?utf-8?B?ZVFOR2lKU2ZVcWREWUZYanYzZEIxRlhXbmxFWTYxZEFpNzMzVWhrWnZoMW9z?=
 =?utf-8?B?ejZNNmgrRVRBb2NIb0dIVXZDWWF4SXFXcG5va2FPd29DTUJSc1ZXQVFDUEt0?=
 =?utf-8?B?b0FxU1pnMURXOU00UFFORzBYeXNBTldBbEllT0dxcjhQamQzTDVMUnBKWGFI?=
 =?utf-8?B?NnkvaURPbDU3YU9JdEVnUktWalBIM1ByVHNEN1dMR1hoSDRqK3NjY0FsckNh?=
 =?utf-8?B?M3hvVzlmQzBqNzdsNWxmZEgzbHlleXUrcFQyWll0cVZuOVFtd3JyZUNDQmdH?=
 =?utf-8?B?WS9DVW96MmFRNDhZQmpESDl2ZEVVMXlHQ2Zmdjc3bGl6aXlISFV6QitBZEls?=
 =?utf-8?B?MFFLQTVTSCt0NGllUEQ3RXV1OGJZZk9MS2VIbURTVXR6Z0R5QTE3R3FkNTNJ?=
 =?utf-8?B?OXBIamx2ZlFxNUtUN1gvSWV5OWcxd3VBbVVJbjhVazZhUS9MVDllTlhISitI?=
 =?utf-8?B?YVgrMW5ZUWc3K1R0WlozVWx0VWVzOU1COTcxSHNyNy9ya3FqM2lLaC9XSGlY?=
 =?utf-8?B?SURxQnl5bDZnOHEwRVZ6MXRRZCtxU1dYc0VCUk05KytqRlFFL2c4ZzE2bDQw?=
 =?utf-8?B?ejZDSjdUajN2ZE1ScmF3NlF5RmliNk1Wd0J0bGxSVnJ2WUx0a1JPN0pFc0NR?=
 =?utf-8?Q?wGBDHz9CUKuKKyPZsQaQGZIUco7q6tnT?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TEJmMnpyN1ZHT1NTdU9VYUg4cHV1WkJZajh4OEdkcVdud3JISVdpSU0zcVlw?=
 =?utf-8?B?QkQvK2JSbjhaVVpoUkx4ODQvNHJKc3YwY0F1bjhKdGc5QU9KcDlpWm93M0E3?=
 =?utf-8?B?a3doZkExUVBvK2J3VDhGNUQrbHNJRmtTbnl5NEVuSHRkOVpydEtiTVlNdUlj?=
 =?utf-8?B?bDVmRzR6NCtNbGI3WUhrRmlZZHI4L1BQbHBzbFNQOGx2UkZXem5zVzI3RHNx?=
 =?utf-8?B?RllWWUlGVGhxcUhoM1hKSnJ4emhKTENpOENiQkNuRXo1eFkxZEFVR0hGcGFC?=
 =?utf-8?B?cnUwWE9URWRHZnNFODhJaWJiOW9WVktZNHc0MCs1QmUvc2hrc2tNaDFxbGo5?=
 =?utf-8?B?VjZESXZrV1lhMVBMSEU3WWNEazVrYkhUK3F1Nlg1SEFjMjh5MC9HbGs2TnB1?=
 =?utf-8?B?WkhHYWQ1Y0pMVTZtak1sTFRsOUZua0tFR2l4dW5Wa2J4blJPMWZRRjZPQ0hi?=
 =?utf-8?B?Q2ZzcUppY2JiSlFoYUpncHpqN3A5UGowL2NUZTJZYzl6YVFZWUkwZitsV1pq?=
 =?utf-8?B?dGNkM0dwd2NqaUN3enhob0VaRVhUcWFIbDh0enNBc0llTHVGVVZjYXJPSjJK?=
 =?utf-8?B?b1FNYkJuUXVEb2U1cGlhZEhSdm0xODI3V01BaFNiMVRkcm1xUE9XcmF1dTk3?=
 =?utf-8?B?azE4c3BsZkJZT0hLV01VZHRDQU40eTZGM05PdjZUK24zL0RTR3psdCttYy9Z?=
 =?utf-8?B?MC9ROHloRDVPcUtSWFJxcWtOblhtemJNUU5IeXlaQXZuUDdYYmtqMUtyNVVq?=
 =?utf-8?B?a0dTUUdpNmwrZXd2c0hLNDE4OEZHVnYraUNqbVlDQ3JZYW5XNnhYY21BQ3h3?=
 =?utf-8?B?dmtheElId0VWTGpHSmN3Mi81WlhNZzJBdW96bVdkMjA1MHVWby9KTFFsdjJG?=
 =?utf-8?B?VE13czB5QUZKc2FYSTh6MGF6RUlibm9OWjRNNXVWekhWaExWUURsTUZSaHZt?=
 =?utf-8?B?RTYvUXpXV3dBc0ViSGtFclhmdE5NMUdpd3ppZVVZekpTTmdmRmtwVEkxTkpp?=
 =?utf-8?B?ak4xSE5JZE9DNmNBb0dnVmZWczdUMVROOTNsUzJtN2VFREJvNVFYRTF2TUxk?=
 =?utf-8?B?WTNIMmIzelYvTDAvazlsQW03dzJiUFZkUWpHTU1LRXVkd1BRaFlDRGxVMW5R?=
 =?utf-8?B?Z2xBWG5tR3ZoSjV6VWs5amo3akZFN0VVTXYxc3EyUmI0UFJBWE5PRmJXdTVq?=
 =?utf-8?B?L1IrNjVVQXNTeXhKdlBMSXpidjJhT3hHYUJsUjZuZGFuVm4xdVplR2NsVnlJ?=
 =?utf-8?B?cUdvMy9HNE9NUnRMMm1zSDM1Zm5VZktMOThROTEvU2pOUFNVbTZkdzBLMUtL?=
 =?utf-8?B?U3NiaU90SDVLNHl1S3g2UFc4S1NzNE1uUHJkakcxeUo3cVVmSjFtcWRka1lY?=
 =?utf-8?B?cW16NHQ3WXdsdWM5bC9jWTZ5KzRFdHhKL0FYRkdCRHpkK2RUcFNsSG4vU1FY?=
 =?utf-8?B?WXFhRldINnNCVTV0bUVVUjh0cXUwNUVoUE5MaTJXd1ZVNTdCcTlEaGFZU3R5?=
 =?utf-8?B?L3BjenZvYkd1dS9wcTVGb0xKdzkzWVAzSk9uQXJRcFgwTm9GZlU5YjVmSzlS?=
 =?utf-8?B?WjFDaEZNQ1dtalBDcGd4VnpaeWI1alhKWUdjQWpoTVZOT2Jyc0tuU1VKRGdI?=
 =?utf-8?B?LzJicFNQcmxnNWRhUDlraGxRaENKOVNTQWpHSThTQXluWGtGRytzYzJRM1Uy?=
 =?utf-8?B?RVNBR2ZBSk95THJkWEpXVjh0eUsyM015QnBjR1lYUW1pRGRIS2Vnek1DaGhv?=
 =?utf-8?B?VjhINjd5b2dOMi9VZmNCdjRFdEZyeXhiWnU4djFaUzdRY25qeTA3T3NqTURL?=
 =?utf-8?B?bC8xUUxxOEc2S1J1UUFnV3FnenY2a3NvVEtoQms0OGlsSjFpcXpLc0xHYzRo?=
 =?utf-8?B?Rm5wcmhLSXNienN0b1U5N2JRcGpXQzBKK3l6SHFNZXN0WGErN3B2QjBWVnVB?=
 =?utf-8?B?bnFoMXNIWEVlZE5xT0hHSzNQeDN3TVdIcWhaQzJaRERoWWQxS05wNkU3RGhQ?=
 =?utf-8?B?bFd4OUJKTG9EdHVRalEzbllucWRTT0RYVUV2OFJaUUpvM3Y0aDJicy9kQnRD?=
 =?utf-8?B?Z0FvWW51eGZyZ3pIZmxQOWwyQlFMbFo3bnpCSWtsQlQ0OTI2Wlk0K1I0SjRt?=
 =?utf-8?Q?nS+oj4i4zGmTX9K7z9YC5GflK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 303759d6-1545-44c2-1cdf-08de283da2ef
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 14:03:52.6826
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z6s56qlgsbrlKcscCRGEiPUYbW9s9T+3Y3iSo0m2GvxK4oRRfVYtBd3k/8ynSRdK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4205
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.94 / 15.00];
	BAYES_HAM(-2.94)[99.75%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.85.47:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ursulin.net,mailbox.org,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
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
X-Rspamd-Queue-Id: 9BAA53F69B
X-Spamd-Bar: ----
Message-ID-Hash: WR2VJ3XKRV4AUYOVSTMNWHDHAYKFQRN2
X-Message-ID-Hash: WR2VJ3XKRV4AUYOVSTMNWHDHAYKFQRN2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] dma-buf: protected fence ops by RCU v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WR2VJ3XKRV4AUYOVSTMNWHDHAYKFQRN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTgvMjUgMTc6MDMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPj4+PiBAQCAtNDQ4LDEz
ICs0NjUsMTkgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSkNCj4+Pj4gwqDCoCBzdGF0aWMgaW5saW5lIGJvb2wNCj4+Pj4gwqDCoCBkbWFfZmVu
Y2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4+IMKgwqAgew0KPj4+
PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHM7DQo+Pj4+ICsNCj4+Pj4g
wqDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZm
ZW5jZS0+ZmxhZ3MpKQ0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1ZTsNCj4+
Pj4gwqDCoCAtwqDCoMKgIGlmIChmZW5jZS0+b3BzLT5zaWduYWxlZCAmJiBmZW5jZS0+b3BzLT5z
aWduYWxlZChmZW5jZSkpIHsNCj4+Pj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7DQo+Pj4+ICvC
oMKgwqAgb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPj4+PiArwqDCoMKgIGlm
IChvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCByY3VfcmVhZF91bmxvY2soKTsNCj4+Pg0KPj4+IFdpdGggdGhlIHVubG9ja2VkIHZl
cnNpb24gdHdvIHRocmVhZHMgY291bGQgcmFjZSBhbmQgb25lIGNvdWxkIG1ha2UgdGhlIGZlbmNl
LT5sb2NrIGdvIGF3YXkganVzdCBhcm91bmQgaGVyZSwgYmVmb3JlIHRoZSBkbWFfZmVuY2Vfc2ln
bmFsIGJlbG93IHdpbGwgdGFrZSBpdC4gSXQgc2VlbXMgaXQgaXMgb25seSBzYWZlIHRvIHJjdV9y
ZWFkX3VubG9jayBiZWZvcmUgc2lnbmFsaW5nIGlmIHVzaW5nIHRoZSBlbWJlZGRlZCBmZW5jZSAo
bGF0ZXIgaW4gdGhlIHNlcmllcykuIENhbiB5b3UgdGhpbmsgb2YgYSBkb3duc2lkZSB0byBob2xk
aW5nIHRoZSByY3UgcmVhZCBsb2NrIHRvIGFmdGVyIHNpZ25hbGluZz8gdGhhdCB3b3VsZCBtYWtl
IGl0IHNhZmUgSSB0aGluay4NCj4+DQo+PiBXZWxsIGl0J3MgZ29vZCB0byB0YWxrIGFib3V0IGl0
IGJ1dCBJIHRoaW5rIHRoYXQgaXQgaXMgbm90IG5lY2Vzc2FyeSB0byBwcm90ZWN0IHRoZSBsb2Nr
IGluIHRoaXMgcGFydGljdWxhciBjYXNlLg0KPj4NCj4+IFNlZSB0aGUgUkNVIHByb3RlY3Rpb24g
aXMgb25seSBmb3IgdGhlIGZlbmNlLT5vcHMgcG9pbnRlciwgYnV0IHRoZSBsb2NrIGNhbiBiZSB0
YWtlbiB3YXkgYWZ0ZXIgdGhlIGZlbmNlIGlzIGFscmVhZHkgc2lnbmFsZWQuDQo+Pg0KPj4gVGhh
dCdzIHdoeSBJIGNhbWUgdXAgd2l0aCB0aGUgcGF0Y2ggdG8gbW92ZSB0aGUgbG9jayBpbnRvIHRo
ZSBmZW5jZSBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+IA0KPiBSaWdodC4gQW5kIHlvdSB0aGluayB0
aGVyZSBpcyBub3RoaW5nIHRvIGdhaW4gd2l0aCB0aGUgb3B0aW9uIG9mIGtlZXBpbmcgdGhlIHJj
dV9yZWFkX3VubG9jaygpIHRvIGFmdGVyIHNpZ25hbGxpbmc/IEllLiB3aHkgbm90IHBsdWcgYSBw
b3RlbnRpYWwgcmFjZSBpZiB3ZSBjYW4gZm9yIG5vIG5lZ2F0aXZlIGVmZmVjdC4NCg0KSSB0aG91
Z2h0IHF1aXRlIGEgYml0IG92ZXIgdGhhdCwgYnV0IGF0IGxlYXN0IG9mIGhhbmQgSSBjYW4ndCBj
b21lIHVwIHdpdGggYSByZWFzb24gd2h5IHdlIHNob3VsZCBkbyB0aGlzLiBUaGUgc2lnbmFsaW5n
IHBhdGggZG9lc24ndCBuZWVkIHRoZSBSQ1UgcmVhZCBzaWRlIGxvY2sgYXMgZmFyIGFzIEkgY2Fu
IHNlZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2
cnRrbw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
