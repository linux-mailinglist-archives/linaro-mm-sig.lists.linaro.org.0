Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 258EBC8DAC6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 11:02:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DBE23F8FA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 10:01:59 +0000 (UTC)
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013043.outbound.protection.outlook.com [40.93.201.43])
	by lists.linaro.org (Postfix) with ESMTPS id E6FD43F70A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:01:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=zY+izlJN;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.201.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5HoDC83jtoE52iYCQj3StDzIA8Rca8X+yU4hHuWKrr9wDcBJOf+yslfKiift6k3ldt4MTxeRzgmXWaZi1mn7147JWSvENyQjBP5UTOuIAS6rV2vb5p+Z7rFqHdarcEBvZW0zV8FtgEn3nEIUF98HOUsNKNLMNLRE0cNuqry+3agPiT8zbyQDBokZE0wJISB9XGaBDgqVe5mzswAtqevjqwC+jwrsRnWYc0ViQEiQukZHM5CW3kidOm0eTtQJW6v83k4PcmWiITbQzz9THt8YNZ38dmFVEMFixfO6a+9OZcTZQLrM/q8yw5Zmavd5TGV5fFET89L1Hy0jRi/mWKkzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NQwjV1Re9ZtRXXHVYmkNR9bW/SM8RQB5qre/85stv2g=;
 b=VqcY392+tNoVmzjwYV5HA+yR3FNNFQEiPFSwv1nz8AHLmm4HpGlHAec5/AVgAnMhCj7UpWcDeFK+/wf+4z+PObHodIMvd/GnQQh/J2fw0g9QUW1ARPnTRqSxk/AC2XDxELuxPp37GU6vORIcVSGX329XsL7foAuw2g6+NhDGT46Yq/ZUdpCFaaBqgxYX1xJ+18H1ah7huTVqS+TAPnzqxIYuugqr4IhROXB2AlurmApKV5u6Ux2VJqcGl42k07HO63oRmEAkY/nb7zyKSlPuy/GxWalHD1cMGVrwzzrdrcT3r2Rw0HW1OiP3vetQxwwX1xwTyE79V7v2DaxxS/kkLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NQwjV1Re9ZtRXXHVYmkNR9bW/SM8RQB5qre/85stv2g=;
 b=zY+izlJN4idoai2/jtcHo4cHYtgfMkvKvnt1FmX3Kjq1o2m/wBvDF7ifOSBzHEuoU5gJ5M2xpxEvO4Pz0J4QVh1YnVaMvyApusE6BQfetA2mgt+i8bQpU1lezo2CSlNo+VXbj0C8df0KgzBuzgnuJedwW2YGtIt8zL/8B6DzPHA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB6746.namprd12.prod.outlook.com (2603:10b6:510:1c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 10:01:15 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 10:01:15 +0000
Message-ID: <adfd840e-fcc8-4cdb-8fd8-d0e48ee32247@amd.com>
Date: Thu, 27 Nov 2025 11:01:06 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Matthew Brost <matthew.brost@intel.com>
References: <20251126131914.149445-2-phasta@kernel.org>
 <20251126131914.149445-3-phasta@kernel.org>
 <aSctt3QFiEIB61Gr@lstrano-desk.jf.intel.com>
 <aScxGDYeNeN1WYja@lstrano-desk.jf.intel.com>
 <f1864f6d-8403-406d-81a0-00a71495cae8@amd.com>
 <35189892c0cb774155e2012d41371b4d3f8e7d0f.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <35189892c0cb774155e2012d41371b4d3f8e7d0f.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0690.namprd03.prod.outlook.com
 (2603:10b6:408:10e::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB6746:EE_
X-MS-Office365-Filtering-Correlation-Id: 80971376-4574-4c63-b7a9-08de2d9be6dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MXZ3aU1hSk9vSy9BckRjay9yKy8vTytRQWJVc3Y4ZWlUcUtBRjZTTFhybWNJ?=
 =?utf-8?B?bE5OSUUyb1pUV0VuVURsR3dUTmNSTFZSZkFmWTJvYVBYZVR4dDhPYWhxY1JK?=
 =?utf-8?B?Ym5mazUwc281NzJRbWZzMnRYZlU3ZXVmdDA1Y1RJSGZGbTNiKzVRRTBRQmgr?=
 =?utf-8?B?cW5aeEpvQjVtVktDWFNUZkgrSnlaRnNOOERXZldnbVBmd3Z1RFc0dy9NTngz?=
 =?utf-8?B?ZU9UWjhRS216QWZXYWkyRkp5aXUxdzhGVkljdkVhNXRPUW1PN3NIMERTa3h6?=
 =?utf-8?B?ZzZ2cVNsRi9DT203clZGWWJodFppUDRQS3ZYOFdHR1Z6TTJvNVh6ckdZOWZP?=
 =?utf-8?B?QkZQU2VxNUIzc1FRUDFLbzNEMEpCaGIyb3NiVk4rUkc2d1dyTTZhVEp2c2Rz?=
 =?utf-8?B?Z0dhSzI3ZUJMSFdSRGFqSm4waEJ0aGxGZUNFMFZ5T2M3TDJPTnVvSEVtYnp5?=
 =?utf-8?B?bnB5VHhlN0xydVhzWHROVzFFUUJhemcwbE1ESEJEYndOZXNOUG1xSVpRK3Ex?=
 =?utf-8?B?MERnbkhGRjdaSWpITllJNHhrZW5ZQ1MwZWp3TDcvaUdwSEZ3bTFGaUtUeldL?=
 =?utf-8?B?a0J3NEJScFdkRFZwOVBNSHQvTGxlM3E1c0VRN1BrL25kQWJtblpqOFYrL3d3?=
 =?utf-8?B?S2VHNmx6ZGYwU3gzcXdjdmJFRFZNVW15dnVRVUJIaFpKaG9hbXc0OHZ4Zm55?=
 =?utf-8?B?dSswMXljTkRCS0NHMWZ1NkFnQXhRN1VTVjZwVWxtMXVESDA5b3dJbTN3TWxH?=
 =?utf-8?B?RTl2YzUxbnNKRmhvTzkyS3phRVRuNlhMU3FlTG5wUzVwRStsV1hNNHJHaFlP?=
 =?utf-8?B?TVFmY1lBcisyNy8zRmxMUHgxMlBsdnBkbFZzZXdyeEV2aXNlVGVvcnZmbVJN?=
 =?utf-8?B?dHRnMG41dHgyOXZqemZOaXU4Mmx2ZjJBOVREcHpmSHBSZjRIckFaQjYzcWh5?=
 =?utf-8?B?TE9DY24vTjdldVRpZlE4WGRjMVJnWjg4Z0ZMbWtlNEF2Uk1YR1BhcllaUTF6?=
 =?utf-8?B?OFU5ejdYSFFHWVRLTzhBM2w2WmZ6enNpams5elBOd2FqaFdmVGdqZEJrOHV1?=
 =?utf-8?B?ZDV4b3BnK0UrRHBtMHZsMDBqYkhZSUZ1ODZnK0N0SEp4WW1DamxQS0R6dVBW?=
 =?utf-8?B?azA4bGR5N0prTng4SktRb1NrN0krVkVjM0dsTlhNeFYydVZobjdWWXNIeWlm?=
 =?utf-8?B?a29tVm0rYlMvYVVDQkErYnZ2dGVuTHMvcVlYdkRicW5objVPYjlxMXhmWm9M?=
 =?utf-8?B?WE8zdkJ4ZHpwZmdkalJXK0R0Tk1vU0phVU9sZ0JzTnR0eDNtUHNJVTZkVHZ5?=
 =?utf-8?B?RnJYYU8xNmpHS3dIdUVvSzVwSHNERWJtY1VXbzFvbmMvSWJXMktEZE5DckJv?=
 =?utf-8?B?cWYya09WSDAvcitSa0Nvd3V5ZDNSQ3F0M0tYVjd6ZDJOZWgzaFdhNjEvUXBs?=
 =?utf-8?B?dGVxWjVIWGRLUkRuOW9MU0FJQU9ndXVOQUh4YUxoRzNYeHZQaGY4TStQMExm?=
 =?utf-8?B?Mk9uT2k0ZThNbU1ldXhVQzlWdWZ0NjRKZXVlaXQvUm5qczlqQXhMM2VHYUJz?=
 =?utf-8?B?TE81Z2lmZERJcjdqdTladkxVZ2FBZ3QzeUlLbERxekVYc1NxY1hrZFJtZ3di?=
 =?utf-8?B?b3crVFg2K2NYQmsrSnZvZ3huN0dIaWZ4SVVTN1FUTXVFaTFheTgycHp6bnQ2?=
 =?utf-8?B?SmhXK2E2cnJ1Zlh2THdqRnhybUphMmRTUHlhYU4rUHh3R0VtMWhwRENzTnRo?=
 =?utf-8?B?dFNEK0RyaEhUODNpUVdoZ0syRy9MN21oSDN5d2tkOGFRMHlzeWJmdVRqUXhM?=
 =?utf-8?B?MkNxeDFvRjcwdHE5WDRSNmFLOEpxem1JYXZrYjU2S1N1dDMxeGRYaVROcUgw?=
 =?utf-8?B?OEcxQ2VBaERSdGJ6Qmx3Q0o2MXE5eEdYbDNsV2lQUzdOQzgybTFqamlqNlhn?=
 =?utf-8?Q?WEhJ/GMRWgQ36vbQCaDEpDhO7naQdbYs?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3oySE9NV1U1RGJzUVEzUDlmRUlXMGoycXg0VEpXVldNeG1WaXlUQ25uekU2?=
 =?utf-8?B?ZEVvY2ZaR0R6TGFKK0s0REUxMzU5ekJYRTEvTEhURXVmZDc4TEpoUXpKODh1?=
 =?utf-8?B?dmE0OHU2Ky9qUzhTWHhvQmhnMVlHMTdVS004TFFlV1BnbnB3UlhKRDYzTFFB?=
 =?utf-8?B?aU5SZThxY05xdHZVeU9lMTE1N3pnK1cvTTkxVndsMkNldUdKRTl3RzlPVHhj?=
 =?utf-8?B?YnZSV0p3Rmo0eG1nU25kS2tBYjNxdUhVRGtXQjcrVEdZbGdQMjNuWnV4eHBB?=
 =?utf-8?B?ZFpEWmxJL2tIT21BZytYTHEvdi9VQzdZWk1rRTA3QmVIN0xNM0VPclJiVVJj?=
 =?utf-8?B?U1VTcXNpbDljQjRyYlBpUkdXeld2Wk9IZlc3aDM3WFpkbWhyK2k4MDJLS2tX?=
 =?utf-8?B?YnEvU2U4b3E0RDB0Q3VnWDRVLzZtdUlGQkJZVktPdjQ2WWhsL1FTcmI3bk0v?=
 =?utf-8?B?cWhlb1lWV3RQUUczQXZNWWRSK2QzelJaYis0ZGZ0YUZORWZ6VUo0OVdqVjF5?=
 =?utf-8?B?a1hPbHUyeng3c1pTS2JHcVVlMWJaNFhrVHg1UTVLa1p4MG9DcG5kNGlmTWdX?=
 =?utf-8?B?TlJlRm5PL0U0TkJSVTRTVnBzNnNPK2xPVTBHcE1VTzA0ekxrekFHblZPZlZs?=
 =?utf-8?B?RkFRayszOTZPSGNBbWNsRnJnNVF5QlNwOGp2cW55YnN5bjVuUW5JWTdBbDQ0?=
 =?utf-8?B?NkV1cXY0dnNQSlQrWXpDVDVmWDBxZ2s3M1h3OUppdGN1Tmx6TmlxWE5pNGhz?=
 =?utf-8?B?cXExT3BGa0JuWEM2Znl1dnlXL3R6bUF6U3JudlBMejlqTnBHd1lDcWNYZVVJ?=
 =?utf-8?B?Nk9GRUZXVEJpSlBzNDJLWWRMNXFEdmF5WVUreEF1K0liODF5dE5vd0l4elFW?=
 =?utf-8?B?c000MnZ4WWovbW1rS0FHQzdlS0pyRVRobDdKNGpkc0hhck9PZ2loQ3JTdlVK?=
 =?utf-8?B?UCtNRVdpa3lqYXpqV0ZPQTA5TVNzeUZuSHlJaG8zUzdCUWplRDRnYXJJNGc5?=
 =?utf-8?B?clNVNEdmVnpEc2JoWUJZMjArNUNxVHhNc0Z5WTFjY0drTHdIRnh1UmxaTUtm?=
 =?utf-8?B?ZC9obElwcmd3dGNpdGQwWk9IS3Q0UlNtYWt3aituckN2YUxaNXFuZE5EaThz?=
 =?utf-8?B?eVZ3c2hGWVVIZ3JoWWF5U0grTy9aeEZrcWtJWGhsdVhWaitMUXZDV2xQTjda?=
 =?utf-8?B?OXpUOHhGVEg0NWdIQU15bXJ0UUZYUkJrdzhteDJSNCtGSHRUYU9hV3RDM3c0?=
 =?utf-8?B?WSs4ZFlCQnhhRzJ6QmlRdkk0VElWTUVTb3kvRDVpb0NibnRuYVU5WXpWeVFa?=
 =?utf-8?B?bWp2RW5SM1d6VDZ3UWhqMGVwUDVyUWxJMG95bjlPVjhLWHcrOVdJTklwaFhD?=
 =?utf-8?B?aUZmaTlkSmQwZUlMSndtN2dLZi9CRzlPTlExdWd1cEpYOXZCMWRaSjAvS3hH?=
 =?utf-8?B?bncvK1k2RUM0ajJPYjk2UnN2RWlGb25aalpMYVBFQWtTT2liUkFuaTdvNEV0?=
 =?utf-8?B?KzRQL1Vidk1tcjl3V3dTOU5JZkZrQjZrNmpBUjZ6V2RHL3VFNWJZM3ZsMFV3?=
 =?utf-8?B?dnNneTFsVTRyeVlCV0RzVXdlL0hRMUtRN3ZsL3FuU3ZPZWNRTHp3N0xOM2hh?=
 =?utf-8?B?a09WR2kyNDN2OXl0Z1ZVb1ZTWWV0OEdqZGh3N3M0Q2JqR1E4L2Q3ditNLzVu?=
 =?utf-8?B?VnpQYjBRSFRQcXNBbE9aWHNMN1AvU1d2T3lNZDRaUWcrYkhHQzVha0YzZlhY?=
 =?utf-8?B?SnFINktsRGhwU2l3R212VlplR0M0dzd4T3VzNGdpVWtzTVBQTkIxVEo3TjAr?=
 =?utf-8?B?dVNCYVVlRUVlZSsxMTBBQ1dvWDlLTVpBYUxwd0toMXQ5Nzl3bU13UHhxOHpK?=
 =?utf-8?B?WnA0ODNubmNIeGRaVDB5QlFaNnc1Ukd2bEIvaldWTjBKUitteG9iMG94bllZ?=
 =?utf-8?B?ZEQvRVhiWWVKeW1SN1o2YzdzMW52ZWVOcmpVajViQUk2ZktwdThzUEJVVkdu?=
 =?utf-8?B?Nnh2TmduOGN3RnZlWjZudWR3QklnMi9HWlJ6eVI2WFhPOTI5ZzlKTnJPZ0hP?=
 =?utf-8?B?OVlxMzJMME9PS3V4QTUyb2RLUDRDeDdHb2kxYXQxM2cwUi9IRUZBNEliN1ZJ?=
 =?utf-8?Q?Od/ADU0UKhUkWugYgAfbXf6eR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80971376-4574-4c63-b7a9-08de2d9be6dd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 10:01:15.1241
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5V5FQIDUepCSEFIsu7CbRa2EcLIiFA3Q7FqVgSTnhk/4zwVw71E/9bxQfsD8eT08
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6746
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	ASN_FAIL(0.00)[43.201.93.40.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.201.43:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,igalia.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E6FD43F70A
X-Spamd-Bar: ----
Message-ID-Hash: HWACMFIESISHKPZPGANXKTDBNFDDGHTJ
X-Message-ID-Hash: HWACMFIESISHKPZPGANXKTDBNFDDGHTJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HWACMFIESISHKPZPGANXKTDBNFDDGHTJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjcvMjUgMTA6MTYsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTI3IGF0IDA5OjExICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMTEv
MjYvMjUgMTc6NTUsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+Pj4gT24gV2VkLCBOb3YgMjYsIDIw
MjUgYXQgMDg6NDE6MjdBTSAtMDgwMCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4+Pj4gT24gV2Vk
LCBOb3YgMjYsIDIwMjUgYXQgMDI6MTk6MTBQTSArMDEwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3Rl
Og0KPj4+Pj4gVGhlIGRtYV9mZW5jZSBmcmFtZXdvcmsgY2hlY2tzIGF0IG1hbnkgcGxhY2VzIHdo
ZXRoZXIgdGhlIHNpZ25hbGVkIGZsYWcNCj4+Pj4+IG9mIGEgZmVuY2UgaXMgYWxyZWFkeSBzZXQu
IFRoZSBjb2RlIGNhbiBiZSBzaW1wbGlmaWVkIGFuZCBtYWRlIG1vcmUNCj4+Pj4+IHJlYWRhYmxl
IGJ5IHByb3ZpZGluZyBhIGhlbHBlciBmdW5jdGlvbiBmb3IgdGhhdC4NCj4+Pj4+DQo+Pj4+PiBB
ZGQgZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygpLCB3aGljaCBvbmx5IGNoZWNrcyB3aGV0
aGVyIGEgZmVuY2UgaXMNCj4+Pj4+IHNpZ25hbGVkLiBVc2UgaXQgaW50ZXJuYWxseS4NCj4+Pj4+
DQo+Pj4+PiBTdWdnZXN0ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2Fs
aWEuY29tPg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2Vy
bmVsLm9yZz4NCj4+Pj4NCj4+Pj4gVGhpcyBpcyBhIG5pY2UgY2xlYW5wOg0KPj4+PiBSZXZpZXdl
ZC1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQo+Pj4+DQo+Pj4+
PiAtLS0NCj4+Pj4+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTkgKysrKysrKysr
LS0tLS0tLS0tLQ0KPj4+Pj4gwqBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5owqDCoCB8IDI0ICsr
KysrKysrKysrKysrKysrKysrKystLQ0KPj4+Pj4gwqAyIGZpbGVzIGNoYW5nZWQsIDMxIGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+
Pj4+IGluZGV4IDM5ZTZmOTNkYzMxMC4uMjUxMTdhOTA2ODQ2IDEwMDY0NA0KPj4+Pj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCj4+Pj4+IEBAIC0zNzIsOCArMzcyLDcgQEAgaW50IGRtYV9mZW5jZV9zaWdu
YWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+Pj4+IMKgDQo+
Pj4+PiDCoAlsb2NrZGVwX2Fzc2VydF9oZWxkKGZlbmNlLT5sb2NrKTsNCj4+Pj4+IMKgDQo+Pj4+
PiAtCWlmICh1bmxpa2VseSh0ZXN0X2FuZF9zZXRfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVE
X0JJVCwNCj4+Pj4+IC0JCQkJwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkpDQo+Pj4NCj4+PiBJ
IG5lZWQgdG8gcmVhZCBhIGxpdHRsZSBiZXR0ZXIsIEkgdGhpbmsgdGhpcyBjaGFuZ2UgaXNuJ3Qg
cXVpdGUgcmlnaHQuDQo+Pj4gVGhlIG9yaWdpbmFsIGNvZGUgaXMgdGVzdCBhbmQgc2V0LCB0aGUg
dXBkYXRlZCBjb2RlIGlzIHRlc3Qgb25seSAoaS5lLiwNCj4+PiB5b3UgYXJlIG1pc3NpbmcgdGhl
IHNldCBzdGVwKS4gU28gbWF5YmUganVzdCBsZWF2ZSB0aGlzIGxpbmUgYXMgaXMuDQo+Pg0KPj4g
T2gsIGdvb2QgcG9pbnQhIEkndmUgdG90YWxseSBtaXNzZWQgdGhhdCBhcyB3ZWxsLg0KPiANCj4g
T2ggZGVhcjsgSSBhbHNvIGp1c3Qgc2F3IGl0IHdoZW4gb3BlbmluZyB0aGUgbWFpbCBjbGllbnQg
Ll8uDQo+IA0KPj4NCj4+IEJ1dCB0aGF0IG1lYW5zIHRoYXQgdGhpcyBwYXRjaCBzZXQgaGFzbid0
IGV2ZW4gYmVlbiBzbW9rZSB0ZXN0ZWQuDQo+IA0KPiBJJ3ZlIGJ1aWx0IGl0IGFuZCBkaWQgc29t
ZSBiYXNpYyB0ZXN0aW5nIHdpdGggbXkgTm91dmVhdSBzeXN0ZW0uIEFueQ0KPiBzdWdnZXN0aW9u
cz8gRG8geW91IGhhdmUgYSBDSSB0aGF0IG9uZSBjYW4gdHJpZ2dlcj8NCg0KRE1BLWJ1ZiBoYXMg
Q09ORklHX0RNQUJVRl9TRUxGVEVTVFMgd2hpY2ggc2hvdWxkIGJlIGFibGUgdG8gY2F0Y2ggdGhp
bmdzIGxpa2UgdGhhdC4NCg0KQnV0IGV2ZW4gcnVubmluZyBOb3V2ZWF1IHNob3VsZCBoYXZlIGZv
dW5kIHRoaXMgc2luY2UgYmFzaWNhbGx5IG5vIGZlbmNlIGF0IHdvdWxkIHNpZ25hbCBhbnkgbW9y
ZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGh4DQo+IFAuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
