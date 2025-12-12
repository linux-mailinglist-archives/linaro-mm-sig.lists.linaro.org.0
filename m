Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39934CB878E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 10:31:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33D4F3FDB2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 09:31:30 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010058.outbound.protection.outlook.com [40.93.198.58])
	by lists.linaro.org (Postfix) with ESMTPS id 63EB53F9B6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 09:31:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=akRrsSJC;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.58 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tAcXvHam8wWCoHgYOGc7p2IGA+vtvDuy8eL9st0si5kxshLVksRe+CDSIwyt9If/RsuCmlex2iPQpseRTWOhdXq0byGA+v0BHg5/ulGA93moSkLjTif404m9y1RxmtEUBYwFmacLsI6Vecuk0yXrAXsmPcExERVY/rCOcWMDiQqrSDhcxHSBIR0VJu6OTCOCSdDJf9d0/yzj+tdPsjmuDsMBUF9ihpllCLFcV+le/90bvF+fgA5J7AURT3BjV0mc7ggdm0nuPWyaf6O4SOmTJIo62UtrihBReRiA+kpahs8GmxFWx+m3jESltTR39pEyjSHfXhMWHfw15k0EmAU4gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tIkOSidsCf7h3Q8UKm4qvDtsOOOmHCW/P3f3xcYL5jA=;
 b=UZfPzv3njnnapzX3GwNvkbLbRVHnVELb9pfF3pcWvS4FuZYUPEDg0VhhyuWSCgJGwZrQ9pRU8lWtuvo+gFhmS8mnq6Yl33TL7DRjRYnlVB26ZVib/GLxRZD/OCrnOp8nChOO+tGnZWmjb9HWyrtjOuoEQfvExoDmXQkosqzterwaKyDhNhNsgCWgVFu307BmfOmKYHjku4Z6U2MgviicDrWzsCn36F8LiA42NEbzjqM52RShDunIF7Jfni4SNyEfCqvocolkEdwkOtIHWRFs/QN7wFvtLbuRxLMntdD8oMhtR1oY3GaGUV6ZBg8BF6rhCLB5/ZVVxuKRVlYfI3qWMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIkOSidsCf7h3Q8UKm4qvDtsOOOmHCW/P3f3xcYL5jA=;
 b=akRrsSJCuqnURmWSJ6x3QTPe1dLDZn0xHI5+QPDLl5BpBSGLgOPLdbZjGQdk0Xe+268uCn90PU9Cto0WxWgjRgY3onLdSYA1mlFiTdvulpDkCWClI0AKB4lD4Yd8DGP2kBWxoVKLbxN9lVU41AM2Nu6Qf7wZ7gMZpc5QCvGAeMQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PPFDB1826343.namprd12.prod.outlook.com (2603:10b6:61f:fc00::628) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 09:31:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:31:07 +0000
Message-ID: <36c216bc-a60a-4ec8-b87c-d9e8561eae1c@amd.com>
Date: Fri, 12 Dec 2025 10:31:02 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-4-christian.koenig@amd.com>
 <cdfd4681-8680-4c6f-832e-3b7d8f9a775c@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <cdfd4681-8680-4c6f-832e-3b7d8f9a775c@ursulin.net>
