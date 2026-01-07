Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B3FCFD9B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 07 Jan 2026 13:20:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1492640140
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jan 2026 12:20:12 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010061.outbound.protection.outlook.com [52.101.46.61])
	by lists.linaro.org (Postfix) with ESMTPS id 1965C3F795
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jan 2026 12:20:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FUy29KgS;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HvMUBNnQZqMqz2kB3cg3mWFlcA+Qhw6Hn3LPolURWzJE41+hfcbWjKwN5z9cZbZqXrTbzJS4eMO+5ZRV2s6hImEhNxx+BAF3RHxypX/3PsJ6D7I/HO9ADVcaQu5exUxVNvO4EzfN6Uz1NGK28huN2r9Wyw8k69mQcB0MlhKzDj+rwPVmpm+n/Hfa9/cqggP8UWWhBB83O2J3ZsSHZAaei/VJO7uB9OP56q3WU0IrXd0qsJzrGVAmRUKiSkRRDQxgXdvt01Scs3e3XaAxOpOMvFD6xoLbToYNiC+iPNDz1LD/Xe0Mkkhcomgo+sC+ZLxkyePPcQ0IeXBPRTD4okOsZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yf1EiRnt+7X4QMGX6PSMOXEwVvAzwmGsLMrLlrlK3Ug=;
 b=ixeKH7d1HEv2SNbDAnzuBFPX44kASwWJdEbZ0RWvne6M3S1cNM/YIrGetvVT6iItLiLPzLqL1B02L/YxQrAHPK5DDVBpEX40lGUrD3tUG7jp2TlO0vFlL38LTTbcD3WBUY8ky9da7jBjsZkojG6arI6UfMhezMHtPSRFdXMYXtiemPilhb6FR92j9HWhZiXaE9d4ru47vRUmmkaz5hAO5oR1qDyTszY1eu2Pda4kcCsbkfOraThHtpglj5aJVfdHRCQDNMMJ05GhTQrinw0f1tEMrD90lAGuSfDO0ML//53B5hHw0tCuv9E0C/ZrzH3rOcGcK2NVaah+RaZokSJAng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yf1EiRnt+7X4QMGX6PSMOXEwVvAzwmGsLMrLlrlK3Ug=;
 b=FUy29KgSxMivEwt9AZxAOArvoUlkAQuHMmktj5FNJQaHPiVn/KiOqk8g38hLWdckpsZogyp4qcdH+9UkpuIM40//+ZVwFKTSyN+jFQQjYmaUjmxCy1vttTz76VC+P9viW5Cc1TqYQDaA5dRbU3tdnVJC9aErohVQ7hWtZ9pZI5g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6782.namprd12.prod.outlook.com (2603:10b6:a03:44d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 12:20:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 12:20:04 +0000
Message-ID: <e38d87d3-a114-43f9-be93-03e9b9f40844@amd.com>
Date: Wed, 7 Jan 2026 13:19:59 +0100
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@redhat.com>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
 <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
 <20251219-large-daffy-monkey-74665d@houat>
 <5eda1755-865c-4bb0-a1a0-a4e6dac5388c@amd.com>
 <20251219-cuddly-platinum-cormorant-ae6d0e@houat>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251219-cuddly-platinum-cormorant-ae6d0e@houat>
