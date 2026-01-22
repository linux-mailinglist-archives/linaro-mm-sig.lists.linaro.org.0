Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCtOCs0KcmmOagAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 12:32:29 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BBC660B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 12:32:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 485B74014F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 11:32:27 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013057.outbound.protection.outlook.com [40.93.196.57])
	by lists.linaro.org (Postfix) with ESMTPS id 0EDE13F677
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 11:32:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cYwCXeM+;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YU6CJ03/TIrc5O4mI/qdGMv4z1G1X+FqyY0Av7RAmETbdApiIWelpDD1YsZalN3Pp/Q5AEpHLE6VcvNZTV3aM6kCLNnn3ZrcavLVemmQLevIhHA8AmvV7M5nmdWqfbwdHs2hREen+K0Gyil0FhUiBu23muqaAO+SbZUM2LaQEKfYjqzeQwapYpTXt6mRjRQgZ1ozRsccdoVwaN5Eh1TOKTwr6kcjWd9X8Pw+9ubo89hH2cc5o68pjrrD0UHoKBRhMCeE5J8mzX1VdCdAYVYahgy4df/odzH6efi683P00WHvYRDooa+2IuWJRWT2tGIzjmNeaJMRXWi9f1BP/ofciA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NaO84MlMGfc6mc/rZyA5SsotjF3Am9RhVWbgtVvDeLY=;
 b=omjiR1B9CltHjlvKU79/A05oALRSbb0f6iZZ7IvVg6y+tQnWLqwN+AoFfyHazF/CBq0LBHy0bm9ZGJinnauy4qxepEG6X3yR7Quk6CA9Gm4MrqU5e4FG1h4M7NJvmqQGSe8vIT3FeiMr34+nLQWwYjZZKIXokiOx6OKt0YXbhCcj80HpyFwnsdL8WTMk+CMaJk+p4tgFAmOj5kLHW19N1bIPU6rzyBYxPUG4jDA0MWf9Ouh2r5bX0tjSY34JxrWDLgBS9NOGbPghBY8HUX+PO7jlOdSFLXEhhtzGLI/1K3opuJdu9c3JcJGty36udKYMfe9ysjmqg8zR0pQOqvgSDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NaO84MlMGfc6mc/rZyA5SsotjF3Am9RhVWbgtVvDeLY=;
 b=cYwCXeM+2u+nSEVr+xyMEKZwY+2CaJOpm827GFDGLQVwut8rlg48UYWWWUj0wpbcar8uicMOeyKkUNaNndxjo6mxGqxfzB5P8vibowFkVPrEjxIYbfZF1hT/fRD9mbxO/Lrd+N03bUUhrs3gElBhgNTgridVLiGlO+8vNzwhJUA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB5772.namprd12.prod.outlook.com (2603:10b6:8:63::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 11:32:18 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 11:32:18 +0000
Message-ID: <a1c55bd8-9891-4064-83fe-ac56141e586f@amd.com>
Date: Thu, 22 Jan 2026 12:32:03 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
 <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
 <20260121160140.GF961572@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260121160140.GF961572@ziepe.ca>
X-ClientProxiedBy: BN9PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:408:f7::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB5772:EE_
X-MS-Office365-Filtering-Correlation-Id: 36a484d5-837e-49f1-dc37-08de59a9e61f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?c1dRcmtaRzh6Y0UzOWRtUFFKcVVYQVNEVFBqTU9aZU5tdkpiTGRXVlBvVTds?=
 =?utf-8?B?cnN2VFFVYVZSTUxsYlF4TlF0eDFWYUZGdUtlSzNWN05BQzdHRW1oM0dFYkdH?=
 =?utf-8?B?Z0VFN0RyblU1RHl0UVpPZmVpZG5taFlXVHNDYzBla0RUM2dVZjBBQVRXUUF6?=
 =?utf-8?B?WVFtNnprZFhSUWVhZzE2NTRrSk1EaERYTGtud0FYZVh0aVpBVEc1dmxXcXVB?=
 =?utf-8?B?Ym5FY05yWHB1Ynh5SlFuc3Fud21UbWE0L3pVQ3FycDRpRmFOS2JZb3A3R1NV?=
 =?utf-8?B?cG9aNlVqT3JSYWYwQ01aQjhGd3oxYmlZS3FTTWtTcUI1N1h3TE1mWWhtTHQ3?=
 =?utf-8?B?TXVUMUNXa2NDZFZzOWg0V1VoczNuQU01T3M2ZlZLcUMwbHdDRUpoRVd3a2Fa?=
 =?utf-8?B?SEF5T1g5TUY0am96SGJlSXM1WUJQU1ZWY2w1eStzem51WENnejJYd0JkRE1U?=
 =?utf-8?B?bHNOeVVyTGJGaE9IcmJiWjdGVCtMSDQxRmVyNW1jemQvSVFiVU9BNlBzVjNm?=
 =?utf-8?B?VmFKdnZETS9JcWdMYU5HcW93N0xqQWVwNy9nSTBkL3ZZR2Q3SkdERzZ2empq?=
 =?utf-8?B?U1lvcnI2YjVpNjFDeEtJVVQ5dnM4Q2d2YVY5UmtOWGJNcXlQRXA1dXR1YWhv?=
 =?utf-8?B?dnljd0QzVWU5cElhMC9WK21pMmJYWGxpYnNCLzljQitzRzIvV2VxMmFtbUpu?=
 =?utf-8?B?K3dFS2hxRHMwK0oxRHJRVEJVWDM0OU1qUWFLNm91WUYrNUxITU1zdDg0M3di?=
 =?utf-8?B?aFRJNVY5MDhoTURVVVE2azNOMmdlRTBpQjVsNUlFRkpxRGl6bkFzTXdLVUZD?=
 =?utf-8?B?R1FENnhob0VGbHlNWWlac3BJSDZDbGZPUDg3OEhqYmUzUlBHQ1E4UStPOCts?=
 =?utf-8?B?eFE1aWVERktHRGdYZG5ka1ZlR2hUWTd0S2pneVdvZjR5elA5d1lHTFBVN0R5?=
 =?utf-8?B?VHdlRm1vZDY3NlJ5M3FRbTBTN0JxdE16dVVveG5iRk9OMi9JQmhqWVViVzcz?=
 =?utf-8?B?UjA4d1ZrRU9GRDYyTFV2cjFxL3FFakQrR1g0aFlMWllqb2t0Snd5eXAxU0J4?=
 =?utf-8?B?b2VMenJnb3NTVmsxZ0tZdUwrQjFEWmhVQiszYkhyM1UxZWVBYVF6RjExclNu?=
 =?utf-8?B?M215cGkzR1RlUnFrcU9hVUFlSlhLTDFock1qUG9IRUd6amNBR241dEMrWklT?=
 =?utf-8?B?ZFNhZlI0QWZURk4zZVJCL284UEgvWTFBV29ObEQxa21NWVE0RnhiWWdablhu?=
 =?utf-8?B?aERRems1V1dTVFVGeGVOOU9MSm8xRjZuNk1zN2tKNlhLMElsTGNkdkgvUURm?=
 =?utf-8?B?bmczNWJ1YXRIeGI0eHU1QVNBKzVYZEpldVB1V2FFY25KWWxoejRCbmtZSzNy?=
 =?utf-8?B?UXdDWk5OL0s0VXZNWWNGT2JuVjc0ME5xNGN5WWhXd1RwNkNaL2xGRzBKUm4z?=
 =?utf-8?B?cmI0M3lrVk5zeVBMWUdRN0U4bTg2STZ6MjVIbnE4U09ZQlQ5UXlNeGZ2MHBn?=
 =?utf-8?B?SG4vKzJETlJPOGpySkdXb0JXbERrOVl3RmZpUjc4VnNrelV6cVd3ZGFDazA1?=
 =?utf-8?B?NktHZDRYbzRURjc2VkJ6bmxzRWpCK21qaXArRVhsUis0NERaVlhOdUZQSjQv?=
 =?utf-8?B?cHFkaG5nNDlMUVBiSmwvZ1Z2WmtXeFYva3VzSllIR0sycGh5cHlLc21NNk12?=
 =?utf-8?B?MVR3RFlSY0VmYXVFT2hBdG9NQ0RhV0wxbHMyREE5WjlJQzZjYVF5VzRNdDc2?=
 =?utf-8?B?cVFLK0NxekQvNVU5MWVMREg1SE9xdGN4V09WaktOUXY1RlZUQlNjNnBiUGpv?=
 =?utf-8?B?U3pQRk1aTFlBanNJdzlrZUJsbWs3VHUzNm15aHFjUXdDSUxzeE5YNm5nUGh2?=
 =?utf-8?B?a1VMV3RMV3VhVGliWFN3UE40VWhSRW5Hb2RXdFlJOHROK0dWR1BpVjU3Slky?=
 =?utf-8?B?M1l0STFMUjZOS2VVL0tsMmo3MWc3N3ZHeU41azh6THlyWDNPZVdMZ0k5RHJo?=
 =?utf-8?B?bmVxdzZkN0dnSkUxeVhza25pZUk5UFJZNklFZnRBNU1NV1JBUDhzNTVPT2ox?=
 =?utf-8?B?Zi9uRXdZeEhyQllXUVRWcENBRDNmNzlHZFBxNkRFWm5pVU5SakFEMmpoOFNh?=
 =?utf-8?Q?agDU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NHdrN0ZsY01mdkNRU2FuZEFTd05LRm9wYzF4WExUOFBOQmZhOXdHLzFRS2pl?=
 =?utf-8?B?L3NPUWE5Sm4yVXVmQ1IwTU1yU0h4bHRLRjE2N1h2ZDR6QktURXpXbTV3cVJo?=
 =?utf-8?B?U0JWVTAxT1RGemE2SjRYRS9hNCtjR2VkYXZ4ajRoeFBtS1IzZ3lKYkZicWZP?=
 =?utf-8?B?L0tQY28yR1gwOTV3NUYzWms2MXcxSkpWZC9RU3Naeng3M0dsMDlMUVV5LzdF?=
 =?utf-8?B?U2dDWmJpSU1rcHJKZm5mUFl5OVVxa1grWDh3TktQTjNtZTVFWVlsdkNMbENo?=
 =?utf-8?B?T2RQK1ZiT1lmZFRjWHArRWdNRVlsN0NzV3FoV3cydVhvcy9tMENZOGE5L1Nt?=
 =?utf-8?B?SjZKYjVxTzBNMWhQa1VLTnR2SnR0ejdmc0sxU0F6aU5PR0hkeC8rY3ZKaTFq?=
 =?utf-8?B?MHBYZkRoSnU3VXdIa1BRUFBPc2srMGUzU2ZBODFOTDg1V0x4NGpNRmU3ZGtI?=
 =?utf-8?B?NmxRcjcveEpSVEFnM2FsZG54cGRkOHliNzBiUWN3QytTS2wrTXZtdG91VmFD?=
 =?utf-8?B?djByNUdEUzB0MjJpd3dvWk12bG5Ya2lLOG9Xc0JOVElTbTBDcXRVOUtuVXhG?=
 =?utf-8?B?NWM2aGZIOUJud1llS252T0hNSGljUnRTWjhzaFBjaFd1dnpWUHErL29MTHdO?=
 =?utf-8?B?SkZ6aHRRaHZHVUQ3eUxFSkREQVRrSlJ0NldKVDRGbDFhVGozTTViRkp6WjZs?=
 =?utf-8?B?NnkySUlXeWw3OWFwOE82cnYwc2pUREVwcGsxT2VMeUxkcGNCRzZ6OC9QdnpQ?=
 =?utf-8?B?NVdpYmY5UWl4YXRUSWJoTVdXQ05MMTU4endEcjRKamMzMUhSRmg3b2NDVEtX?=
 =?utf-8?B?ZFFITzJ4VkJzT01mQUw5bnhsTkJWeWMyZHRjRFVUNHFaOW92M293bEdFNlJK?=
 =?utf-8?B?cUFOcmh0c1JpQWNUb1RyR0wxbkdEcS9KQVZUNFpuRm1Xbk5ZbEE0bHhtaEh0?=
 =?utf-8?B?Q1NtaFNEdmVxK0hEYjgxYkZMcTNIaTUwdS96YTJxeXB6K1RadHFpUURybnNj?=
 =?utf-8?B?VjdtZFRPUVZxc0lacUhVVkxUN01KeUtHbE0vdFVwZ3lOeGI0OFNBeVFIOXJL?=
 =?utf-8?B?RWd3WXdQMXVZc0R2Ulg3QUVHeG5Cbm1LaFU0R2cxVnI1L3NHaW1UTFJxS2pU?=
 =?utf-8?B?bjB3OGQyQkRlUmNlbWJTaTJscE5xak5SUzBESFhtS2tic2JTR3ZqUWNBSFFL?=
 =?utf-8?B?TmpVcjg0SElpb0hmTDJUd0pPY0hVQVhZdjdLOFhXa0xLMW10THNOaFN1ckVH?=
 =?utf-8?B?eTEyR0NGOXNlMGNOUElwTGxUZXNMajNHdjJNSnQ0MG43V09SMUYySnFsZ1F6?=
 =?utf-8?B?a283S01LanhHSldUazBMcVMraEh6aWw2eTFLMFRjdndCYmwyL3dKMXd0ZGI2?=
 =?utf-8?B?ZUZjdWdvSitRUWg2b0xHM3p2d2JlRHEwYnFIcW5pRy9sb2NzOXhHWUR0K0pr?=
 =?utf-8?B?OC9mQjNKZ0J2MzZFdnhsMTY5NXZkcmdTV2pzUTZJai9rUmc2ZlA0REdQUVVW?=
 =?utf-8?B?WjBjWVhIei8xNWoybjlHT2dIYkRrajlBc3QrQ1I0RWNvT3RqTnR3N0d2Ym9k?=
 =?utf-8?B?VExMT3ZJUk14cDRKb0IvV0lGaVFHSDVKRk1IYnhkWTJ4NlZZTWxVZ2dJTmxj?=
 =?utf-8?B?ZW1pN2NPUUwwaG5CbEY0aGhlM3JGUjVCbTBaTmEzdE5FWStPRlprN2FwWjhB?=
 =?utf-8?B?V2p5dFZWQWxmekl0bnJWUXZpRHQyc2Z3Rzd3ckxWcXpqYzlTVDN1RStxZmtE?=
 =?utf-8?B?cm5Lcm9IbzVOUFlucEhtSHNVc2R0bTJWVnpnZE9rNkdWcG5OWGVDQTluOGRC?=
 =?utf-8?B?aXBXbDk4Yzgwcmd0RlBpci80TEJkL1kzNW9FK2xzTnlRazFQWjVNVUpCK2Yy?=
 =?utf-8?B?Tkl6UGJXckRiaEJHaE1YVThMZGNaWmpnSk9aRlNpZmllRG1ISlVkVElGOGhO?=
 =?utf-8?B?T3FjRmxZQWNrcEVxL0xoUmpDTTcyVXpJTmlSQkFjLy9NczlOTkI0RitITHpv?=
 =?utf-8?B?dFpjeXF6MlVmanF1R2NmdjJZaUdKRE82K0F2Vi9TckZoMVpIRUZKNEtUMU9E?=
 =?utf-8?B?YmVwVkNXZnkxN2RmN2o5UjlSZHR0UkdIbXpKSHorUVlHQVB5TE5SVXM1Rk5D?=
 =?utf-8?B?a0pUL1g4UnZoREJ0ekEyT2FVOWhGOXBOMVIyRWZuYWM5TFMrT1lFTnIyQ3Z1?=
 =?utf-8?B?YitVSzZidFc3Zm96cVAwVHlHRDZQc3dxd2hyN1gxQWRPREM3djdzU0lNQkEx?=
 =?utf-8?B?TmU5ZGVleW9CMDhHNWtXSGxvT1lLT0ZNanpMaXp1cVR1NGpNVWtDdEsxK2oy?=
 =?utf-8?Q?3wnynFD1uymlv1TEak?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a484d5-837e-49f1-dc37-08de59a9e61f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 11:32:18.0549
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GzFQ0U10xjIM8kgJX9Fi53NQ0ZHBqw8aCaNhn6jOzqmEBhJtoMZM3ioMteuVDOaH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5772
X-Spamd-Bar: ----
Message-ID-Hash: RUQEOPGEUL6XJ37R3HYPLLRBZ5PHOLK7
X-Message-ID-Hash: RUQEOPGEUL6XJ37R3HYPLLRBZ5PHOLK7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUQEOPGEUL6XJ37R3HYPLLRBZ5PHOLK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 95BBC660B2
X-Rspamd-Action: no action

T24gMS8yMS8yNiAxNzowMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBXZWQsIEphbiAy
MSwgMjAyNiBhdCAwNDoyODoxN1BNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yMS8yNiAxNDozMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4+IE9uIFdlZCwgSmFu
IDIxLCAyMDI2IGF0IDEwOjIwOjUxQU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
Pj4+IE9uIDEvMjAvMjYgMTU6MDcsIExlb24gUm9tYW5vdnNreSB3cm90ZToNCj4+Pj4+IEZyb206
IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4+Pg0KPj4+Pj4gZG1hLWJ1
ZiBpbnZhbGlkYXRpb24gaXMgcGVyZm9ybWVkIGFzeW5jaHJvbm91c2x5IGJ5IGhhcmR3YXJlLCBz
byBWRklPIG11c3QNCj4+Pj4+IHdhaXQgdW50aWwgYWxsIGFmZmVjdGVkIG9iamVjdHMgaGF2ZSBi
ZWVuIGZ1bGx5IGludmFsaWRhdGVkLg0KPj4+Pj4NCj4+Pj4+IEZpeGVzOiA1ZDc0NzgxZWJjODYg
KCJ2ZmlvL3BjaTogQWRkIGRtYS1idWYgZXhwb3J0IHN1cHBvcnQgZm9yIE1NSU8gcmVnaW9ucyIp
DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29t
Pg0KPj4+Pg0KPj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KPj4+Pg0KPj4+PiBQbGVhc2UgYWxzbyBrZWVwIGluIG1pbmQgdGhhdCB0
aGUgd2hpbGUgdGhpcyB3YWl0IGZvciBhbGwgZmVuY2VzIGZvcg0KPj4+PiBjb3JyZWN0bmVzcyB5
b3UgYWxzbyBuZWVkIHRvIGtlZXAgdGhlIG1hcHBpbmcgdmFsaWQgdW50aWwNCj4+Pj4gZG1hX2J1
Zl91bm1hcF9hdHRhY2htZW50KCkgd2FzIGNhbGxlZC4NCj4+Pg0KPj4+IENhbiB5b3UgZWxhYm9y
YXRlIG9uIHRoaXMgbW9yZT8NCj4+Pg0KPj4+IEkgdGhpbmsgd2hhdCB3ZSB3YW50IGZvciBkbWFf
YnVmX2F0dGFjaF9yZXZvY2FibGUoKSBpcyB0aGUgc3Ryb25nDQo+Pj4gZ3VhcmVudGVlIHRoYXQg
dGhlIGltcG9ydGVyIHN0b3BzIGRvaW5nIGFsbCBhY2Nlc3MgdG8gdGhlIG1lbW9yeSBvbmNlDQo+
Pj4gdGhpcyBzZXF1ZW5jZSBpcyBjb21wbGV0ZWQgYW5kIHRoZSBleHBvcnRlciBjYW4gcmVseSBv
biBpdC4gSSBkb24ndA0KPj4+IHRoaW5rIHRoaXMgd29ya3MgYW55IG90aGVyIHdheS4NCj4+Pg0K
Pj4+IFRoaXMgaXMgYWxyZWFkeSB0cnVlIGZvciBkeW5hbWljIG1vdmUgY2FwYWJsZSBpbXBvcnRl
cnMsIHJpZ2h0Pw0KPj4NCj4+IE5vdCBxdWl0ZSwgbm8uDQo+IA0KPiA6KA0KPiANCj4gSXQgaXMg
a2luZCBvZiBzaG9ja2luZyB0byBoZWFyIHRoZXNlIEFQSXMgd29yayBsaWtlIHRoaXMgd2l0aCBz
dWNoIGENCj4gbG9vc2UgbGlmZXRpbWUgZGVmaW5pdGlvbi4gTGVvbiBjYW4geW91IGluY2x1ZGUg
c29tZSBvZiB0aGVzZSBkZXRhaWwNCj4gaW4gdGhlIG5ldyBjb21tZW50cz8NCg0KWWVhaCwgd2hl
biB0aGUgQVBJIHdhcyBkZXNpZ25lZCB3ZSBpbnRlbnRpb25hbGx5IHNhaWQgdGhhdCBieSB3YWl0
aW5nIGZvciB0aGUgZmVuY2VzIG1lYW5zIHdhaXRpbmcgZm9yIGFsbCBvcGVyYXRpb25zIHRvIGZp
bmlzaC4NCg0KQnV0IHRoZW4gY2FtZSByZWFsaXR5IGFuZCB0aGVyZSBIVyBqdXN0IGRvIHN0dWZm
IGxpa2Ugc3BlY3VsYXRpdmVseSByZWFkIGFoZWFkLi4uIGFuZCB3aXRoIHRoYXQgYWxsIHRoZSBu
aWNlIGRlc2lnbiBnb2VzIHRvIHRoZSB0cmFzaC1iaW4uDQoNCj4+Pj4gSW4gb3RoZXIgd29yZHMg
eW91IGNhbiBvbmx5IHJlZGlyZWN0IHRoZSBETUEtYWRkcmVzc2VzIHByZXZpb3VzbHkNCj4+Pj4g
Z2l2ZW4gb3V0IGludG8gbmlydmFuYSAob3IgYSBkdW1teSBtZW1vcnkgb3Igc2ltaWxhciksIGJ1
dCB5b3Ugc3RpbGwNCj4+Pj4gbmVlZCB0byBhdm9pZCByZS11c2luZyB0aGVtIGZvciBzb21ldGhp
bmcgZWxzZS4NCj4+Pg0KPj4+IERvZXMgYW55IGRyaXZlciBkbyB0aGlzPyBJZiB5b3UgdW5sb2Fk
L3JlbG9hZCBhIEdQVSBkcml2ZXIgaXQgaXMNCj4+PiBnb2luZyB0byByZS11c2UgdGhlIGFkZHJl
c3NlcyBoYW5kZWQgb3V0Pw0KPj4NCj4+IEkgbmV2ZXIgZnVsbHkgcmVhZCB0aHJvdWdoIGFsbCB0
aGUgc291cmNlIGNvZGUsIGJ1dCBpZiBJJ20gbm90DQo+PiBjb21wbGV0ZWx5IG1pc3Rha2VuIHRo
YXQgaXMgZW5mb3JjZWQgZm9yIGFsbCBHUFUgZHJpdmVycyB0aHJvdWdoIHRoZQ0KPj4gRE1BLWJ1
ZiBhbmQgRFJNIGxheWVyIGxpZmV0aW1lIGhhbmRsaW5nIGFuZCBJIHRoaW5rIGV2ZW4gaW4gb3Ro
ZXIgaW4NCj4+IGtlcm5lbCBmcmFtZXdvcmtzIGxpa2UgVjRMLCBhbHNhIGV0Yy4uLg0KPiANCj4+
IFdoYXQgcm91Z2hseSBoYXBwZW5zIGlzIHRoYXQgZWFjaCBETUEtYnVmIG1hcHBpbmcgdGhyb3Vn
aCBhIGNvdXBsZQ0KPj4gb2YgaG9vcHMga2VlcHMgYSByZWZlcmVuY2Ugb24gdGhlIGRldmljZSwg
c28gZXZlbiBhZnRlciBhIGhvdHBsdWcNCj4+IGV2ZW50IHRoZSBkZXZpY2UgY2FuIG9ubHkgZnVs
bHkgZ28gYXdheSBhZnRlciBhbGwgaG91c2VrZWVwaW5nDQo+PiBzdHJ1Y3R1cmVzIGFyZSBkZXN0
cm95ZWQgYW5kIGJ1ZmZlcnMgZnJlZWQuDQo+IA0KPiBBIHNpbXBsZSByZWZlcmVuY2Ugb24gdGhl
IGRldmljZSBtZWFucyBub3RoaW5nIGZvciB0aGVzZSBraW5kcyBvZg0KPiBxdWVzdGlvbnMuIEl0
IGRvZXMgbm90IHN0b3AgdW5sb2FkaW5nIGFuZCByZWxvYWRpbmcgYSBkcml2ZXIuDQoNCldlbGwg
YXMgZmFyIGFzIEkga25vdyBpdCBzdG9wcyB0aGUgUENJZSBhZGRyZXNzIHNwYWNlIGZyb20gYmVp
bmcgcmUtdXNlZC4NCg0KU28gd2hlbiB5b3UgZG8gYW4gImVjaG8gMSA+IHJlbW92ZSIgYW5kIHRo
ZW4gYW4gcmUtc2NhbiBvbiB0aGUgdXBzdHJlYW0gYnJpZGdlIHRoYXQgd29ya3MsIGJ1dCB5b3Ug
Z2V0IGRpZmZlcmVudCBhZGRyZXNzZXMgZm9yIHlvdXIgTU1JTyBCQVJzIQ0KDQo+IE9idmlvdXNs
eSBpZiB0aGUgZHJpdmVyIGlzIGxvYWRlZCBmcmVzaCBpdCB3aWxsIHJlYWxsb2NhdGUuDQo+IA0K
PiBUbyBkbyB3aGF0IHlvdSBhcmUgc2F5aW5nIHRoZSBEUk0gZHJpdmVycyB3b3VsZCBoYXZlIHRv
IGJsb2NrIGR1cmluZw0KPiBkcml2ZXIgcmVtb3ZlIHVudGlsIGFsbCB1bm1hcHMgaGFwcGVuLg0K
DQpPaCwgd2VsbCBJIG5ldmVyIGxvb2tlZCB0byBkZWVwbHkgaW50byB0aGF0Lg0KDQpBcyBmYXIg
YXMgSSBrbm93IGl0IGRvZXNuJ3QgYmxvY2ssIGJ1dCByYXRoZXIgdGhlIGxhc3QgZHJtX2Rldl9w
dXQoKSBqdXN0IGNsZWFucyB0aGluZ3MgdXAuDQoNCkFuZCB3ZSBoYXZlIGEgQ0kgdGVzdCBzeXN0
ZW0gd2hpY2ggZXhlcmNpc2VzIHRoYXQgc3R1ZmYgb3ZlciBhbmQgb3ZlciBhZ2FpbiBiZWNhdXNl
IHdlIGhhdmUgYSBiaWcgY3VzdG9tZXIgZGVwZW5kaW5nIG9uIHRoYXQuDQoNCj4+IEJhY2tncm91
bmQgaXMgdGhhdCBhIGxvdCBvZiBkZXZpY2Ugc3RpbGwgbWFrZSByZWFkcyBldmVuIGFmdGVyIHlv
dQ0KPj4gaGF2ZSBpbnZhbGlkYXRlZCBhIG1hcHBpbmcsIGJ1dCB0aGVuIGRpc2NhcmQgdGhlIHJl
c3VsdC4NCj4gDQo+IEFuZCB0aGV5IGFsc28gZG9uJ3QgaW5zZXJ0IGZlbmNlcyB0byBjb25jbHVk
ZSB0aGF0Pw0KDQpOb3BlLCB0aGF0IGlzIGp1c3Qgc3BlY3VsYXRpdmVseSByZWFkIGFoZWFkIGZy
b20gb3RoZXIgb3BlcmF0aW9ucyB3aGljaCBhY3R1YWxseSBkb2Vzbid0IGhhdmUgYW55dGhpbmcg
VE9ETyB3aXRoIG91ciBidWZmZXIuDQoNCj4+IFNvIHdoZW4geW91IGRvbid0IGhhdmUgc2FtZSBn
cmFjZSBwZXJpb2QgeW91IGVuZCB1cCB3aXRoIFBDSSBBRVIsDQo+PiB3YXJuaW5ncyBmcm9tIElP
TU1VLCByYW5kb20gYWNjZXNzZXMgdG8gUENJIEJBUnMgd2hpY2gganVzdCBoYXBwZW4NCj4+IHRv
IGJlIGluIHRoZSBvbGQgbG9jYXRpb24gb2Ygc29tZXRoaW5nIGV0Yy4uLg0KPiANCj4gWWVzLCBk
ZWZpbml0ZWx5LiBJdCBpcyB2ZXJ5IGltcG9ydGFudCB0byBoYXZlIGEgZGVmaW5pdGl2ZSBwb2lu
dCBpbg0KPiB0aGUgQVBJIHdoZXJlIGFsbCBhY2Nlc3NlcyBzdG9wLiBXaGlsZSAicmVhZCBidXQg
ZGlzY2FyZCIgc2VlbXMNCj4gaGFybWxlc3Mgb24gdGhlIHN1cmZhY2UsIHRoZXJlIGFyZSBjb3Ju
ZXIgY2FzZXMgd2hlcmUgaXQgaXMgbm90IE9LLg0KPiANCj4gQW0gSSB1bmRlcnN0YW5kaW5nIHJp
Z2h0IHRoYXQgdGhlc2UgZGV2aWNlcyBtdXN0IGZpbmlzaCB0aGVpciByZWFkcw0KPiBiZWZvcmUg
ZG9pbmcgdW5tYXA/DQoNClllcywgYW5kIHRoYXQgaXMgYSBiaWcgb25lLiBPdGhlcndpc2Ugd2Ug
YmFzaWNhbGx5IGxvb3NlIGFueSBjaGFuY2Ugb2Ygc2FuZWx5IGhhbmRsaW5nIHRoaXMuDQoNCj4+
IEkgd291bGQgcmF0aGVyIGxpa2UgdG8ga2VlcCB0aGF0IHNlbWFudGljcyBldmVuIGZvciBmb3Jj
ZWZ1bGx5DQo+PiBzaG9vdGRvd25zIHNpbmNlIGl0IHByb3ZlZCB0byBiZSByYXRoZXIgcmVsaWFi
bGUuDQo+IA0KPiBXZSBjYW4gaW52ZXN0aWdhdGUgbWFraW5nIHVubWFwIHRoZSBiYXJyaWVyIHBv
aW50IGlmIHRoaXMgaXMgdGhlIGNhc2UuDQoNCkkgbWVhbiB3aGVuIHlvdSBhYnNvbHV0ZWx5IGp1
c3QgY2FuJ3QgZG8gaXQgb3RoZXJ3aXNlIGp1c3QgbWFrZSBzdXJlIHRoYXQgYSBzcGVjdWxhdGl2
ZSByZWFkIGRvZXNuJ3QgcmVzdWx0IGluIGFueSBmb3JtIG9mIGVycm9yIG1lc3NhZ2Ugb3IgdHJp
Z2dlcmluZyBhY3Rpb25zIG9yIHNpbWlsYXIuIFRoYXQgYXBwcm9hY2ggd29ya3MgYXMgd2VsbC4N
Cg0KQW5kIHllcyB3ZSBhYnNvbHV0ZWx5IGhhdmUgdG8gZG9jdW1lbnQgYWxsIHRob3NlIGZpbmRp
bmdzIGFuZCBiZWhhdmlvciBpbiB0aGUgRE1BLWJ1ZiBBUEkuDQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
