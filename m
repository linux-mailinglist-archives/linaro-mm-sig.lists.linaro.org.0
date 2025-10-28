Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37304C150B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 15:06:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0E1D3F7B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 14:06:05 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011023.outbound.protection.outlook.com [40.93.194.23])
	by lists.linaro.org (Postfix) with ESMTPS id 582223F713
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 14:05:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=sCo9evbb;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.194.23 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HucSL1J1kgBncCj/yWI8ufDtczF9D6tvMRobVKcR4g766u/0MWuH93P/V5Roy2KbP6O3XAj+1Prx/7dLqzmTs5Y1bf4SJvCQshPJG7IoRBAQFb42yNTs+RZr7jYi900CdYjJpQ4gdl4otd1cafujyRFx2BYLKvbhNtmpN0PucJF4He2LodatzivkqAmiqYQLgt6nlc8X+gPe9OuowQnhMigYxFm/Pgb64B4P+C/wSnvu/zhGzXGcTXOk1JX/5XVFKro2fJDQOP6tYF4xHQI4FEczxNawe7LGFTPJaak83xrJuyT4UCK/Kf+dQmWkD166sCVWZNYHjqyXoAJaTob6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aekls8i6Hv94tp8Ws8yxEHk2+MFAfdiDSbIl6i94CLg=;
 b=KERFJ66ZQlFufeqFTFlQtppugnM2JjwczPf8Gu+kfNmWo5qRhu9aJEZFsJgql9flCTVLEpmfwh/ehXi+VT8HvIzc66wgH+sYtJ8PPVn1tdaT73xjwtSAfy2WCYklFPswWSFttHkNwXpI37dP5rRCVABfnS+1jFibInQpmXl0X2tfvBolvdBp8qYOcwqL872tZwKcPuTnlXws6XGagK7JxeHpUnCppOwFIcpY71lmDzDNv/REeZai8thViM4YLfxW/zHExEfjIrMTJjgXhbI1qQrFHy+AQ+36k/7r+el65OmPlrDds0yVDnJpI7PP8RH4ZL/zrh2HOy2s3fZk29luWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aekls8i6Hv94tp8Ws8yxEHk2+MFAfdiDSbIl6i94CLg=;
 b=sCo9evbbjZuWZUIgn+vsI1m6bUmx9VMGEDfoLarYRiGnykvHKmhvzbNrcTiKLWIFLbKbNPnscdmtOp2XQ9lM18ivHrYMYDZyEml1YZK6MoNfwS+NkvBFXet4X+PAqSdZzAFJCA1VdFGtt7cjID8zW+oHqE3lfIuxdJiWGI/4bH6P6mURUUbSm5CxrG09ZILHa5sRaTPo7O5YxHG21IK9zeDMpTX6g88WzpMr5pLjyOhID4ftstfTBdL8mbM/JXX6FE6RcFvuAx0RgeM/OqwSHaM+bpHAvU5aSv8o1ShhgQuG+E+Yb69paZWFQ6Ysjst7xjWJ6ZAQUghjpYfZ8qH34Q==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SN7PR12MB8819.namprd12.prod.outlook.com (2603:10b6:806:32a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 14:05:49 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9275.011; Tue, 28 Oct 2025
 14:05:49 +0000
Date: Tue, 28 Oct 2025 11:05:48 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251028140548.GJ1018328@nvidia.com>
References: <20251014071243.811884-1-vivek.kasireddy@intel.com>
 <20251014071243.811884-2-vivek.kasireddy@intel.com>
 <61c5edcb-2b22-4583-9138-c117bea7a9b3@amd.com>
Content-Disposition: inline
In-Reply-To: <61c5edcb-2b22-4583-9138-c117bea7a9b3@amd.com>
X-ClientProxiedBy: MN2PR15CA0064.namprd15.prod.outlook.com
 (2603:10b6:208:237::33) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SN7PR12MB8819:EE_
X-MS-Office365-Filtering-Correlation-Id: 79e86bb4-55b2-4fa1-bfd8-08de162b1918
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RDIwdjczUFVURVlGM2dEK3lHZkdDYnhaTXlrcXJVcmREQzRPcEJRd0FIRGRP?=
 =?utf-8?B?VmxDbDVoNXE4NmI0eGxDYlJqVjd5d1ErUWJjeDd5UmtadVRPd1RMRElYWGxY?=
 =?utf-8?B?UjBWT0ZjQyt5UERBK3RFVDFwV0N3QUJHdTltWC9LYURDR0tUL2Q1TTZlYnJK?=
 =?utf-8?B?cm9zdzdIK2RnWjlFQklsdk1EWDlzTzNWVU9KWG1ybWNpUlRVcUE2UEZNRE1D?=
 =?utf-8?B?OEdhaDBIR1B1YTlib1F2WldHYkFTZHNZdGh0bm8xNXFCeUVoaTNNK0xFenBp?=
 =?utf-8?B?a1Nyb1lTNEpvMkU3WDFZcEdXWVFuazc0QzBiOE5VRGRnNWc1RUlvVkY5ODU1?=
 =?utf-8?B?d2h3YUZZWDNKSDFnSVRadndpQ2xKazRHK1g5TWNIdk5TMHNtRWlEeElEU1Y2?=
 =?utf-8?B?eXlrSzBxS0hFQ0hpNEswYjV0TCsyZWhwczFkb2tSQW1oZjFVdklyMjhhdUdE?=
 =?utf-8?B?eC9hWjZXRzQ3WGl5TnMwMDFvWVc4Uk5NSitrbVNoQyt2dDIwcTNQL1d4bXE0?=
 =?utf-8?B?TmJIMUhWRmJZSlpERmhteG05ZU9sSGZDdXVZZ1lEUVd5MDhGRnZubmdVOXpI?=
 =?utf-8?B?L0YwU2VQMGJMNmlLbHgrVUhrZE1WTWxlUVV6ZnBGa1VQWlZTMGsvWUhxOGlu?=
 =?utf-8?B?OU1peTl4UFYzYjRkZTEzQ0d5b3lyYjdnNVU5TUNuZytHZTMvK21aSnkxVk42?=
 =?utf-8?B?cWpDMEVHRWNnVFIvVCt2Ky9JMFBzV1JMY1JwQjQ3ZUtpWUdkUkVpMjlsNDRW?=
 =?utf-8?B?VnIzLzRNZEFxU0t1VDhBTzJLVUdOaGlEU1NLTW82b0puc0NDMVNsNEt4NHJU?=
 =?utf-8?B?Y3N0bWEybExrdWJnTVZucWJoMEJnejBKakNHWmt3dnlaQnVETk91cnAxWnAy?=
 =?utf-8?B?c29kV1NtOHFKMmkyTTUzSTAyRmZzK1BxTzdscmErUkNsaWpmNWNqNFRlb1Fy?=
 =?utf-8?B?RXdFbWJneStlY3JDZFVqUURpN3dxT1c2dEpmUHVyRnBGUUQ4WTJ5UXBtOXVa?=
 =?utf-8?B?bE5KUHRXTXkybzRSS29sNnB0NHpBQVIzN01oWVRkYjFLUkJNRWc3WG5mSEYy?=
 =?utf-8?B?ejVlZ3I3UHVQODBCNkxkcDcyRlZVaXZ6anR4MVpYMnVFWDM3REl0djZGYm9u?=
 =?utf-8?B?SFoyZlZlRlovNWdzUnkvd3JEWkJvd1l6b3VCY0JtWGZXa05JSTFVUHRzOFg0?=
 =?utf-8?B?YUdLZm1sYnlnSUs1WGdicDU3WGY3dG9uYVkrRlhSVTgrTGs5KzQ0eXhCTklH?=
 =?utf-8?B?SWRWK3dDbGhDQjc1dUlrVDUra21KUGgvbldkcmdGYUJTYUpqVnhqeUFyaEov?=
 =?utf-8?B?ak5WVU84S3ZlUGZFbzBtZG1RUjJZK2pTQlRXRDJjVzI5MHplSklqVXB5eE1p?=
 =?utf-8?B?OEhzV0RmQWtIZlpyQVZlWStMRERycWc5MTFXY2xiMHZJZTFxcjAwWjFWYkdo?=
 =?utf-8?B?bDBuS0VZTGNNbzRoMmVveGE3b1NlWkF6d3ZydDE4ZzJmK2pXUmRTbWVmQTNh?=
 =?utf-8?B?VWVnMGNjelBvY2dmMThKa3QxdTlVOVk0bDhOQmd2aklDYWdCT2tJaDJDS2hu?=
 =?utf-8?B?THhmWWlKUGUxZ1NCM0J0dktONXd5bllTSnZOTzZxVXBPa2FuaHEybjlZYUtY?=
 =?utf-8?B?ZzNwYkZhMlpCbDRuRmNxcGQxeXBxamsvZ1p1TEZ0WVlrdnBIMzd6OE0rTGFo?=
 =?utf-8?B?cDZlUm1wUWQ0c1pSdHNHRkZVNDIvUFBkNWd6c3ppcXBUQUxLRGJUUW8yZ1JY?=
 =?utf-8?B?bC9vT1NCQ25BMitDazBLbVA0THJlRm04a3BXaGU5UlF1QmxkdVZWeVp3enEy?=
 =?utf-8?B?ODBFRlVjOStDWTZKQjh2U2lpMjNnUndsUHZnejR6ZjRpcm9jNU4vR0RaVFdW?=
 =?utf-8?B?Zjg2Tmp1TkxxdTQyQ0JOanFjanBuSDkyaitrZkQvL05DRVU4eGUyRFdUak9O?=
 =?utf-8?Q?2fVnrxbjhkUKWc6xv3BIzmn0huBNKdLA?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MmVQcEwxYjkxeDNQQWZpYXJ2V0JTZjdoWkVsdURQZE9lRjVKV3pjMDBGU2E2?=
 =?utf-8?B?MjVVNzZrdnF1WDlDaVlXcVh6amtzaWxBaEtZbnlhZUZVU1duQ2RSU0FhVzRq?=
 =?utf-8?B?Sks5ckREMHBHVE14YXlYdDRYT0FmWHZBcXpNOERIMGZua0x2M1F1SjI3NFZO?=
 =?utf-8?B?Qk1GU2pud2V4bVdvTzZ1QUpxdUlqblBMUFNERlUySVdtWmJLY1IyS1o2ZC9i?=
 =?utf-8?B?N0g5Q2xqcDVackJ6R01QWkpwbGR6MThWWldrYkhUMW5HekhkQVV0TWx4SEJW?=
 =?utf-8?B?aVdybHZFSnEzdHF2MFdzTE9ucGhqSVhRSTZteGxXNWxiaUd1RWVLT0JBclRk?=
 =?utf-8?B?bTdic1lYU0FKR0xacGlYK1J0SDVrUXk1Q20vcmJzdThBVzkzOVBuUXprMG8v?=
 =?utf-8?B?VXdVMTM5ellNTWlQSk1Vd1NaT1Bja2ZUTFZWT202TWN4VmRaWUp1RDZWZTVp?=
 =?utf-8?B?SklSbDJsVXRZK09sc3pqK0pVZzh5QTNMOXZwSWdCVUVMTmZHazBXQVlVdnZG?=
 =?utf-8?B?dlNRa0ZxZlIvK2g5ZkliR01iZVllNDVaR2JVZjk0UUNaYTJhRGhObW5iVHNZ?=
 =?utf-8?B?MzFWWGpxMlRmRk5EclptVFRaK3hoa2xCVkY2SHFhWlZzYVpKVk9naXFYS0VD?=
 =?utf-8?B?aWFBRFYyeVN3d3hmMSsxYlpROXU0anNSek41WGdFaFY3TEc5VkEwY3ZqSXVT?=
 =?utf-8?B?WWpxRThodmFUbjlLbyt1dkJ5WW9zWTRvZGk1bTVxNkFEN3p2eDF5NisxK0tW?=
 =?utf-8?B?L2tjWGl1aHRjUWhDM1B4MDdRaEIrWDNOWkFndk5KZ0hBSzFrQXBzK2F4L3lu?=
 =?utf-8?B?MTBxVW9KQXVuemNHaVpEbUkzSjhIL2xhU0w1RnFpcGVKNHl6YkV1VjVCRzFU?=
 =?utf-8?B?RW9KajBNNGxxQjJUTlZFdll2QUN6OW1NR1ZBY042ZzRKTjRNZW5vdHRiWmYx?=
 =?utf-8?B?MTZzSHgwTUVsOVBmNk8vTlBYRFBwYTBiVC90VlF2YWtQR0cvMG5CZmIwU0xR?=
 =?utf-8?B?dFhQK0tzTG5rNU1SSGtycHlpcVNSRVQyU2NQVUJQR2sxYXV5K0U3RVRRV2Js?=
 =?utf-8?B?b0kvVnJFdDB2d3l6bW9XV1lqR3F0WkFjVkg2cU5lU0tKb1pFSndENjVpWG1N?=
 =?utf-8?B?ZGxpZngwb2V6QTFKOFBLeXlWYVdzTTRQY21sQnVCeFhWM3pmSFVnbi8rd3g0?=
 =?utf-8?B?WTZ6bHZaMy8zTmY5cElFbThpQUxiNHRCODd5TmsyRHYrNWh6MFhQRUdWYkZY?=
 =?utf-8?B?dHhqQWRHM3dWazFvWml3TWhSYUwwWnFCUU9PMGhWL0grWmJKaG9JOGlpWXdP?=
 =?utf-8?B?Wld3LzJFeUphaFBSV0puUERCVkVNdlUxSnBTZWtDZTM2RTBuNTBRRTNJdWh2?=
 =?utf-8?B?dUhqcnhLbkFzVnFBQnRYV3BVU2xPcnBDcW9JZGdWSU5NVkhmcXJxMGhNNVlF?=
 =?utf-8?B?SnAvYmFhUXRrSUFabE9sc25paVNGRHNLZGFoVjQ0d0FuRDlMOUVnV0N5SldQ?=
 =?utf-8?B?a20zY0RlajRyeXYzOVdIWnA1ZHQ4WkgxbjdRbXZiNnZ4TkE4aURzVUljVHhH?=
 =?utf-8?B?QkE2U2hXNGJxRXp2bXkxWjAyQWk5bCtVQ0RQZkNOeXhyQ1RtSi80VVJ1V2tQ?=
 =?utf-8?B?UkZOcFdSa2dWOE5jaS9CTzRTUXZpTk1pM0h0RkdtVUJqWkFtVWkwVndjYXJK?=
 =?utf-8?B?N3VxYmhhVG51N0phTXN4Z1BseUtRMWtZWHNCRkFxL3pjQW82VWwvdzJKNitI?=
 =?utf-8?B?Uk01THE0UEUzMTBPbGxaWWtVeGZ0a2VmUlF4alpHWlo1RHBRZUFzem9GbEhQ?=
 =?utf-8?B?Zm5CYnBONHV2RkZSUjVzK2ppb2I1ZlRYcmZCSndNcXZ2dUJLUzRNU1R2V3Iv?=
 =?utf-8?B?RVRuL3F6MEtlNERwWTc3U2lnb2NFOFFXR1lFS1diVTRoV045TEJnbVZaK3RX?=
 =?utf-8?B?UTk0OXBOQ3FLbnlvU1RsYjJtS0dFaEFacWNXZXJtUmtWVW1WVnZrbzJtRWIr?=
 =?utf-8?B?bmxHQ3J3cHdHR3RMMGRXQ2JLU2dobkVFalgrSzRMcGxVbFgyMGZKa0JzQXNF?=
 =?utf-8?B?eE1rQUF2RjVFVVFYU2dBcE9QOWt6K0FBeWF0WVRWdWlaVnpDb2xqdThFa09h?=
 =?utf-8?Q?bqTg=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79e86bb4-55b2-4fa1-bfd8-08de162b1918
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 14:05:49.4911
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2h2N2oIgzApmdSMjaAMBJKazqNZ0CAwpDUk1PdgH2lNf92tlyCfreRrSxJparVoi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8819
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 582223F713
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-2.99)[99.93%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.23:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[nvidia.com:mid,Nvidia.com:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received,40.93.194.23:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JQPHYREVTVGUHUCPKDLZIDJOEPLDIRMW
X-Message-ID-Hash: JQPHYREVTVGUHUCPKDLZIDJOEPLDIRMW
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 1/8] dma-buf: Add support for map/unmap APIs for interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQPHYREVTVGUHUCPKDLZIDJOEPLDIRMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMjgsIDIwMjUgYXQgMDI6NTg6NTdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBTb21lIGtpbmQgb2YgaXRlcmF0b3IgbGlrZSBpbnRlcmZhY2Ugd291bGQg
YmUgcHJlZmVycmVkIHdoZXJlIHlvdQ0KPiBoYXZlIGZpcnN0IGFuZCBuZXh0IGNhbGxiYWNrcy4N
Cg0KVGhhdCdzIHdoYXQgSSB0aG91Z2h0IHlvdSB3ZXJlIGFza2luZyBmb3IuLg0KDQpBcmUgeW91
IHN1cmUgdGhhdCBpcyB3aGF0IHlvdSB3YW50PyBJdCB3aWxsIG1ha2UgbWFwcGluZyBvZiBmcmFn
bWVudHMNCmFsb3Qgc2xvd2VyLi4NCg0KPiBBZGRpdGlvbmFsIHRvIHRoYXQgSSdtIG5vdCBzdXJl
IGlmIHRoZSAiaW50ZXJjb25uZWN0IiBpcyBhIGdvb2QNCj4gbmFtaW5nLCBlc3NlbnRpYWxseSB3
ZSB3YW50IHRvIHVzZSB0aGUgbmV3IG1hcHBpbmcgZnVuY3Rpb25zIHRvDQo+IHJlcGxhY2UgdGhl
IHNnX3RhYmxlIGFzIHdlbGwuDQoNCidtYXBwaW5nIHR5cGUnID8NCg0KSmFzb24NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