X-ClientProxiedBy: YT4P288CA0094.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d0::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6782:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cc9ba21-aa47-41f4-82bd-08de4de71680
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?d1hjcmRNcXpKcTJPWnQxMUkvUFQySnhwaFAzUzdnWmJja2hYUko5VE8vTlVw?=
 =?utf-8?B?aWR6ZVQyWUhwb20zYmxBUHhYSytEN3M3Y0NSWE9Na2hKKytFR2pZMFRxZjdT?=
 =?utf-8?B?dVFJanJJMHM1bEVkNVdkWHFsUXA5cXBzTVFZbll6d0Q1emdYWWNVNXdIeWZu?=
 =?utf-8?B?WlVYZVhyek4xOVNCM1lKTHByaWZMdEJ6ZlAvdHVQNmZ3aU1sUGI0NkxuTzNa?=
 =?utf-8?B?b0FZL2VTT1VWbmxRSHBuV3lxellYVVZubXJjTU13enBKUGRVMU9ZOFlBREZW?=
 =?utf-8?B?amtpWXI2TjFCMzJFQ1lJeUFyZUZiQWowMWp4Ynd2dmJmbnN6d1dFVVdlMDJ5?=
 =?utf-8?B?L0MwWkFQRGRsQ29xaVg5c2JOK1lQY3hRbjVIeXpvOElZNGk2WCtHcG96eExK?=
 =?utf-8?B?aHNiVTJNcCt6QzNsalBIQnA3YjB4OTNmMHhadU1pV0JtVUhMaitONzR5QU53?=
 =?utf-8?B?bnRTejBYd3ZVa1RxcE9tQ2VqRzNjTzc3V2Y2TCt3REVDU2tqVE13YmV3ZVZ3?=
 =?utf-8?B?V0MxWGRqQTVETEg0K3RRZWp6NHgrZnlCMFVDN1EyWEpPWE1lQndxU256REdr?=
 =?utf-8?B?cGhpZG1wclY5eGJKUWlUTjI4cW9iQ3c4TTV6VjZSSDhTdFVQK3RSd0laYjRx?=
 =?utf-8?B?SW1LejhZcnRPZmNiNkgrYWRCci9tZmNJOVBaSng5Nk9yY1lYQ3FpMko4dWtw?=
 =?utf-8?B?VWR4R3hObmpMNlRzTTBtUG93bnBZTUZzUzBma1JqS1Z6Smh6S2ZoU2NOenhK?=
 =?utf-8?B?UnJVVEVQRHdKODVJZTNrNjA1N1dRTE12U3hFbHBIOUcxYytIMklpTjFrdEpU?=
 =?utf-8?B?bW03Zll4M3MrMXJUeGsya00rMzI0NGVFUnpRZ3M0NW1ucDZpSTBsMkVSNmRB?=
 =?utf-8?B?WDkvWHh2R3dhdEtvd04yOHFmbjhoZnlBQXFsd0c3dVp4TTl0RjkyZU1uTDA3?=
 =?utf-8?B?dEFkSUtpTE50cDNmbVJoSTdaRXdyOW5haE56d0FPRWhBZXBQYy96c0txZnhy?=
 =?utf-8?B?QXFoVkZUUlVmOFN1Y3VQMXRoZ0ZQQlhMVCtENzVuQnU0YldOWE52UUdQVWo1?=
 =?utf-8?B?NnRncEtaUC8yVjJvQUVXTi8vaXRwM3Fma3daRlkyLzJBNWVaYUt1TkZCZFBX?=
 =?utf-8?B?aHl5NFRHSXRWUFJ5ZjRhL2tLTDkxNTdyUVF2azFOdUxoUFFLeDZaOVR1ZGtE?=
 =?utf-8?B?dG5QQTMyUUY5a20rR3BUMCtCZWlwbXdBdXdNRVhkT2pkTEljSWM2b3pLc3Yw?=
 =?utf-8?B?aG5zbWx0NTFHUXNnL0liYjl3dlRTait5TnR3UjRlbTJEYm9lbm1PTm1pZEw1?=
 =?utf-8?B?WUFnWkdzQmtuVUtmNksrVGZmZ2VJMVNCbDlKdjA5VmJUbFcyNDdlUXIwaHhr?=
 =?utf-8?B?WVhDNElEaWgxcHNyclErRVozWGNHOTkzK0F4S0xEV3FOdUYyQzMrQlk4ZENW?=
 =?utf-8?B?V0hhNUJMMVR0SjdtWlRWTnBubXFaa0lqMmJnWWNGcmdEdm12bUphNkJMMzVK?=
 =?utf-8?B?Y1pka25LRW90NndVVXdYVzA3a29lTDBjSCtIVGJzZGNUeGR1YmRsNmR5V1pQ?=
 =?utf-8?B?UmNmdWw0T1EwSnh0VDY4VVlGVnNYR3YyVDllZC9IdS92dU9BKzBDZFJ6RG5h?=
 =?utf-8?B?QmcyMDJaWm00azBPVGRsTE5WS2s4SnlhWUVmV2pucTZwSGtJcHhpYnduaXRZ?=
 =?utf-8?B?bTBlOUZnMVJEdU5HVVp6QncvM0lSSVN3cExscjRPczYrakQ4YUJha09yY0dB?=
 =?utf-8?B?R0lhaVRVdVRiUjRJZGlmVERSUE54Y3hOY2hwVnZQVTlPdXRDdzFDQi9makFp?=
 =?utf-8?B?K2FBcGw0SjZQVmY5MmFhUHRjTUlmQjJaamdOVmcrL0dKUWludC9DaFI1M0h6?=
 =?utf-8?B?ZDcxNTE1N1hweldveGc3dllQZGRDUVVKNytZNTVwM3pZU00vMmFXeTBRRHgw?=
 =?utf-8?Q?C717fTDZ6x/jgvcwUFU97631FiCIZ9Mj?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UHFhSmoza1BtVkgwZlhGL3RoNHdDQXVwSGxscDN4dFRKWVEzRDhGRGE2MnRP?=
 =?utf-8?B?Vmdkb2xzckd3bEVqOGpGaHpwZGJ4UXJuNWFCL0s4ZG05UmJtV2FEcmd0SXlP?=
 =?utf-8?B?d2J4SHp1bzY0QjFtTkljbHVVVTk0c0d5WU4wRWdtUnFkbDJYTU1jOEk4cHNQ?=
 =?utf-8?B?OW1DVW1xaTQ5QWQwTmh5cUp6M0laWm53SFkxbkNGbFVCY28xTjIyQUIzSnFC?=
 =?utf-8?B?TFlQaEZSSktTTTFibVNlTGZOemFEWVRHMzRjYTdKTHoxNXkyUk44Wm9wL1pW?=
 =?utf-8?B?NUpHY0JDZFBXQXM1bjN6cHp0eUpDK2ZBNitXUnNkL3ArQ3pxWVdOOUMrbElx?=
 =?utf-8?B?Z0Rld2g0YkRVaEM0ZjIxUmp3NDNQSG10UnpBd1JzRHUrOEREcEx3L0UzZHJx?=
 =?utf-8?B?WXJ0R2ZnUDFQWU9zbUVpQ2g2QnoxR2Z2ZUJvMHVGS1kvQ0RPbmQzekF1eGJt?=
 =?utf-8?B?bC84c0F1c0lBS0RlMEFLS3gwWnI2dlFJYzJKZ05YcnNqWWpMbXh5ejd3Zy9l?=
 =?utf-8?B?WmJXYlRWZGhTTUtuYTR0OGVsV0JXQzBnY1dsUy9pc25HM05rQ0lac3paSCtK?=
 =?utf-8?B?ZVVVcEsxbkFUVFRMMU1UeUdzUjBDTEVCOUdpNGhIU3lqM3hNdGNSSDBycHNo?=
 =?utf-8?B?b05HK0V3WWFYZ1NpbnJRTTlpcGVvRkVua0orYkVNemFUWTlTTk4vMHU1aS9k?=
 =?utf-8?B?dTdBb1ZCVWVVTXhMNDhIVnpuMXJ1L1BaZXVBK0x3SGpTNTcra2xFM2s3enJu?=
 =?utf-8?B?NG93OFZCcHZMQ21Oa3V2OCswOWFnK2Z2cHk2YTFOUzEyWmcyQWJoT1Mzazhk?=
 =?utf-8?B?ZnJ1Q012RXFrdkVQSjdvOEpyYWk0MEJvQ2RKcms3MnU1RnEyc1FDOURNU1la?=
 =?utf-8?B?Vm82UzRPSkgzZmIzVThBTTg5TlM1cW9rR3lqT1pNZ2xobEVuWWlkOWoxakt6?=
 =?utf-8?B?R0cxUDVaR3l2RUxQV0FPNi9uNEJXVkw3N2RVN3hiZzA1S3BONjRBUXRHbys5?=
 =?utf-8?B?VUk0cHU2RWdvV3M1aVp5S1o5d2xMMXI0Vmd5c1Y1YlcrY2YxNmMyK3NicDVV?=
 =?utf-8?B?RUpWSis5eGZDV2dCejNtUVJ2aVdrek5NUzMxMkc4RkF0RGF5MEJoazN6Qndu?=
 =?utf-8?B?UFVzeEZ4YkNjYWhXd1RaNGxiSXJPMWh0OXVGaXdsblBtRE5lSVpyV3NTcUVT?=
 =?utf-8?B?TzRCQzdLbkwrRmZTU3UxQXh0TmFtYmtDamZ2NTQ4bjNuQjBycy9keDZhN2Ix?=
 =?utf-8?B?ZUlpNVhtSW03TzIwc2RmaHhraUd0eThlakQ1cXMrQzdYN29MMUFGZ1BacXVV?=
 =?utf-8?B?SmQ1R3hmZ2V5YnAzUG9lNlFyZ2xMSC94MVBCbmV1M3ViTEF0N2V6MXNtOEN1?=
 =?utf-8?B?TThMQmFCU3V4NFNnSTJLZFd3MnJVeTBrUVJIcU1aeVRRclVpZDJFWmJRMXFH?=
 =?utf-8?B?blNYdjM4ZFlaeVh1ODIvWTdTUXVqT0VkUFQ2bTJYNVAyZFNsdWYzRjQ4ZDFN?=
 =?utf-8?B?TFVVYTdScTZidnVhZTI5WktEL0xLc01RYzFGQkFSbnU1anBqcXBIQnN2SkNZ?=
 =?utf-8?B?MEJkYjlSK3kwSTNOV2FPNE0yWWdEaHJlRlZkTmRnekhBL2xHSWY4Q012bjdy?=
 =?utf-8?B?Nk9MTFBBUjB5UVBsbzJCU2huQTdxZFdZRktwVlA1aUtVL21QQnYwajFyMnUz?=
 =?utf-8?B?YTBKSDIvcnBLdEUrUDIzajlYVS9iU1hmU2tESUtHMGYrVFY2ZHBucW51ZW5l?=
 =?utf-8?B?NDJpbFYvcjVVMlZwRHVVSTJWZitaM3JSU3ZkeGxmV1F6V1pKWFFka3UweEZp?=
 =?utf-8?B?S09YK0hTemNDeDR0c2ppaXl3MVlRZmZLOWxRWk9uSEY4ZkNPUmxlRjlkU1pl?=
 =?utf-8?B?b1p2Q0N4NE1CTE9xZkIzVXlrTk9SQzMvRDV0aHZ3SFdrNGpGeVNqVU5uY3dL?=
 =?utf-8?B?bUQwalVNYTVaMTlybEovWm1qRytHTzN6SGxSZDluOGRLNklPMTgyZVZtY1dQ?=
 =?utf-8?B?TW9DZ2tDNlVXS1ZPemg2V2JDeG9JK0FmY2RUQVc3U1U2NjMzWGFXZE45ZVg4?=
 =?utf-8?B?VFA4TmdKUmNsdC81QUtJMk8yc3JXMDg2cE9nMURjWVkrKzZWTWFWNnV1aE9l?=
 =?utf-8?B?WTFabUtvTElLWGErZnRpSkhobWNIRDN4TVJGNnVYc1RNLzFBZUxIRHNXSytZ?=
 =?utf-8?B?aVdadHNTZjVMdVZ5dUZnQ1pZZnEzaXpaRysxOWRTR3B1a0lsUVpYTjlBTWFT?=
 =?utf-8?B?WWh4YXczMFNDQndtS2dDLzlNNXg3NWloVC9lRkVUblVsZkFMNmgrMFM1alRS?=
 =?utf-8?B?eHF6T2lpemxNdk95UHZJb2M3eUZxUVRhdnZXUGc5YzdHM3p6KzBOUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc9ba21-aa47-41f4-82bd-08de4de71680
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 12:20:04.5501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TQDVYqOVVCCvIMY8PrtC0Q3ja40zg4GvjTmDi/5hCcLN2mAzK0lmnb1avM85uzCl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6782
X-Rspamd-Queue-Id: 1965C3F795
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.61:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[CO1PR03CU002.outbound.protection.outlook.com:helo,amd.com:dkim,amd.com:mid,amd.com:from_smtp,amd.com:from_mime];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,52.101.46.61:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2RKO4KZPGTDU2OVOMHDX5EVTPH6XBXOA
X-Message-ID-Hash: 2RKO4KZPGTDU2OVOMHDX5EVTPH6XBXOA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2RKO4KZPGTDU2OVOMHDX5EVTPH6XBXOA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTkvMjUgMTY6NTgsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IE9uIEZyaSwgRGVjIDE5
LCAyMDI1IGF0IDAyOjUwOjUwUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBP
biAxMi8xOS8yNSAxMToyNSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4+PiBPbiBNb24sIERlYyAx
NSwgMjAyNSBhdCAwMzo1MzoyMlBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+
PiBPbiAxMi8xNS8yNSAxNDo1OSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4+IC4uLg0KPj4+Pj4+
PiBUaGUgc2hhcmVkIG93bmVyc2hpcCBpcyBpbmRlZWQgYnJva2VuLCBidXQgaXQncyBub3QgbW9y
ZSBvciBsZXNzIGJyb2tlbg0KPj4+Pj4+PiB0aGFuLCBzYXksIG1lbWZkICsgdWRtYWJ1ZiwgYW5k
IEknbSBzdXJlIHBsZW50eSBvZiBvdGhlcnMuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IFNvIHdlIHJlYWxs
eSBpbXByb3ZlIHRoZSBjb21tb24gY2FzZSwgYnV0IG9ubHkgbWFrZSB0aGUgImFkdmFuY2VkIg0K
Pj4+Pj4+PiBzbGlnaHRseSBtb3JlIGJyb2tlbiB0aGFuIGl0IGFscmVhZHkgaXMuDQo+Pj4+Pj4+
DQo+Pj4+Pj4+IFdvdWxkIHlvdSBkaXNhZ3JlZT8NCj4+Pj4+Pg0KPj4+Pj4+IEkgc3Ryb25nbHkg
ZGlzYWdyZWUuIEFzIGZhciBhcyBJIGNhbiBzZWUgdGhlcmUgaXMgYSBodWdlIGNoYW5jZSB3ZQ0K
Pj4+Pj4+IGJyZWFrIGV4aXN0aW5nIHVzZSBjYXNlcyB3aXRoIHRoYXQuDQo+Pj4+Pg0KPj4+Pj4g
V2hpY2ggb25lcz8gQW5kIHdoYXQgYWJvdXQgdGhlIG9uZXMgdGhhdCBhcmUgYWxyZWFkeSBicm9r
ZW4/DQo+Pj4+DQo+Pj4+IFdlbGwgZXZlcnlib2R5IHRoYXQgZXhwZWN0cyB0aGF0IGRyaXZlciBy
ZXNvdXJjZXMgYXJlICpub3QqIGFjY291bnRlZCB0byBtZW1jZy4NCj4+Pg0KPj4+IFdoaWNoIGlz
IGEgdGhpbmcgb25seSBiZWNhdXNlIHRoZXNlIGJ1ZmZlcnMgaGF2ZSBuZXZlciBiZWVuIGFjY291
bnRlZA0KPj4+IGZvciBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+Pg0KPj4gWWVhaCwgY29tcGxldGVs
eSBhZ3JlZS4gQnkgbm90IGFjY291bnRpbmcgaXQgZm9yIHN1Y2ggYSBsb25nIHRpbWUgd2UNCj4+
IGVuZGVkIHVwIHdpdGggcGVvcGxlIGRlcGVuZGluZyBvbiB0aGlzIGJlaGF2aW9yLg0KPj4NCj4+
IE5vdCBuaWNlLCBidXQgdGhhdCdzIHdoYXQgaXQgaXMuDQo+Pg0KPj4+IFNvIEkgZ3Vlc3MgdGhl
IGNvbmNsdXNpb24gaXMgdGhhdCB3ZSBzaG91bGRuJ3QNCj4+PiBldmVuIHRyeSB0byBkbyBtZW1v
cnkgYWNjb3VudGluZywgYmVjYXVzZSBzb21lb25lIHNvbWV3aGVyZSBtaWdodCBub3QNCj4+PiBl
eHBlY3QgdGhhdCBvbmUgb2YgaXRzIGFwcGxpY2F0aW9uIHdvdWxkIHRha2UgdG9vIG11Y2ggUkFN
IGluIHRoZQ0KPj4+IHN5c3RlbT8NCj4+DQo+PiBXZWxsIHdlIGRvIG5lZWQgc29tZSBraW5kIG9m
IHNvbHV0aW9uIHRvIHRoZSBwcm9ibGVtLiBFaXRoZXIgaGF2aW5nDQo+PiBzb21lIHNldHRpbmcg
d2hlcmUgeW91IHNheSAiVGhpcyBtZW1jZyBsaW1pdCBpcyBpbmNsdXNpdmUvZXhjbHVzaXZlDQo+
PiBkZXZpY2UgZHJpdmVyIGFsbG9jYXRlZCBtZW1vcnkiIG9yIGhhdmUgYSBjb21wbGV0ZWx5IHNl
cGFyYXRlIGxpbWl0DQo+PiBmb3IgZGV2aWNlIGRyaXZlciBhbGxvY2F0ZWQgbWVtb3J5Lg0KPiAN
Cj4gQSBkZXZpY2UgZHJpdmVyIG1lbW9yeSBzcGVjaWZpYyBsaW1pdCBzb3VuZHMgbGlrZSBhIGdv
b2QgaWRlYSBiZWNhdXNlIGl0DQo+IHdvdWxkIG1ha2UgaXQgZWFzaWVyIHRvIGJyaWRnZSB0aGUg
Z2FwIHdpdGggZG1lbS4NCg0KQ29tcGxldGVseSBhZ3JlZSwgYnV0IHRoYXQgYXBwcm9hY2ggd2Fz
IHJlamVjdGVkIGJ5IHRoZSBjZ3JvdXBzIHBlb3BsZS4NCg0KSSBtZWFuIHdlIGNhbiBhbHJlYWR5
IHVzZSB1ZG1hYnVmIHRvIGFsbG9jYXRlIG1lbWNnIGFjY291bnRlZCBzeXN0ZW0gbWVtb3J5IHdo
aWNoIHRoZW4gY2FuIGJlIGltcG9ydGVkIGludG8gZGV2aWNlIGRyaXZlcnMuDQoNClNvIEkgZG9u
J3Qgc2VlIG11Y2ggcmVhc29uIHdoeSB3ZSBzaG91bGQgYWNjb3VudCBkbWEtYnVmIGhlYXBzIGFu
ZCBkcml2ZXIgaW50ZXJmYWNlcyB0byBtZW1jZyBhcyB3ZWxsLCB3ZSBqdXN0IG5lZWQgc29tZSB3
YXkgdG8gbGltaXQgdGhlbS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gSGFwcHkg
aG9saWRheXMsDQo+IE1heGltZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