X-ClientProxiedBy: FR2P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PPFDB1826343:EE_
X-MS-Office365-Filtering-Correlation-Id: b06423bd-2351-4e6f-192e-08de39612da6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RVMvbktRcWxkQnRYeER6c29sNEtzVzlmNHZhQjQ2S053ZkRIYUp5UlUvSjky?=
 =?utf-8?B?OU9qaVNVNm9pckkrdVVNdWFqaGJGeTgxK0Q2c2VkMGVtdW5RQ2RjSTNEeFYy?=
 =?utf-8?B?MUt3REJDZ0thbkprT0RwZ1RYdnNUaFVWZjlUYXZWVVlVS2VnWFh0OVg0NnVG?=
 =?utf-8?B?T3RCNXh2RzJBMG1Pam9ud3hES3RML3NmakU3WmY1bG9Rd0JINHBHZUVMSkVI?=
 =?utf-8?B?WWtwQ0FKYVNzbFRCSFQ2WDd5cDV3M1RTSnFNdUFHQ24zVVg0emRDRGtLak5F?=
 =?utf-8?B?dUdLby9jYS92QkRWODdWZGxESTFKSWM5WUNja1NVOCt1NUdFOWNwZFoyV3lt?=
 =?utf-8?B?aVBadVlwdms5b2J2NEVwZGI5d3MyZFVLNDZCb3VwRWsyaGtrM3ZXbThXa2tp?=
 =?utf-8?B?U3BPcmRRMk5YYk1oTW43anMyOEZTbUswR2ZDTThOZWFxSGlvbVVvUnZ4cHJY?=
 =?utf-8?B?YTFwclMrK1pLMnVxc3p6ZlJvc0djZTkvRFNPU3RITEtkYmk2T2lJNXhkdUVq?=
 =?utf-8?B?cTJUQkIwTWdnOFJYYi9zNnZ4a1pua2JYTVNxRVNSa2ZKUnIrYzdjMVpXbnRv?=
 =?utf-8?B?dkEyc2hmRXVScFJ1N05tWXZMbzhqV2hhcG4rNGpwK1BZcDAwTm0xSFd3T2lo?=
 =?utf-8?B?TTYyaWNNaDdoVDhYVysxb0VYc3RVd0YvQVI1VDJiSm0wbnRQc1gwallvRzIr?=
 =?utf-8?B?VDQwN3djODY5aE5icmVNSFBneGNFNDc1cTFUb2ExK0VzREhxZFJMUVRURlFi?=
 =?utf-8?B?eE9Xd1IyK0xVOUlxUTV1OGRFY2RodzM3OFJFNzQ4WTduUWYvb3lMT3NiZUQ4?=
 =?utf-8?B?bExuOUxHRDhDMzQrYzFXU3owVVhIWURKREhGd2dvZ0cxYUhHNlNSV2NNcHJo?=
 =?utf-8?B?T1hUY29yY1ZMcEJsdVpzaTBUekJFWTZsM29MMC8wcUhxTUN5MUhUdXk4RTFX?=
 =?utf-8?B?UXY1cTVVdmd1Ykl1NVdDUiszWWFFMDhoSlgxVEF3NVIvNnhZcG1XT2YrOU4r?=
 =?utf-8?B?UXY0bll3NU81a25DTGo2ODBQMm9TaHNheVl0R0FPY0J3Rm1mc0dreXpIOTNv?=
 =?utf-8?B?WUUxRW9xdHRvNDJ6WHIvY0NlcVcyMTFNRXlQdDU1QzVaY2J6ZHVqbEVJVTFG?=
 =?utf-8?B?S24va1UvdUVCMnBZN21FWXBNdEkvUGFIV1AvRWtOU20ya2QwMlZHYVJQVU4x?=
 =?utf-8?B?RVY2QTdDTXk2OWE0R052Nkx4RjhQcjJQWmpoQXFGNnZROW1ObUppM3JSNFI2?=
 =?utf-8?B?NlBCcXlnQ3RKV3Y2YTJDaWJBemFiYkpQQWRwYVB6U3ZBT29KczlwKzNOTStW?=
 =?utf-8?B?RlkwS1VnVHlaOFRPbExSMjBXTTVoSHVrM01pbjFqdTRpckFYQjl1YkVIa2tZ?=
 =?utf-8?B?MmpHZnErS0l6VUlsdGwxMnVTKzFmYSs3LzN5aFdiQTYrQ2M5U1ZuU1VDTkVn?=
 =?utf-8?B?KzFINEZLYzdUYkZ3ZjFwbnFIaXo0U251Z2dqYXpMekpiY1Qxajg3S3ZVcWVk?=
 =?utf-8?B?RVFPUmkyelhDNlpSb0gyVzBRcCtKTE8wRktLekZ6WHMxb2FCVTdHZExxbTNY?=
 =?utf-8?B?Ukh2VElJa1hrbXAzd2hHcHY4VW5ZSUQ3anVTYWlQQWdXMTV0TW51cHUrN0pL?=
 =?utf-8?B?ZEZnejArWVpvLzlvODAzc3NkUHFQM1B1UlNza3lMcFhyTTFTeTNrTUJWSXUr?=
 =?utf-8?B?QTlkYkJYUzhhQXczUzE2Tmt4Y1U3WGx1QytvSG40OGs3MFordkNGQytmUlF1?=
 =?utf-8?B?Wno2THdRbUIvL3JmT1AxaS9uSFFGcVhmOC8veUZTaC9Cb2pzYkVNT2pzR3VP?=
 =?utf-8?B?U3V3QlNRWFRTbDE0NDFNb0VVb3N3eThlQ2VYZGFET1JwM0lxUUZjZEE3UkR3?=
 =?utf-8?B?QTZJOUVRVkxTbHlMcmtNV1pyQVNrNC9GOXQwclFxNi8rNisrVm5wd2xvSEox?=
 =?utf-8?Q?7GDvITJY8xHUY4qr8IFZFOKuOF4MtqV1?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WjZIdXhsdlQrdmFsUFo1Q0d1K2w3Z3U0bnIrM28zc3VINVR0UGlLL0JQTVhJ?=
 =?utf-8?B?THg5WmZsQUNQRE5Ec1BDRHBZN2xyalJoNEZmWGM3dHlCQ0xZV3ZDYjVmenBK?=
 =?utf-8?B?ZlZBeGwyUmdWdFJseGVGZXpkVm9lUDY1MEdTRm9veTNYSHVmOGVPT1pTNWIr?=
 =?utf-8?B?TEcxMmpOaHNMWmhJdlp5cEtOTEFaZHNBaGJDUU4zaCtWZk53RVQxZ1lZa1RV?=
 =?utf-8?B?NnJuOExGNTFmY1EvU1NWbkg5SFdENERoY3JDMFprRnVOeWVpakxCNzA0YmZJ?=
 =?utf-8?B?R3B0eDJueWp1ajZFQzhIU1M0WGhrSjFXWi8xNFNjbFMrU2xucmlpdTAvNUxE?=
 =?utf-8?B?bS9IU2dxN2JUNkowQkJZYlk1VGRaUk9OZHlRcGp0WHh5Zk5YNzBaQU9ncnB5?=
 =?utf-8?B?Y3UwWm5hUElFKzkyQUhlZURZclVGalRkYXdicmtLbnl1U3kxM3JtQ1UwWE51?=
 =?utf-8?B?eFhRbU55RCs1QnJhTFRuLyt6WS9UKy9QYnpOU1hlOGpYVGZMVG81Q0JGSTVS?=
 =?utf-8?B?RU1XNlB1VjhOdGE4Q0NRRDRCOWNmVC9jalorK2p6b2NyZDdEYXNhT1R5SXhl?=
 =?utf-8?B?VG02MDlGQzdIbS82UmJrT0wvODZBQk1yQXd6Q0IrajBqZjYrTEh5dWtEQUZI?=
 =?utf-8?B?b2tEMnJCVm8rbDJNWDdiQnROWkFpVmhUWUtZRWVaYzY5SW9qMjd3Z1grOTJa?=
 =?utf-8?B?Sm9KU3JmZ0drbjhQWmc2bThqVzZMNEZoZTVtSzBpWnpMcFRIY2N5cFFmeGow?=
 =?utf-8?B?OWRXRG5MVWZtUmtIRGVGSFFKOWM3WnFVZFVVS1BFbTZLa2g0QmlqMmUyVisy?=
 =?utf-8?B?Yi9QRVpxOXdMMTAwalp6eTBsajFsd0l5YkFINE5KdUhKVm93eHdvQzdkd0No?=
 =?utf-8?B?c3dlZ0gxaHpDVEFMK09Gb2RWM3FIMi9hQVlEbDlaUnBVTzFOTzFnd3B6RmZh?=
 =?utf-8?B?emRlSnBwK2VuMUdrOUN5QTlJdllVYVhPcUNzT2FzLzJOcFhxVWNkNXVyNmRL?=
 =?utf-8?B?Q2NYL1NtYWFBbUtRS3I2WlJMS2RVdGRibmxlOGEzN0FOTS9GTXM0NXRCS0Zi?=
 =?utf-8?B?UC95aGpTaVliamx4TWRjZmx1VXlLSHRvd1JRNU96UWNvRTVQdXZmOGJ4TlNi?=
 =?utf-8?B?VDVSWjlWNDk0ZEUvd05kQ05SQXBmSEpqQy94WTlXNE91VjdWRUYzMHd2WHFv?=
 =?utf-8?B?aEl3L3ZOejNYcTYwTGpNZkJVZWFhOWpJbGY0WmQ1S0pzRTE1UXVsbC9kdGp5?=
 =?utf-8?B?QXRFdEh2M0p6aE9IcUpuaGx1T3piYnM2VmIwVGx6SVdLNFFmNDNKSzhpV1ZD?=
 =?utf-8?B?cWI3RjlwTndnWHhObDRQMVBEYnR2WVU3eXhEdVF3NElDeStuTVV3MkRlL2Iw?=
 =?utf-8?B?NEFWNVBXM1NBcHNMSzkvb2Z3cG1UY2NHdHdveXVVUWdQbTk3YTRlbE9JUVhY?=
 =?utf-8?B?ZzU2eXR4REdiNFl0VHF1elIyM2pnKy9RSUU4dDduQ1p5VTlBT1VxejFWcUYv?=
 =?utf-8?B?QzF4amZad3pOcE1pMHZsU0psajhVbTUzYUVHV2lLd2RhZDQvZUUzR2cxeEVI?=
 =?utf-8?B?aTh4RFNnVzhkZ2Fta2d1dnJHR25vckV0bk9iU0M4OERnamlCNTZRVlNuTzdG?=
 =?utf-8?B?dW1MUWdSbldkR3Q1N2RLSGoyY09Bakpxb08rOFlpaEZocVREenlPclBScmZZ?=
 =?utf-8?B?VDlpUVFLUmRQL2VHQzNkdjJUZzFyYWhjZHV5bnhvZDdtRkFhMzZXNTZPQUVr?=
 =?utf-8?B?ckh6b0p6cXpOZEs2WU1QSG1Yb2NDelpMeHZxcThEUEtTRGpadlRKQ3MvbjE3?=
 =?utf-8?B?Q0prVEZpaHNFRGFGcklpMENGamZjLzAvYldaUFVXa2VvWmJQOEl1MEMvTElD?=
 =?utf-8?B?Mngyb1dNTEJBSVZHd3AybWhhRHpQWHYxQWlPT3pmR1BNd3RtRFFjWlZlU3pR?=
 =?utf-8?B?UWhHOU41T1NtUVpvaVlBM0RhSTJDNjc3Yk01c3EzU0laeXJNTGUvMUN1N2g4?=
 =?utf-8?B?bG5TYlhFSGNNOHVSWDNOTmVaV2FDR0F2bnZUZnVvNVJZa0MxeEwxUDVjUnZx?=
 =?utf-8?B?ZkZYeEU5TThWNkowRUM2N3pBOVlMdnpEaGtLbGxnbnorYkFJS2d3RGZuZmdZ?=
 =?utf-8?Q?rvg8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b06423bd-2351-4e6f-192e-08de39612da6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 09:31:07.6435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QGwv1Zsq2km2Q6MH6af+BWbZfHjwaRVM1fFhc6iT/+nPhL77qVVrCLio7vzVWxHQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPFDB1826343
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	BLOCKLISTDE_FAIL(0.00)[40.93.198.58:server fail,2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.58:from];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[40.93.198.58:from,2603:10b6:510:13c::22:received];
	URIBL_BLOCKED(0.00)[CY7PR03CU001.outbound.protection.outlook.com:helo,igalia.com:email];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 63EB53F9B6
