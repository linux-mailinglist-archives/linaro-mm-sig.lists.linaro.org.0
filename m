Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA09D11B59
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 11:04:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99768401B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 10:04:52 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012046.outbound.protection.outlook.com [40.93.195.46])
	by lists.linaro.org (Postfix) with ESMTPS id 33BD13F6E7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 10:04:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=LwFRaC7X;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.46 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UQHBhT3aBWLNQ4h3QomJfE0w8v6ymrfQFbs6zQ4FLet8xBQZY3j7rMrMOM+14cEa6tQ7c9rvoJ+AS4B85RZsSHKykIC4DGJYo8BpQnRNbu8lrO6pBD0iWsyR/JRKhzApI1Zl0ADJsVXzQ1a3Mt6R17joaQgSwv+9tioKO0996C0d+JmAq7hPNPYgip/fp9qIDzPM2o2wsi2iOcgqJCNIkxOhoz4EDcDXL3LFC/7HtPbJXLPeWuKI6M4D99Svbbdmpi+zG7ZMhqmj2eZQEEHYg/FxO88T+Jr4W6RWacZRLJBJ+9G/dAx67hhUBydY6vdMBa+Cyx4ygODeDLiideWMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jQiY3qH2y2VRIQmxpoKfaF8HSv/MOOTbOatZ+hKs9xo=;
 b=lOo8+mqEmsDtuBj9pVxOSvFWNxehoGsKlmMmkj5bnGXCOULD6axnI1a+nzBQLchWBwxPzLv9yfz5A0sj3lIl7j3vnElUyL+e/a0cQ7fjGhezx+mmLnh5yA8PUsZ9hHdJeKQTeWjOlzBLESK764K/f+7cF+v6xgWaWCytK7mxpQWh1sIzvXqgkSTBrtFt7AhMqaR/ecGHbZoUOo52uoLcv8mEtIRTYrdv7QgUIYHsvkE4CfKsSSry1kEpDzdszM3ZaTEPWjWlQ4meeObYJzom6G0Gs39iVFTFJnBcT5J6Fxk3jXtkMSKNAFjmDbHUAQftTD2cFNlEVZZOsjM5bdNfZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQiY3qH2y2VRIQmxpoKfaF8HSv/MOOTbOatZ+hKs9xo=;
 b=LwFRaC7XgHB0gOsM5bCuoN5CE2gI2A4i7Agj6EnIYkbrvggKY3X03NdZ/wJ+RO1cQUkbAusw/h/h54jx/hWJI7AmeoGss3cP13eNGY8f5AtztGdoISXnOgHKccYKI77T/rP+I2kvsVNeg9/Ao1c52kT+/i7m4uFxmroE9OCvnNg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4043.namprd12.prod.outlook.com (2603:10b6:5:216::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 10:04:44 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 10:04:44 +0000
Message-ID: <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
Date: Mon, 12 Jan 2026 11:04:38 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
X-ClientProxiedBy: BN9PR03CA0787.namprd03.prod.outlook.com
 (2603:10b6:408:13f::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4043:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b57b368-3d23-467d-580d-08de51c20299
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UnAzTTNieXkxN0crOE1OVTV4NjU0YXZhdkxjK1V6UzdPUmM3a05OYzVjN2U5?=
 =?utf-8?B?bHk2blNYRlVmMkRMbjIxYlJtNXlaT2pvT1VJTlF0WUlLeEVTczEveEJWVDgv?=
 =?utf-8?B?NzBCT3BmUGM1YVlpeWxmdUtjTFJudzlzNkVFUFh1RGFRKzhYaEd0eDVIQjdq?=
 =?utf-8?B?dkFvYW9OUEd0OEpHMGxlZ1ZhUkpaQmQ4d1hKenlHMzUwYmZlZ0FKUUxLblJZ?=
 =?utf-8?B?anNWR0xFNmRzUHlCR2tvS2ZCcWYwcjhTVXpyWW1RNnl3Z3BaNzlOR2JoS1lw?=
 =?utf-8?B?dTcybmpySEorYnFSK0RDb0gvRU1meHBHekNFSXpzR0NQNkhrY2NsQ2FhZ3I2?=
 =?utf-8?B?bGZPVU15QzBocXhOWkFSYk5JeVV1Mm5haXljWnJUQ2NuekNwNisweDlPRUxk?=
 =?utf-8?B?RGFXQTBvQVdNZmQreTZ5T2lhcjUwelVpZ1ZIc2k4VTg4NklacTNHcmhlZkwr?=
 =?utf-8?B?MVhadlZGUXJ1Z1pDZzZYRzQrVDczaUhvVFpNZENaWW9KaGpXcTloYzM3R1VX?=
 =?utf-8?B?ZmtsY0lsRWIwMldXV3QyNEZlZWxYM3VPcFNLdkdJK1hQZkM5aVlCQjgzeVhp?=
 =?utf-8?B?QXljU05OUXBjU3kyK0pvSkIwOEJBQ0ZaTk5QcEdMWDg1YjdOcUtUYndwVTcr?=
 =?utf-8?B?U21ya2J4cUdKNEpZc0V1VG5jZHAwa2xoY0kvNDVLWms5QVo2Y3VqTWpCWURn?=
 =?utf-8?B?cEFFQ3dnSVNyMXF0ZGVPV1FzZklTVGhxM0NhOXNET0xud1RCSU0yRXNuUjVQ?=
 =?utf-8?B?SmlnZDlhVktzZWEwOXRHVU5YNDI2bmZnR3hiZjQxaVVJajJWc2twZDFMN1BZ?=
 =?utf-8?B?NFM0RmVHbGZDUU4rWkdzU0tqZEQxSDRKdmxJRlhPckVxM1ltZGVFbC9OUWJ6?=
 =?utf-8?B?WkhKQ0hac25WWGpSQmJNT2svUjN1bHVCaHppampwOFhHU2VncUVnQ2FhZU5k?=
 =?utf-8?B?MDA5RFdYRzkzb05GQzlvcEo2K0FDQld5aVpDTlJDb1BpMHBMdndoRWszd2p1?=
 =?utf-8?B?QVJEQXEzZW5leWJDTUNJYjdTbEZDNit1MDJhMUI4RmVCQkUyLzhqSnl0Nmxt?=
 =?utf-8?B?TXNZZHJyNXdweW96UjFMMlRHNkpqOUZIK3dHcm9waWZSVnREaGJqYWN6VTNZ?=
 =?utf-8?B?VXdIZDMzU2JlekZyUXBmUXRkazc1REZ0bE9ZYisrdHBlTHIxTk93K1lXcFox?=
 =?utf-8?B?NHB3eFRSeXZ4VVIrVG5Jc0k1ekorZnk5OWhVeHUxUHM2a0V0TCtCMHlqT3d2?=
 =?utf-8?B?endBL2NhV0RxSnhMSndaRzdoMmMwcmpZb0t3Tm5VQ2VlOFJXY2pielBNcGFF?=
 =?utf-8?B?WDYzb0EyREQvM2pBS0ZEbnFZdUd5Vi9pUTFNblpsTkhBZWpZK09xY25hWjVI?=
 =?utf-8?B?TjBhNFNvbUVqYUF4QjI4b1ZGQzNINW14cEowcEp4cm0zeHNTNGg3SVQzeVd2?=
 =?utf-8?B?M2pVOXQ2cmJxSmNVYjNkZlozT0doK1FLTGhBaERhbTcrek0wc25jZ3hPN2hz?=
 =?utf-8?B?MDlkVU9yR1kvSnV2V1FMSEM1ZmtwVW9KR1Y3Ym9OS1JESDl5OEJGRE9COXAr?=
 =?utf-8?B?dVplcm9aNENKRHhZckJaMHovT3RQaW5ma2RTNE5rbEhGN2FzVEZwWGp5UkFy?=
 =?utf-8?B?OVlZRGp3WDI4TGIwNkFMU1V1dkVBL3o3NmEvZC84dDRWTzhpM3Z0eEtvWlU5?=
 =?utf-8?B?Rmx1K0k5ZG5LQUNqZ05CdXo4eFdtZEdSM2kzUERDVldaR0lnWWJ3T3IwOGRJ?=
 =?utf-8?B?dXppUlFHeUpoYndBZDBuanFnTWQ2cUJTZnZKMXV5Q1RGNUhwblVHYmk2REZq?=
 =?utf-8?B?LzNpeVlYK05sNCtnZ2dNbWRJQitDSjNndXVMUXhVNzZaWjFKL3BJKzlNY25a?=
 =?utf-8?B?a3RJVEdjcnBQWWo1dk13YjVPWHVsMkxBTDByZnFiSEM2cGFQZWNrWU1weFc1?=
 =?utf-8?B?UDNPWWU4NVJlMjBZcVhkWi9XUFRxSjdleGszVnV2a2ZFbFZVTVIwWnk0bnFC?=
 =?utf-8?B?R1VRWGwvek9BPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QXVqcXpnV3NYVWovZnZWdUVQdldvWXQ1L1pydmlHa2JrRkdvYTZRMEZvWnRV?=
 =?utf-8?B?QmlLSFRoTURpNEpmSDYveXNlcHRuMlJlcndzcVhpUWVJWjdweEdFeFhYKzM5?=
 =?utf-8?B?OXBsRExwUUJUNlZvZFVkaWpPUHVOa0crTjlDd2FaU2FXMmx1eG5UZGxrYVpX?=
 =?utf-8?B?bU51SVMxdW1STHdrMzZFdGRwQXZQWUhnMjZkWDlYMDgxMnE3ZCtScGJWRTMy?=
 =?utf-8?B?Y0JEWDJUUHVweUx4ZWl5d0k2S2xXclk2SXlmTnh1RSs4YzlaTHBXSllvYy9T?=
 =?utf-8?B?ekVXSEhlUmFsRGZRUTBZSGgrcDNUN3VxdUIrczhQaThZZVpJV3Zpc1NhVFBs?=
 =?utf-8?B?VW4reVcwL0JNWkdGam9RRXJrT1UxZUNlWXhMZUVjY2U1V0hTeldGVUIvYldZ?=
 =?utf-8?B?SVlGTXlzbFF0SXJGQ0ZyRzJwcWdQNWh5L3dXRTNwS2pPRHFGVXlDLy84RkZQ?=
 =?utf-8?B?NHBvMmJ3dlpRNzBHYU90RTM3ZkdlN1JGa093MERYa0V3QnllaEU2Mm5qdm1C?=
 =?utf-8?B?R1lTZjVqeUdJbWlUTEZBOStnVE1qOXpsTFdrd0JKS3pKZ285eTZoSS9ZMWdD?=
 =?utf-8?B?MlpzdGd1RWRpNENnS2dFb1lEenhOeCtXaWsxNXRDT1lPY3k2dU9ubUh6bjEx?=
 =?utf-8?B?MlFxYlJzQ2x0aFNNMXMrREc1eXp4YkphRjladHJBMVNUMnJBd3dBOW0zTklX?=
 =?utf-8?B?THZIVjlGNGFzK0JZL2JaMDhzVFcrTkdmaUZrQnhNOXFER2gvMVUvOHZkcldz?=
 =?utf-8?B?QzZiaVdlSHVJQ3dKODZ2UGM2a3JzSkw3WnJDWXptL3cxTXJFZ3UrajRGdEJL?=
 =?utf-8?B?WnMrRFVUTUIxMlA1VHFNK0VBbE5RRWxFeS9NTUJxWDYzbDduL3NJSFJrVk5W?=
 =?utf-8?B?c0lPamd3dWdYUGlFdXBUZi81c25SeDFnTGx3YXlqM1FnRVlMbzdNcXAvK3NJ?=
 =?utf-8?B?UjM4UkI1R2Yrc0l0YUltbUtwTk5nNHlRalJrcmEvYkE1YWdPMXFyaS95SXRP?=
 =?utf-8?B?Yk56RkUrcVNDYmc1cndVT2RzaUFSUnJqa1N6MWdDMVU3MmF0bzk5TVRBcFI4?=
 =?utf-8?B?QWNFd3pBWFZ5bFY4WW9NZEIwL3BlS05kWnBpMlNzN2FkYnFWTTZvQzhrejJ5?=
 =?utf-8?B?Z3A2aitLNHJWcHM5NllJS0hlaWtyUVJJNFJFNzJ3d1BUZ2xjTVhMYVJJMjhX?=
 =?utf-8?B?SENPOTgzMkRheXljWUZDd3lVREJDakRkOGVOWU1xSnFybkxkV1hnMytjL0Zx?=
 =?utf-8?B?WVNuSVJOUXBRR2h5UDlZTk93cXNKUkUwL2dRSlgrZVF3TVllaytobFc2UDJL?=
 =?utf-8?B?dDZQYWtrd3ZtdkNrWjd1QURQYXRFRm1sOS8reWxHRTlxckFPc1A0ZFVnQlk4?=
 =?utf-8?B?MUE1bW56RTQxaUR5VUtwZWovUFBJSTVJckU5eGlrVzhiVmVEbzA1ZEtBRHNw?=
 =?utf-8?B?TGw4VkIvK2RtYUdOdDY2V1NvVzc3ZE1ucFp3bjQxUWx5bjRXY0JLK092TlZS?=
 =?utf-8?B?SUZwaHpYaEZ6cEJPL1RRUXpVdmkvNnRaOTdVd2RTRDZxOWJzL2lLenA0R2h3?=
 =?utf-8?B?bXg1alRQWm1xQ0ZiM0lIZ1EzVjhKVkxCZ2xlWFJIMStIeXA3b3hBRFgwVHAz?=
 =?utf-8?B?czhHNDd0S2ROM3BTZ2ljSFRDclpPeGc5NVBYM1hBanZEVUMvREJaVDZFUGJu?=
 =?utf-8?B?YkV2RktLTTRWVG9SbUdESU1MNVMwMDIyNXhZVE9wS1NncHVYZ29FbWVSbDNa?=
 =?utf-8?B?WThhVUpYMEZHRUpLWDZ5RFE5dWE5dmtDbHhHY0h5WDlSNXBSazNDUkdjL2FX?=
 =?utf-8?B?RmFTbXlDWVFBWVQ5RHV3Wko4QmdPdWJnQ2hOR2tUWHV1UFhTQ0Iva2dueFdJ?=
 =?utf-8?B?cWdjcDlaZVExMGNQcS9BS1VpMjFwbGRBYjlOb2VIY2V1aUtaV2MyNWI3WTN5?=
 =?utf-8?B?UGd2SWxpOUpyb3pOUmRoL1RaMGtuT2syM0lldjNFRGhlQWxMQ2pkZlVMdEQ4?=
 =?utf-8?B?eDFuYXNhSGhrMGQ0bXg1TzVLVHFpWDY0aWRJWTJCT2hGZzk3Y04za2xGOGtJ?=
 =?utf-8?B?YlFwRmNLcll0YXp6cEpoUkc3bDNSamRLaU9jR0doZmZYWFIwWGRhaGlrbkxR?=
 =?utf-8?B?dnV0T1VIcktSUDhvRGh2UGF3bDNla2I4cU9EbnFkaU52SFBjUnlCL0J2OUhm?=
 =?utf-8?B?aXc3SVZ3WEkxMlE5YWV1UjRHUGNkaCsvMW5ScHZ0K1duODF0MHJ2QlAvR3h2?=
 =?utf-8?B?MjJrVDhDcTFMVlplRGRsbGpoaFJxT01YMy9TT3Y2RlRLSFpWaElad2E4Kzhr?=
 =?utf-8?Q?R2Ud1/0uqLxd+gz1pu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b57b368-3d23-467d-580d-08de51c20299
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:04:44.3550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uMxbMXMcFsg6aXFsWv3EpWINSh6r+zR8lJJovGI5N9p5ipl0kMAlJSSPJYAw42Nu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4043
X-Rspamd-Queue-Id: 33BD13F6E7
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.195.46:from];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.93.195.46:from];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IT5SVXUJCPV2NZPWU4FR3UMZDS3ACHUU
X-Message-ID-Hash: IT5SVXUJCPV2NZPWU4FR3UMZDS3ACHUU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IT5SVXUJCPV2NZPWU4FR3UMZDS3ACHUU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xMS8yNiAxMTozNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBUaGlzIHNlcmllcyBp
bXBsZW1lbnRzIGEgZG1hLWJ1ZiDigJxyZXZva2XigJ0gbWVjaGFuaXNtOiB0byBhbGxvdyBhIGRt
YS1idWYNCj4gZXhwb3J0ZXIgdG8gZXhwbGljaXRseSBpbnZhbGlkYXRlICjigJxraWxs4oCdKSBh
IHNoYXJlZCBidWZmZXIgYWZ0ZXIgaXQgaGFzDQo+IGJlZW4gZGlzdHJpYnV0ZWQgdG8gaW1wb3J0
ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlzDQo+IHByZXZlbnRl
ZCBhbmQgaW1wb3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUgZmFpbHVyZS4NCg0KV2UgYWxyZWFkeSBo
YXZlIHRoYXQuIFRoaXMgaXMgd2hhdCB0aGUgbW92ZV9ub3RpZnkgaXMgYWxsIGFib3V0Lg0KDQo+
IFRvZGF5LCBkbWEtYnVmIGVmZmVjdGl2ZWx5IHByb3ZpZGVzIOKAnGlmIHlvdSBoYXZlIHRoZSBm
ZCwgeW91IGNhbiBrZWVwIHVzaW5nDQo+IHRoZSBtZW1vcnkgaW5kZWZpbml0ZWx5LuKAnSBUaGF0
IGFzc3VtcHRpb24gYnJlYWtzIGRvd24gd2hlbiBhbiBleHBvcnRlciBtdXN0DQo+IHJlY2xhaW0s
IHJlc2V0LCBldmljdCwgb3Igb3RoZXJ3aXNlIHJldGlyZSBiYWNraW5nIG1lbW9yeSBhZnRlciBp
dCBoYXMgYmVlbg0KPiBzaGFyZWQuIENvbmNyZXRlIGNhc2VzIGluY2x1ZGUgR1BVIHJlc2V0IGFu
ZCByZWNvdmVyeSB3aGVyZSBvbGQgYWxsb2NhdGlvbnMNCj4gYmVjb21lIHVuc2FmZSB0byBhY2Nl
c3MsIG1lbW9yeSBldmljdGlvbi9vdmVyY29tbWl0IHdoZXJlIGJhY2tpbmcgc3RvcmFnZQ0KPiBt
dXN0IGJlIHdpdGhkcmF3biwgYW5kIHNlY3VyaXR5IG9yIGlzb2xhdGlvbiBzaXR1YXRpb25zIHdo
ZXJlIGNvbnRpbnVlZCBhY2Nlc3MNCj4gbXVzdCBiZSBwcmV2ZW50ZWQuIFdoaWxlIGRyaXZlcnMg
Y2FuIHNvbWV0aW1lcyBhcHByb3hpbWF0ZSB0aGlzIHdpdGgNCj4gZXhwb3J0ZXItc3BlY2lmaWMg
ZmVuY2luZyBhbmQgcG9saWN5LCB0aGVyZSBpcyBubyBjb3JlIGRtYS1idWYgc3RhdGUgdHJhbnNp
dGlvbg0KPiB0aGF0IGNvbW11bmljYXRlcyDigJx0aGlzIGJ1ZmZlciBpcyBubyBsb25nZXIgdmFs
aWQ7IGZhaWwgYWNjZXNz4oCdIGFjcm9zcyBhbGwNCj4gYWNjZXNzIHBhdGhzLg0KDQpJdCdzIG5v
dCBjb3JyZWN0IHRoYXQgdGhlcmUgaXMgbm8gRE1BLWJ1ZiBoYW5kbGluZyBmb3IgdGhpcyB1c2Ug
Y2FzZS4NCg0KPiBUaGUgY2hhbmdlIGluIHRoaXMgc2VyaWVzIGlzIHRvIGludHJvZHVjZSBhIGNv
cmUg4oCccmV2b2tlZOKAnSBzdGF0ZSBvbiB0aGUgZG1hLWJ1Zg0KPiBvYmplY3QgYW5kIGEgY29y
cmVzcG9uZGluZyBleHBvcnRlci10cmlnZ2VyZWQgcmV2b2tlIG9wZXJhdGlvbi4gT25jZSBhIGRt
YS1idWYNCj4gaXMgcmV2b2tlZCwgbmV3IGFjY2VzcyBwYXRocyBhcmUgYmxvY2tlZCBzbyB0aGF0
IGF0dGVtcHRzIHRvIERNQS1tYXAsIHZtYXAsIG9yDQo+IG1tYXAgdGhlIGJ1ZmZlciBmYWlsIGlu
IGEgY29uc2lzdGVudCB3YXkuDQo+IA0KPiBJbiBhZGRpdGlvbiwgdGhlIHNlcmllcyBhaW1zIHRv
IGludmFsaWRhdGUgZXhpc3RpbmcgYWNjZXNzIGFzIG11Y2ggYXMgdGhlIGtlcm5lbA0KPiBhbGxv
d3M6IGRldmljZSBtYXBwaW5ncyBhcmUgdG9ybiBkb3duIHdoZXJlIHBvc3NpYmxlIHNvIGRldmlj
ZXMgYW5kIElPTU1VcyBjYW5ub3QNCj4gY29udGludWUgRE1BLg0KPiANCj4gVGhlIHNlbWFudGlj
cyBhcmUgaW50ZW50aW9uYWxseSBzaW1wbGU6IHJldm9rZSBpcyBhIG9uZS13YXksIHBlcm1hbmVu
dCB0cmFuc2l0aW9uDQo+IGZvciB0aGUgbGlmZXRpbWUgb2YgdGhhdCBkbWEtYnVmIGluc3RhbmNl
Lg0KPiANCj4gRnJvbSBhIGNvbXBhdGliaWxpdHkgcGVyc3BlY3RpdmUsIHVzZXJzIHRoYXQgbmV2
ZXIgaW52b2tlIHJldm9rZSBhcmUgdW5hZmZlY3RlZCwNCj4gYW5kIGV4cG9ydGVycyB0aGF0IGFk
b3B0IGl0IGdhaW4gYSBjb3JlLXN1cHBvcnRlZCBlbmZvcmNlbWVudCBtZWNoYW5pc20gcmF0aGVy
DQo+IHRoYW4gcmVseWluZyBvbiBhZCBob2MgZHJpdmVyIGJlaGF2aW9yLiBUaGUgaW50ZW50IGlz
IHRvIGtlZXAgdGhlIGludGVyZmFjZQ0KPiBtaW5pbWFsIGFuZCBhdm9pZCBpbXBvc2luZyBwb2xp
Y3k7IHRoZSBzZXJpZXMgcHJvdmlkZXMgdGhlIG1lY2hhbmlzbSB0byB0ZXJtaW5hdGUNCj4gYWNj
ZXNzLCB3aXRoIHBvbGljeSByZW1haW5pbmcgaW4gdGhlIGV4cG9ydGVyIGFuZCBoaWdoZXItbGV2
ZWwgY29tcG9uZW50cy4NCg0KQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0IHBhdGNoIHNldCBpcyBj
b21wbGV0ZWx5IHN1cGVyZmx1b3VzLg0KDQpUaGUgbW92ZV9ub3RpZnkgbWVjaGFuaXNtIGhhcyBi
ZWVuIGltcGxlbWVudGVkIGV4YWN0bHkgdG8gY292ZXIgdGhpcyB1c2UgY2FzZSBhbmQgaXMgaW4g
dXNlIGZvciBhIGNvdXBsZSBvZiB5ZWFycyBub3cuDQoNCldoYXQgZXhhY3RseSBpcyBtaXNzaW5n
Pw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBCVFcsIHNlZSB0aGlzIG1lZ2F0aHJl
YWQgWzFdIGZvciBhZGRpdGlvbmFsIGNvbnRleHQuICANCj4gSXJvbmljYWxseSwgaXQgd2FzIHBv
c3RlZCBleGFjdGx5IG9uZSB5ZWFyIGFnby4NCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNTAxMDcxNDI3MTkuMTc5NjM2LTIteWlsdW4ueHVAbGludXguaW50ZWwuY29t
Lw0KPiANCj4gVGhhbmtzDQo+IA0KPiBDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCj4g
Q2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZw0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IENjOiBrdm1Admdlci5rZXJuZWwub3Jn
DQo+IENjOiBpb21tdUBsaXN0cy5saW51eC5kZXYNCj4gVG86IEphc29uIEd1bnRob3JwZSA8amdn
QHppZXBlLmNhPg0KPiBUbzogTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+DQo+IFRv
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBUbzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBUbzogQWxleCBXaWxsaWFtc29u
IDxhbGV4QHNoYXpib3Qub3JnPg0KPiBUbzogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5j
b20+DQo+IFRvOiBKb2VyZyBSb2VkZWwgPGpvcm9AOGJ5dGVzLm9yZz4NCj4gVG86IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IFRvOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBh
cm0uY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZp
ZGlhLmNvbT4NCj4gLS0tDQo+IExlb24gUm9tYW5vdnNreSAoNCk6DQo+ICAgICAgIGRtYS1idWY6
IEludHJvZHVjZSByZXZva2Ugc2VtYW50aWNzDQo+ICAgICAgIHZmaW86IFVzZSBkbWEtYnVmIHJl
dm9rZSBzZW1hbnRpY3MNCj4gICAgICAgaW9tbXVmZDogUmVxdWlyZSBETUFCVUYgcmV2b2tlIHNl
bWFudGljcw0KPiAgICAgICBpb21tdWZkL3NlbGZ0ZXN0OiBSZXVzZSBkbWEtYnVmIHJldm9rZSBz
ZW1hbnRpY3MNCj4gDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgIHwgMzYg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tDQo+ICBkcml2ZXJzL2lvbW11L2lv
bW11ZmQvcGFnZXMuYyAgICAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9zZWxm
dGVzdC5jICAgfCAxMiArKysrLS0tLS0tLS0NCj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMgfCAyNyArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGluY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oICAgICAgICAgICAgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygt
KQ0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDlhY2U0NzUzYTUyMDJiMDIxOTFkNTRlOWZkZjdmOWUz
ZDAyYjg1ZWINCj4gY2hhbmdlLWlkOiAyMDI1MTIyMS1kbWFidWYtcmV2b2tlLWI5MGVmMTZlNDIz
Ng0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLSAgDQo+IExlb24gUm9tYW5vdnNreSA8bGVvbnJv
QG52aWRpYS5jb20+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