X-Spamd-Bar: ----
Message-ID-Hash: AT4DYN7PTZVOUG4AZCZU5XEL6TIPIAXE
X-Message-ID-Hash: AT4DYN7PTZVOUG4AZCZU5XEL6TIPIAXE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/19] dma-buf: inline spinlock for fence protection v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AT4DYN7PTZVOUG4AZCZU5XEL6TIPIAXE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTU6MzUsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gSGksDQo+IA0K
PiBPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gSW1wbGVt
ZW50IHBlci1mZW5jZSBzcGlubG9ja3MsIGFsbG93aW5nIGltcGxlbWVudGF0aW9ucyB0byBub3Qg
Z2l2ZSBhbg0KPj4gZXh0ZXJuYWwgc3BpbmxvY2sgdG8gcHJvdGVjdCB0aGUgZmVuY2UgaW50ZXJu
YWwgc3RhdGVpLiBJbnN0ZWFkIGEgc3BpbmxvY2sNCj4+IGVtYmVkZGVkIGludG8gdGhlIGZlbmNl
IHN0cnVjdHVyZSBpdHNlbGYgaXMgdXNlZCBpbiB0aGlzIGNhc2UuDQo+Pg0KPj4gU2hhcmVkIHNw
aW5sb2NrcyBoYXZlIHRoZSBwcm9ibGVtIHRoYXQgaW1wbGVtZW50YXRpb25zIG5lZWQgdG8gZ3Vh
cmFudGVlDQo+PiB0aGF0IHRoZSBsb2NrIGxpdmUgYXQgbGVhc3QgYXMgbG9uZyBhbGwgZmVuY2Vz
IHJlZmVyZW5jaW5nIHRoZW0uDQo+Pg0KPj4gVXNpbmcgYSBwZXItZmVuY2Ugc3BpbmxvY2sgYWxs
b3dzIGNvbXBsZXRlbHkgZGVjb3VwbGluZyBzcGlubG9jayBwcm9kdWNlcg0KPj4gYW5kIGNvbnN1
bWVyIGxpZmUgdGltZXMsIHNpbXBsaWZ5aW5nIHRoZSBoYW5kbGluZyBpbiBtb3N0IHVzZSBjYXNl
cy4NCj4+DQo+PiB2MjogaW1wcm92ZSBuYW1pbmcsIGNvdmVyYWdlIGFuZCBmdW5jdGlvbiBkb2N1
bWVudGF0aW9uDQo+PiB2MzogZml4IG9uZSBhZGRpdGlvbmFsIGxvY2tpbmcgaW4gdGhlIHNlbGZ0
ZXN0cw0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaWdhbGlhLmNvbT4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgSSBnYXZlIHItYiBvbiB0aGlz
IG9uZS4gTm90IGp1c3QgeWV0IGF0IGxlYXN0LiBNYXliZSB5b3UgaGF2ZSBtaXNzZWQgdGhlIGNv
bW1lbnRzIEkgaGFkIGluIHRoZSBwcmV2aW91cyB0d28gcm91bmRzPyBJIHdpbGwgcmVwZWF0IHRo
ZW0gYmVsb3cuDQoNCkkgd2FzIGFscmVhZHkgd29uZGVyaW5nIHdoeSB5b3UgZ2F2ZSBjb21tZW50
cyBhbmQgYW4gcmIgYnV0IHRob3VnaCB0aGF0IHRoZSBjb21tZW50cyBtaWdodCBqdXN0IGJlIG9w
dGlvbmFsLg0KDQpHb2luZyB0byByZW1vdmUgdGhhdCBhbmQgc2VlIG9uIHRoZSBjb21tZW50cyBi
ZWxvdy4NCg0KPj4gQEAgLTM2NSw3ICszNjQsNyBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGlt
ZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+IMKgwqDCoMKgwqAgc3Ry
dWN0IGRtYV9mZW5jZV9jYiAqY3VyLCAqdG1wOw0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgbGlzdF9o
ZWFkIGNiX2xpc3Q7DQo+PiDCoCAtwqDCoMKgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoZmVuY2UtPmxv
Y2spOw0KPj4gK8KgwqDCoCBsb2NrZGVwX2Fzc2VydF9oZWxkKGRtYV9mZW5jZV9zcGlubG9jayhm
ZW5jZSkpOw0KPj4gwqAgwqDCoMKgwqDCoCBpZiAodW5saWtlbHkodGVzdF9hbmRfc2V0X2JpdChE
TUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+ZmxhZ3MpKSkNCj4+IEBAIC00MTIsOSArNDEx
LDkgQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcChzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwga3RpbWVfdCB0aW1lc3RhbXApDQo+PiDCoMKgwqDCoMKgIGlmIChXQVJOX09OKCFmZW5j
ZSkpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4gwqAgLcKgwqDCoCBzcGluX2xv
Y2tfaXJxc2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOw0KPj4gK8KgwqDCoCBkbWFfZmVuY2VfbG9j
a19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+IA0KPiBGb3IgdGhlIGxvY2tpbmcgd3JhcHBlcnMg
SSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gaW50cm9kdWNlIHRoZW0gaW4gYSBwdXJlbHkg
bWVjaGFuaWNhbCBwYXRjaCBwcmVjZWRpbmcgdGhpcyBvbmUuIFRoYXQgaXMsIGp1c3QgYWRkIHRo
ZSB3cmFwcGVycyBhbmQgbm90aGluZyBlbHNlLg0KDQpUaGF0IGRvZXNuJ3QgZnVsbHkgd29yayBm
b3IgYWxsIGNhc2VzLCBidXQgSSB3aWxsIHNlcGFyYXRlIGl0IG91dCBhIGJpdCBtb3JlLg0KDQo+
PiDCoCBzdGF0aWMgaW5saW5lIHVpbnQ2NF90IGFtZGdwdV92bV90bGJfc2VxKHN0cnVjdCBhbWRn
cHVfdm0gKnZtKQ0KPj4gwqAgew0KPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsN
Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBmbGFnczsNCj4+IC3CoMKgwqAgc3BpbmxvY2tf
dCAqbG9jazsNCj4+IMKgIMKgwqDCoMKgwqAgLyoNCj4+IMKgwqDCoMKgwqDCoCAqIFdvcmthcm91
bmQgdG8gc3RvcCByYWNpbmcgYmV0d2VlbiB0aGUgZmVuY2Ugc2lnbmFsaW5nIGFuZCBoYW5kbGlu
Zw0KPj4gLcKgwqDCoMKgICogdGhlIGNiLiBUaGUgbG9jayBpcyBzdGF0aWMgYWZ0ZXIgaW5pdGlh
bGx5IHNldHRpbmcgaXQgdXAsIGp1c3QgbWFrZQ0KPj4gLcKgwqDCoMKgICogc3VyZSB0aGF0IHRo
ZSBkbWFfZmVuY2Ugc3RydWN0dXJlIGlzbid0IGZyZWVkIHVwLg0KPj4gK8KgwqDCoMKgICogdGhl
IGNiLg0KPj4gwqDCoMKgwqDCoMKgICovDQo+PiDCoMKgwqDCoMKgIHJjdV9yZWFkX2xvY2soKTsN
Cj4+IC3CoMKgwqAgbG9jayA9IHZtLT5sYXN0X3RsYl9mbHVzaC0+bG9jazsNCj4+ICvCoMKgwqAg
ZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3JjdSh2bS0+bGFzdF90bGJfZmx1c2gpOw0KPiANCj4gV2h5
IGRvZXMgdGhpcyBiZWxvbmcgaGVyZT8gSWYgdGFraW5nIGEgcmVmZXJlbmNlIGZpeGVzIHNvbWUg
cmFjZSBpdCBuZWVkcyB0byBiZSBhIHNlcGFyYXRlIHBhdGNoLiBJZiBpdCBkb2Vzbid0IHRoZW4g
dGhpcyBwYXRjaCBzaG91bGRuJ3QgYmUgYWRkaW5nIGl0Lg0KDQpUaGUgY29kZSBwcmV2aW91c2x5
IGFzc3VtZWQgdGhhdCB0aGUgbG9jayBpcyBnbG9iYWwgYW5kIGNhbid0IGdvIGF3YXkgd2hpbGUg
dGhlIGZ1bmN0aW9uIGlzIGNhbGxlZC4gV2hlbiB3ZSBzdGFydCB0byB1c2UgYW4gaW5saW5lIGxv
Y2sgdGhhdCBhc3N1bXB0aW9uIGlzIG5vdCB0cnVlIGFueSBtb3JlLg0KDQpCdXQgeW91J3JlIHJp
Z2h0IHRoYXQgY2FuIGJlIGEgc2VwYXJhdGUgcGF0Y2guDQoNCj4+IEBAIC0zNjIsNiArMzY4LDM4
IEBAIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoc3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqKmZlbmNl
cCkNCj4+IMKgwqDCoMKgwqAgfSB3aGlsZSAoMSk7DQo+PiDCoCB9DQo+PiDCoCArLyoqDQo+PiAr
ICogZG1hX2ZlbmNlX3NwaW5sb2NrIC0gcmV0dXJuIHBvaW50ZXIgdG8gdGhlIHNwaW5sb2NrIHBy
b3RlY3RpbmcgdGhlIGZlbmNlDQo+PiArICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gZ2V0IHRoZSBs
b2NrIGZyb20NCj4+ICsgKg0KPj4gKyAqIFJldHVybiBlaXRoZXIgdGhlIHBvaW50ZXIgdG8gdGhl
IGVtYmVkZGVkIG9yIHRoZSBleHRlcm5hbCBzcGluIGxvY2suDQo+PiArICovDQo+PiArc3RhdGlj
IGlubGluZSBzcGlubG9ja190ICpkbWFfZmVuY2Vfc3BpbmxvY2soc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQo+PiArew0KPj4gK8KgwqDCoCByZXR1cm4gdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdf
SU5MSU5FX0xPQ0tfQklULCAmZmVuY2UtPmZsYWdzKSA/DQo+PiArwqDCoMKgwqDCoMKgwqAgJmZl
bmNlLT5pbmxpbmVfbG9jayA6IGZlbmNlLT5leHRlcm5fbG9jazsNCj4gDQo+IElzIHNwcmlua2xp
bmcgb2YgY29uZGl0aW9uYWxzIGJldHRlciB0aGFuIGdyb3dpbmcgdGhlIHN0cnVjdD8gUHJvYmFi
bHkgeWVzLCBzaW5jZSBicmFuY2ggbWlzc2VzIGFyZSBjaGVhcGVyIHRoYW4gY2FjaGUgbWlzc2Vz
LiBVbmxlc3MgdGhlIGNvZGUgZ3Jvd3Mgc2lnbmlmaWNhbnRseSBvbiBzb21lIGhvdCBwYXRoIGFu
ZCB3ZSBnZXQgaW5zdHJ1Y3Rpb24gY2FjaGUgbWlzc2VzIGluc3RlYWQuIFdobyBrbm93cy4gQnV0
IGxldCBzYXkgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHdlIGNvbnNpZGVyZWQgaXQgYW5kIGRlY2lk
ZWQgb24gdGhpcyBzb2x1dGlvbiBkdWUgeHl6Lg0KDQpTdXJlLg0KDQo+IA0KPiBPbiBhIHF1aWNr
IGdyZXAgdGhlcmUgaXMgb25lIGFyY2ggd2hlcmUgdGhpcyBncm93cyB0aGUgc3RydWN0IHBhc3Qg
YSBjYWNoZSBsaW5lIGFueXdheSwgYnV0IGFzIGl0IGlzIFBBLVJJU0MgSSBndWVzcyBubyBvbmUg
Y2FyZXMuIExldHMgbWVudGlvbiB0aGF0IGluIHRoZSBjb21taXQgbWVzc2FnZSBhcyB3ZWxsLg0K
DQpJbnRlcmVzdGluZywgSSB3YXMgYXdhcmUgb2YgdGhlIHByb2JsZW1zIG9uIFNwYXJjIHJlZ2Fy
ZGluZyBzcGlubG9ja3MgYnV0IHRoYXQgUEEtUklTQyBhbHNvIGhhcyBzb21ldGhpbmcgbW9yZSBj
b21wbGljYXRlZCB0aGVuIGFuIGludCBpcyBuZXdzIHRvIG1lLg0KDQpBbnl3YXkgSSBhZ3JlZSBp
dCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4+ICt9DQo+PiArDQo+PiArLyoqDQo+PiArICogZG1h
X2ZlbmNlX2xvY2tfaXJxc2F2ZSAtIGlycXNhdmUgbG9jayB0aGUgZmVuY2UNCj4+ICsgKiBAZmVu
Y2U6IHRoZSBmZW5jZSB0byBsb2NrDQo+PiArICogQGZsYWdzOiB3aGVyZSB0byBzdG9yZSB0aGUg
Q1BVIGZsYWdzLg0KPj4gKyAqDQo+PiArICogTG9jayB0aGUgZmVuY2UsIHByZXZlbnRpbmcgaXQg
ZnJvbSBjaGFuZ2luZyB0byB0aGUgc2lnbmFsZWQgc3RhdGUuDQo+PiArICovDQo+PiArI2RlZmlu
ZSBkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncynCoMKgwqAgXA0KPj4gK8KgwqDC
oCBzcGluX2xvY2tfaXJxc2F2ZShkbWFfZmVuY2Vfc3BpbmxvY2soZmVuY2UpLCBmbGFncykNCj4+
ICsNCj4+ICsvKioNCj4+ICsgKiBkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUgLSB1bmxvY2sg
dGhlIGZlbmNlIGFuZCBpcnFyZXN0b3JlDQo+PiArICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gdW5s
b2NrDQo+PiArICogQGZsYWdzIHRoZSBDUFUgZmxhZ3MgdG8gcmVzdG9yZQ0KPj4gKyAqDQo+PiAr
ICogVW5sb2NrIHRoZSBmZW5jZSwgYWxsb3dpbmcgaXQgdG8gY2hhbmdlIGl0J3Mgc3RhdGUgdG8g
c2lnbmFsZWQgYWdhaW4uDQo+PiArICovDQo+PiArI2RlZmluZSBkbWFfZmVuY2VfdW5sb2NrX2ly
cXJlc3RvcmUoZmVuY2UsIGZsYWdzKcKgwqDCoCBcDQo+PiArwqDCoMKgIHNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoZG1hX2ZlbmNlX3NwaW5sb2NrKGZlbmNlKSwgZmxhZ3MpDQo+PiArDQo+PiDCoCAj
aWZkZWYgQ09ORklHX0xPQ0tERVANCj4+IMKgIGJvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxp
bmcodm9pZCk7DQo+PiDCoCB2b2lkIGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhib29sIGNvb2tp
ZSk7DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
