Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F09AAB55D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 15:18:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64A2F44975
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 13:18:24 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2057.outbound.protection.outlook.com [40.107.101.57])
	by lists.linaro.org (Postfix) with ESMTPS id 1488640D24
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 13:18:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=SzFvDVRk;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ml6+QTm8JMgFPk+9X4UiQXUr5yJgmaWz2770xpuNgUT0L6UbeuDn82GBZuf+gJbMvJWVOjnhwj43d219TAB8t+OBAmagCacpHik6K3Yr1vaRVpVfsC9lhDx+EDJLhsk2VF6UwzkuCr3Er0duCAO+tTaEU3QhHtM6iB62zo1945J/iIT9KppTwzgyBl9nWWrz+f5eIBob6fhnnbmMgQoydIesfHsz4BqmJU5pjjS24Wu01kZrY+dQUVPDliORtg5tBcE4W8dlQ8bVqkRYwCV5hBHuXNELTCuOSqJBCejruJ6qi6xGstHPaBAf6qnfHV1Lw7v2bzN8JjIegow3fCfkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0XYqoDLKn1X8U042JbzEqsU7/9qTxfLm7/S6JhoPo4=;
 b=QTFILjsad6dETWKvH7ec30gFubO4sOiWYmgTAbc7WCFdAV5c27tq55MrELDVm/fsp3quBzO8YFxZFnCIlwGSiaqu1uPGmnGqM+IBb66e6vG1Wv9TWb03fuv1nl/61PanliiBpdztQQgwy9nmCHy0+cincimNKwFozV/FqvPvN4QlEmWVud5h5fJl2jMRjEiPihKSo100QUpndKlPwxaOsM5IbS3wczbztI2Y+ZQwZDxKoSguzeLuytY5wKFyrsQR/a5Eg+aV7yuH4xi8Sqfoksb2xcpcNMnDHGmauRd8DwVRi/PcptFhHmPc26AK0cYdBMN0uoX619oYouavCRSQVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0XYqoDLKn1X8U042JbzEqsU7/9qTxfLm7/S6JhoPo4=;
 b=SzFvDVRkHHelc+9fd8VlJ5Bgybnw9pi70J9T/4N5RdI4mzMvXW+9d/6i6qASXLwdSiKT5yxCYL6FZi+yQXiMx74ggr5D7nm0yy1SUv1jZ4SZOUddMRPAPz4m+FEifrB/yI61LjGLwQYI83j+cbVJ3G49Yoz+C9BigQfBvEUw7W4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB6248.namprd12.prod.outlook.com (2603:10b6:208:3c0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 13 May
 2025 13:18:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 13:18:06 +0000
Message-ID: <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
Date: Tue, 13 May 2025 15:17:59 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
 "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "tjmercier@google.com" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <fdc8f0a2-5b2f-4898-8090-0d7b888c15d8@amd.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
X-ClientProxiedBy: MN0PR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:208:530::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB6248:EE_
X-MS-Office365-Filtering-Correlation-Id: 811ec9b9-bd77-4831-1e4a-08dd92209922
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MkN0NkhDbWNKam9RWU9UVHRFSTlxOWg4SkdBUDk4cWVtM3RxcG1vanppN0R1?=
 =?utf-8?B?K2hxREFUcGwxWGNDYSszSUhtclVUbnU2L2xqRnVFaGZnb0ljMGs0enRIWE0r?=
 =?utf-8?B?Zk5Cb1hPR1hZL05LYThBUmxXQmYzL0g4OVJTZ0wvU2pIMHd6bXFpYUViM3RL?=
 =?utf-8?B?aTUxNFhCWVNDVXFVeEY2TjJtRVk5VldNREFadDNkbUNRTlpHSHNTdWR0aURM?=
 =?utf-8?B?djVXMVd1YVJiTE1ZZFlPaEpVMzdlaHhJY29BclBqajYzV1ZKYWhoR0tPaFcz?=
 =?utf-8?B?TEVVSFBCeXYwenVLd1NyaTR2YU45blBRSUIvZ3FWSXBnb0dvb0piQ0RSTkdJ?=
 =?utf-8?B?b2Q0dGRhaG9tekYxVDNTNWV6N2hRbXFIbzRYRjA4OWhqN1kzRTBnRG4wWklw?=
 =?utf-8?B?NFVVd3h0NCtRVG9xalMrZXlmb01LU0pHL1hDZlpDUnpxcFNyMnFiTGxOZVpF?=
 =?utf-8?B?dEErK1QvNHFFd2Vod3ozUERjZ2ptQit6N3BNbjZhRUprcE05bUF0WlJtblI2?=
 =?utf-8?B?UFlRVEVmVFU2Si9JcWVCMnU0Qy91QXByNlB1ZDI2eWdTQlEya1k4NTQ3RW43?=
 =?utf-8?B?SkExL1JaVlRSaVdkdWg5WmlHKzdYbEcxWXo2Umh6aThCY2RuQXEvYU1MUkQz?=
 =?utf-8?B?eWpLVnZGNFluNXo0enFGUzJta3dwY2lzSE9kTmtJWXd5V0Zob2dzc0M1em9W?=
 =?utf-8?B?RXVyMXc3M2F0bGN0eTQwUHRqaEJLWW1ySllGbGl0UzlsdDljMFJrb3FEWHBn?=
 =?utf-8?B?WWh5KzFINnZMZGVMdnl6aENtVk84RVNpZGp5d09rZDJNQS9wcC9IYjRKazkz?=
 =?utf-8?B?NEkxRXA4VDc3cmFuYW5tRXhSc2VjeUxMdG1CSU55YWNldUpBZEI3L3llUmRB?=
 =?utf-8?B?VWk0TStGRDdDamp2Ry9mM1JWZjBKY2dxUm9HMTBrRnZ5WXA2VDF0RTYzWFZj?=
 =?utf-8?B?ektSc1J6TzR4dXdyc3dMcXZsVFdaV00zaHJnd2loc1hjbkpNd0JVTVQxekht?=
 =?utf-8?B?eUZjcVNhRnhnTGZNWk8rcFR2SlZoLzFRdFMva2phSXpTSzZpMEQySHJlMjBl?=
 =?utf-8?B?bk83aVQ4cUNpWFRROW1meEtxeVM5ajJZL3lmaUhhTldQR25STjBJK2cyV0xS?=
 =?utf-8?B?d0dPZ1l6aUd4R0dNVTFVNkxvUUZoTDM3Sk5iQ1ExNVRxL1p6SHEzdTVGeTU0?=
 =?utf-8?B?OFA1YkJXK3IzQ1MzYXY0cGlCUis3d2MxM0k2bzNNOUVyMXNISG9UUVMwK3Fq?=
 =?utf-8?B?VXR6V3JEenJPdTh2Ny9VRHdTZUIyZ3ZXMlFwUW1ITE1iTFV1S3FpbjBXVDdO?=
 =?utf-8?B?RVV2aEJpR0VQQ0tNSWZPRi9UNm92OTlvMEcrSWpjLy9MSVY2SUU2eVZrczBj?=
 =?utf-8?B?RndlOVd2ZFI5dGNVV3AwY3REL2M5T3BXMzRMY2pMYmhWekJZei9yK3dSeGZJ?=
 =?utf-8?B?RlhrMmNCWFRvQ2xFaHRGb3BwOCtJM1V6VEhvTTR0M2drNG9kL3dhZWZrdE5o?=
 =?utf-8?B?N3MrZUc2MHlyWHg0djNtNzdQb2hIU2pPMlZmVmliOVdvRGRwUUhFRGx5bGY5?=
 =?utf-8?B?Z0R1Y3hiTWh2Tm1jbHFxZG5aeFVmSUl5U01JZGViQkJKL2F1MGxlbVFYa3Bh?=
 =?utf-8?B?YjJxYVdIZW8yaCtqLzV4WnRLckwxR2pUMFJTZVVQQ1FabXdaMUNRUWhuMHVK?=
 =?utf-8?B?ajUvTDY4aytsbVdqYlMwL3A0Smt6ZVNLMW1iOFJuWm1rZHYrVlN2V1lxbEJC?=
 =?utf-8?B?MXRLcFRUZHF6bDNZZ0JLWVoxQSsxMk5SWFZvWURaR0FXd3BGNGVFekIxSFVW?=
 =?utf-8?B?UWJRSlRMZWZsWHVGWmZKeDFSa0FTamtWN1djV0tBclhMYWF3MHN3NVlRN0pB?=
 =?utf-8?B?dlhmWjh6YlBwSFlabmtHZUhHWmtWczNDVWFIazRLYlppNFViaUgrVjdmUHJU?=
 =?utf-8?Q?XVLKVNV+b6g=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WVNHaU5KbjBQSm5VQVc5RVlndW5JZE9ST3FQMjA2MHVPTmplNjhwNlNCaVcx?=
 =?utf-8?B?Mmg0R2RtdjlFYStkSlozS09ybmp6WUE1R0UvUTlyQnFnNWE4M0I2SVM3cGpk?=
 =?utf-8?B?MUE5R1lXVk9VQ3crdTNicmNaTUZpaXhmemJMVmtqdkQvaHo3dFFBM0dpQUlo?=
 =?utf-8?B?Q2NIOGlrcTB0cEFpbjFoUDhFRFZreE9valAvdHkxRjk4aWc2cHRINEY0alZj?=
 =?utf-8?B?eDIwcTlsaHZDK1VtVytOODF4dVppNFphWHVNR1VNazl3QUZaM3ZMUGxlU2dt?=
 =?utf-8?B?NzZVZlRmMkUybTQwU0lKQnA4cjk0SEk1aThiRzVmL1BCdWFKKy90blk2a0lU?=
 =?utf-8?B?SzBMZHhyYk5haG9uMEJFbnVmTkxhcmE0SmZTeVJMeERWL2dtV0grTWFDczdJ?=
 =?utf-8?B?bHU4cWVvd3Z6cGQ0QUUrV05UN1JyaGxFZ1JwMWM1bFIwdldMbjFPSWdVYWps?=
 =?utf-8?B?V0dEdXl3blM2ZHBGR29rbVdDT3ZxNUdqdmhpODRhb0N6MVJ2WGZjTW1RY2Qv?=
 =?utf-8?B?Yyt6VFNMcDczQnNFUXJldXA4SFFFU21kWFJXbmFmL3IwTi9PY3pJdFlXM1R6?=
 =?utf-8?B?TmtvNGd4NkVueWd3U3NmU2FQQmxGMW0rM2FjcHc4QXM2YURVcThFbmFlWG9L?=
 =?utf-8?B?Y2Y4eVVWclZlSlVVckgrcEFVZlFRUGxyNVVqT29NVzJiRER1eGZjcDZJMms5?=
 =?utf-8?B?LzZUd1luTE9TaVpHMHlRRW1zQ1ZVT2N6a043OWw0WUJIeWVaN1lpUndHSjd2?=
 =?utf-8?B?clNTVWo1cityMHlrelptVkFVOGVCb3JiZTNiNlRIVFNjZ1JoUDlxUldyeEFh?=
 =?utf-8?B?VERvb3I5UlYrb0xtc1pnNGRhdnVWWWdCQnUwWmJoRHZrTUhlUXhkZElRUzRj?=
 =?utf-8?B?Q3VJZGZIaHN6OVVjSFI0bzQ3QXBHMUE1Z1dPZk5jM0cydGZQcHI5YVU0WS9J?=
 =?utf-8?B?N3VpbzdBR3Vvb2ZLb0RRcDlvN3JwOGR4Ti9NdGdQOEZMV1NtNWtMdzA1cGhG?=
 =?utf-8?B?OFdRNHZsSFl6ZnhzK3AwVWpIMGdrYkhucTU2dC9OQlVDMmF3Z2UyZ3RFNGdu?=
 =?utf-8?B?YmtPM2JDb0R3aWZ1RHRTalQxeWtUakZ1dDZmSGE0MG5UMGoybm9GMStRQnZt?=
 =?utf-8?B?b0pnZjdZWThpeVl2YWJxTDNjak5GVzdMM2syQ0ZlY2FXdGMyN3Nyd0g5U2lu?=
 =?utf-8?B?SW43Sjhva2lmdERyWFJxUFZjK3JSZmdubnpTbll2Snd2Ujh6cThLYks2aTdj?=
 =?utf-8?B?Q05YR2hLZUhkYmE5ZWRlMUI1ZUgweE9reHM0Z1poQUtTa1dKSUppeHBORFRL?=
 =?utf-8?B?SFN5SmExWmhvbVV2Z3YxU2tEZW0zckVWdkpTQWpIWEdIL3NmKy9GWmR2MHdK?=
 =?utf-8?B?cnRLazhtSUpNWUZQbmdnRExpTmgwYUJmWVdiWlhzd0d6alF3ZEEyWll0cmg2?=
 =?utf-8?B?ZnhuYUt3QjgxeElLUURqakQ5dnRCdWNPZ2dDNUVrVWo4VkdxU1p0VkFsUzFn?=
 =?utf-8?B?Um5SVHF1V0tjNVd5WCtlRnAzK2pOUjJSQjNrZVlnbnduMXgyN0xrYk9nUE1s?=
 =?utf-8?B?L1BickRMRi90cERhdC9CZmtHZnptU2txN1NDSDJvblJEcDBuTWRCL1RLZmVW?=
 =?utf-8?B?WU9jMDhhMTdHakVzRTVkeW41Mk1OR3FsUUJaOHA0UjVET2lHQ252ck1mOWRi?=
 =?utf-8?B?RmNlc3dvZW5sdkl0WmdkTkViSVhxZ1kwTWIrM25RWWhabllLZnRJR3BNRnJC?=
 =?utf-8?B?YjA5b3BGVDkzbFUrSHBGeWFqVkV1MTZka2NLNnVoeXlOU3MyOXBiTHY1Q2lU?=
 =?utf-8?B?ZGZVTjd5cGJJTjJnL2c4S2loMVdhSkhRc2FrUUVJc0pkdm5Bb2NRRTVWMnd1?=
 =?utf-8?B?RlpUbFVkalhwM2FIMmNrVjN4TnVjNHJyUm5hdHdDWkd0T2R6UjBYVlNjeC9t?=
 =?utf-8?B?N2pNUUp2ZlloMitxc0ZaV0ZUVEhUN1o0R1MxL1lNcThhdlZubUxPSDJ3bkM2?=
 =?utf-8?B?OXdZRWx1a2VxZ0ozNWJBSjVGRzlJbUlJYWZ0MGtoSHI5V0x2RHZmNnJ3RUxE?=
 =?utf-8?B?bHo0ZEk2TTVyRnM5bGJxTm9kNXR4Uk85Y1hQbjJVdG95M3pCaHdBcHArN0xD?=
 =?utf-8?Q?mTd8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 811ec9b9-bd77-4831-1e4a-08dd92209922
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 13:18:06.4111
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B3ttb9eyjmpMYQsbj/F5jnXwVcKCS3NoOu2YK63IpyxrDNmbasaAQmtMtsO2k2Sh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6248
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1488640D24
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.57:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.101.57:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: QBYJ765EUVJQVWZUPZ3KK3T42DOH44KV
X-Message-ID-Hash: QBYJ765EUVJQVWZUPZ3KK3T42DOH44KV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QBYJ765EUVJQVWZUPZ3KK3T42DOH44KV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xMy8yNSAxNDozMCwgd2FuZ3RhbyB3cm90ZToNCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+PiBGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+PiBTZW50OiBUdWVzZGF5LCBNYXkgMTMsIDIwMjUgNzozMiBQTQ0KPj4gVG86IHdhbmd0
YW8gPHRhby53YW5ndGFvQGhvbm9yLmNvbT47IHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnOw0KPj4g
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbTsgQnJpYW4uU3RhcmtleUBhcm0uY29tOw0K
Pj4ganN0dWx0ekBnb29nbGUuY29tOyB0am1lcmNpZXJAZ29vZ2xlLmNvbQ0KPj4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
bGluYXJvLQ0KPj4gbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmc7DQo+PiB3YW5nYmludGlhbihCaW50aWFuV2FuZykgPGJpbnRpYW4ud2FuZ0Bob25v
ci5jb20+OyB5aXBlbmd4aWFuZw0KPj4gPHlpcGVuZ3hpYW5nQGhvbm9yLmNvbT47IGxpdWx1IDAw
MDEzMTY3IDxsaXVsdS5saXVAaG9ub3IuY29tPjsgaGFuZmVuZw0KPj4gMDAwMTI5ODUgPGZlbmcu
aGFuQGhvbm9yLmNvbT4NCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkbWFidWYvaGVhcHM6
IGltcGxlbWVudA0KPj4gRE1BX0JVRl9JT0NUTF9SV19GSUxFIGZvciBzeXN0ZW1faGVhcA0KPj4N
Cj4+IE9uIDUvMTMvMjUgMTE6MjgsIHdhbmd0YW8gd3JvdGU6DQo+Pj4gU3VwcG9ydCBkaXJlY3Qg
ZmlsZSBJL08gb3BlcmF0aW9ucyBmb3Igc3lzdGVtX2hlYXAgZG1hLWJ1ZiBvYmplY3RzLg0KPj4+
IEltcGxlbWVudGF0aW9uIGluY2x1ZGVzOg0KPj4+IDEuIENvbnZlcnQgc2dfdGFibGUgdG8gYmlv
X3ZlYw0KPj4NCj4+IFRoYXQgaXMgdXN1YWxseSBpbGxlZ2FsIGZvciBETUEtYnVmcy4NCj4gW3dh
bmd0YW9dIFRoZSB0ZXJtICdjb252ZXJ0JyBpcyBtaXNsZWFkaW5nIGluIHRoaXMgY29udGV4dC4g
VGhlIGFwcHJvcHJpYXRlIHBocmFzaW5nIHNob3VsZCBiZTogQ29uc3RydWN0IGJpb192ZWMgZnJv
bSBzZ190YWJsZS4NCg0KV2VsbCBpdCBkb2Vzbid0IG1hdHRlciB3aGF0IHlvdSBjYWxsIGl0LiBU
b3VjaGluZyB0aGUgcGFnZSBpbnNpZGUgYW4gc2cgdGFibGUgb2YgYSBETUEtYnVmIGlzIGlsbGVn
YWwsIHdlIGV2ZW4gaGF2ZSBjb2RlIHRvIGFjdGl2ZWx5IHByZXZlbnQgdGhhdC4NCg0KT25jZSBt
b3JlOiBUaGlzIGFwcHJvYWNoIHdhcyBhbHJlYWR5IHJlamVjdGVkIG11bHRpcGxlIHRpbWVzISBQ
bGVhc2UgdXNlIHVkbWFidWYgaW5zdGVhZCENCg0KVGhlIGhhY2sgeW91IGNhbWUgdXAgaGVyZSBp
cyBzaW1wbHkgbm90IG5lY2Vzc2FyeS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KDQo+IEFw
cHJlY2lhdGUgeW91ciBmZWVkYmFjay4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0K
Pj4NCj4+PiAyLiBTZXQgSU9DQl9ESVJFQ1Qgd2hlbiBPX0RJUkVDVCBpcyBzdXBwb3J0ZWQgMy4g
SW52b2tlDQo+Pj4gdmZzX2lvY2JfaXRlcl9yZWFkKCkvdmZzX2lvY2JfaXRlcl93cml0ZSgpIGZv
ciBhY3R1YWwgSS9PDQo+Pj4NCj4+PiBQZXJmb3JtYW5jZSBtZXRyaWNzIChVRlMgNC4wIGRldmlj
ZSBANEdCL3MsIEFybTY0IENQVSBAMUdIeik6DQo+Pj4NCj4+PiB8IE1ldHJpYyAgICAgICAgICAg
ICB8ICAgIDFNQiB8ICAgIDhNQiB8ICAgIDY0TUIgfCAgIDEwMjRNQiB8ICAgMzA3Mk1CIHwNCj4+
PiB8LS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLTp8LS0tLS0tLTp8LS0tLS0tLS06fC0tLS0t
LS0tLTp8LS0tLS0tLS0tDQo+Pj4gfC0tLS0tLS0tLS0tLS0tLS0tLS0tfDp8DQo+Pj4gfCBCdWZm
ZXIgUmVhZCAodXMpICAgfCAgIDE2NTggfCAgIDkwMjggfCAgIDY5Mjk1IHwgIDEwMTk3ODMgfCAg
Mjk3ODE3OSB8DQo+Pj4gfCBEaXJlY3QgUmVhZCAodXMpICAgfCAgICA3MDcgfCAgIDI2NDcgfCAg
IDE4Njg5IHwgICAyOTk2MjcgfCAgIDkzNzc1OCB8DQo+Pj4gfCBCdWZmZXIgUmF0ZSAoTUIvcykg
fCAgICA2MDMgfCAgICA4ODYgfCAgICAgOTI0IHwgICAgIDEwMDQgfCAgICAgMTAzMiB8DQo+Pj4g
fCBEaXJlY3QgUmF0ZSAoTUIvcykgfCAgIDE0MTQgfCAgIDMwMjIgfCAgICAzNDI1IHwgICAgIDM0
MTggfCAgICAgMzI3NiB8DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiB3YW5ndGFvIDx0YW8ud2Fu
Z3Rhb0Bob25vci5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0
ZW1faGVhcC5jIHwgMTE4DQo+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+ICAx
IGZpbGUgY2hhbmdlZCwgMTE4IGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPj4+IGIvZHJpdmVycy9kbWEtYnVm
L2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4+PiBpbmRleCAyNmQ1ZGM4OWVhMTYuLmY3YjcxYjk4NDNh
YSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0K
Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+Pj4gQEAgLTIw
LDYgKzIwLDggQEANCj4+PiAgI2luY2x1ZGUgPGxpbnV4L3NjYXR0ZXJsaXN0Lmg+DQo+Pj4gICNp
bmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+Pj4gICNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+DQo+
Pj4gKyNpbmNsdWRlIDxsaW51eC9idmVjLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC91aW8uaD4N
Cj4+Pg0KPj4+ICBzdGF0aWMgc3RydWN0IGRtYV9oZWFwICpzeXNfaGVhcDsNCj4+Pg0KPj4+IEBA
IC0yODEsNiArMjgzLDEyMSBAQCBzdGF0aWMgdm9pZCBzeXN0ZW1faGVhcF92dW5tYXAoc3RydWN0
IGRtYV9idWYNCj4+ICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+PiAgCWlvc3lz
X21hcF9jbGVhcihtYXApOw0KPj4+ICB9DQo+Pj4NCj4+PiArc3RhdGljIHN0cnVjdCBiaW9fdmVj
ICpzeXN0ZW1faGVhcF9pbml0X2J2ZWMoc3RydWN0DQo+PiBzeXN0ZW1faGVhcF9idWZmZXIgKmJ1
ZmZlciwNCj4+PiArCQkJc2l6ZV90IG9mZnNldCwgc2l6ZV90IGxlbiwgaW50ICpucl9zZWdzKSB7
DQo+Pj4gKwlzdHJ1Y3Qgc2dfdGFibGUgKnNndCA9ICZidWZmZXItPnNnX3RhYmxlOw0KPj4+ICsJ
c3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+PiArCXNpemVfdCBsZW5ndGggPSAwOw0KPj4+ICsJ
dW5zaWduZWQgaW50IGksIGsgPSAwOw0KPj4+ICsJc3RydWN0IGJpb192ZWMgKmJ2ZWM7DQo+Pj4g
KwlzaXplX3Qgc2dfbGVmdDsNCj4+PiArCXNpemVfdCBzZ19vZmZzZXQ7DQo+Pj4gKwlzaXplX3Qg
c2dfbGVuOw0KPj4+ICsNCj4+PiArCWJ2ZWMgPSBrdmNhbGxvYyhzZ3QtPm5lbnRzLCBzaXplb2Yo
KmJ2ZWMpLCBHRlBfS0VSTkVMKTsNCj4+PiArCWlmICghYnZlYykNCj4+PiArCQlyZXR1cm4gTlVM
TDsNCj4+PiArDQo+Pj4gKwlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGkp
IHsNCj4+PiArCQlsZW5ndGggKz0gc2ctPmxlbmd0aDsNCj4+PiArCQlpZiAobGVuZ3RoIDw9IG9m
ZnNldCkNCj4+PiArCQkJY29udGludWU7DQo+Pj4gKw0KPj4+ICsJCXNnX2xlZnQgPSBsZW5ndGgg
LSBvZmZzZXQ7DQo+Pj4gKwkJc2dfb2Zmc2V0ID0gc2ctPm9mZnNldCArIHNnLT5sZW5ndGggLSBz
Z19sZWZ0Ow0KPj4+ICsJCXNnX2xlbiA9IG1pbihzZ19sZWZ0LCBsZW4pOw0KPj4+ICsNCj4+PiAr
CQlidmVjW2tdLmJ2X3BhZ2UgPSBzZ19wYWdlKHNnKTsNCj4+PiArCQlidmVjW2tdLmJ2X2xlbiA9
IHNnX2xlbjsNCj4+PiArCQlidmVjW2tdLmJ2X29mZnNldCA9IHNnX29mZnNldDsNCj4+PiArCQlr
Kys7DQo+Pj4gKw0KPj4+ICsJCW9mZnNldCArPSBzZ19sZW47DQo+Pj4gKwkJbGVuIC09IHNnX2xl
bjsNCj4+PiArCQlpZiAobGVuIDw9IDApDQo+Pj4gKwkJCWJyZWFrOw0KPj4+ICsJfQ0KPj4+ICsN
Cj4+PiArCSpucl9zZWdzID0gazsNCj4+PiArCXJldHVybiBidmVjOw0KPj4+ICt9DQo+Pj4gKw0K
Pj4+ICtzdGF0aWMgaW50IHN5c3RlbV9oZWFwX3J3X2ZpbGUoc3RydWN0IHN5c3RlbV9oZWFwX2J1
ZmZlciAqYnVmZmVyLCBib29sDQo+PiBpc19yZWFkLA0KPj4+ICsJCWJvb2wgZGlyZWN0X2lvLCBz
dHJ1Y3QgZmlsZSAqZmlscCwgbG9mZl90IGZpbGVfb2Zmc2V0LA0KPj4+ICsJCXNpemVfdCBidWZf
b2Zmc2V0LCBzaXplX3QgbGVuKQ0KPj4+ICt7DQo+Pj4gKwlzdHJ1Y3QgYmlvX3ZlYyAqYnZlYzsN
Cj4+PiArCWludCBucl9zZWdzID0gMDsNCj4+PiArCXN0cnVjdCBpb3ZfaXRlciBpdGVyOw0KPj4+
ICsJc3RydWN0IGtpb2NiIGtpb2NiOw0KPj4+ICsJc3NpemVfdCByZXQgPSAwOw0KPj4+ICsNCj4+
PiArCWlmIChkaXJlY3RfaW8pIHsNCj4+PiArCQlpZiAoIShmaWxwLT5mX21vZGUgJiBGTU9ERV9D
QU5fT0RJUkVDVCkpDQo+Pj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPj4+ICsJfQ0KPj4+ICsNCj4+
PiArCWJ2ZWMgPSBzeXN0ZW1faGVhcF9pbml0X2J2ZWMoYnVmZmVyLCBidWZfb2Zmc2V0LCBsZW4s
ICZucl9zZWdzKTsNCj4+PiArCWlmICghYnZlYykNCj4+PiArCQlyZXR1cm4gLUVOT01FTTsNCj4+
PiArDQo+Pj4gKwlpb3ZfaXRlcl9idmVjKCZpdGVyLCBpc19yZWFkID8gSVRFUl9ERVNUIDogSVRF
Ul9TT1VSQ0UsIGJ2ZWMsDQo+PiBucl9zZWdzLCBsZW4pOw0KPj4+ICsJaW5pdF9zeW5jX2tpb2Ni
KCZraW9jYiwgZmlscCk7DQo+Pj4gKwlraW9jYi5raV9wb3MgPSBmaWxlX29mZnNldDsNCj4+PiAr
CWlmIChkaXJlY3RfaW8pDQo+Pj4gKwkJa2lvY2Iua2lfZmxhZ3MgfD0gSU9DQl9ESVJFQ1Q7DQo+
Pj4gKw0KPj4+ICsJd2hpbGUgKGtpb2NiLmtpX3BvcyA8IGZpbGVfb2Zmc2V0ICsgbGVuKSB7DQo+
Pj4gKwkJaWYgKGlzX3JlYWQpDQo+Pj4gKwkJCXJldCA9IHZmc19pb2NiX2l0ZXJfcmVhZChmaWxw
LCAma2lvY2IsICZpdGVyKTsNCj4+PiArCQllbHNlDQo+Pj4gKwkJCXJldCA9IHZmc19pb2NiX2l0
ZXJfd3JpdGUoZmlscCwgJmtpb2NiLCAmaXRlcik7DQo+Pj4gKwkJaWYgKHJldCA8PSAwKQ0KPj4+
ICsJCQlicmVhazsNCj4+PiArCX0NCj4+PiArDQo+Pj4gKwlrdmZyZWUoYnZlYyk7DQo+Pj4gKwly
ZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBpbnQg
c3lzdGVtX2hlYXBfZG1hX2J1Zl9yd19maWxlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+Pj4g
KwkJCXN0cnVjdCBkbWFfYnVmX3J3X2ZpbGUgKmJhY2spDQo+Pj4gK3sNCj4+PiArCXN0cnVjdCBz
eXN0ZW1faGVhcF9idWZmZXIgKmJ1ZmZlciA9IGRtYWJ1Zi0+cHJpdjsNCj4+PiArCWludCByZXQg
PSAwOw0KPj4+ICsJX191MzIgb3AgPSBiYWNrLT5mbGFncyAmIERNQV9CVUZfUldfRkxBR1NfT1Bf
TUFTSzsNCj4+PiArCWJvb2wgZGlyZWN0X2lvID0gYmFjay0+ZmxhZ3MgJiBETUFfQlVGX1JXX0ZM
QUdTX0RJUkVDVDsNCj4+PiArCXN0cnVjdCBmaWxlICpmaWxwOw0KPj4+ICsNCj4+PiArCWlmIChv
cCAhPSBETUFfQlVGX1JXX0ZMQUdTX1JFQUQgJiYgb3AgIT0NCj4+IERNQV9CVUZfUldfRkxBR1Nf
V1JJVEUpDQo+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKwlpZiAoZGlyZWN0X2lvKSB7DQo+
Pj4gKwkJaWYgKCFQQUdFX0FMSUdORUQoYmFjay0+ZmlsZV9vZmZzZXQpIHx8DQo+Pj4gKwkJCSFQ
QUdFX0FMSUdORUQoYmFjay0+YnVmX29mZnNldCkgfHwNCj4+PiArCQkJIVBBR0VfQUxJR05FRChi
YWNrLT5idWZfbGVuKSkNCj4+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+PiArCX0NCj4+PiArCWlm
ICghYmFjay0+YnVmX2xlbiB8fCBiYWNrLT5idWZfbGVuID4gZG1hYnVmLT5zaXplIHx8DQo+Pj4g
KwkJYmFjay0+YnVmX29mZnNldCA+PSBkbWFidWYtPnNpemUgfHwNCj4+PiArCQliYWNrLT5idWZf
b2Zmc2V0ICsgYmFjay0+YnVmX2xlbiA+IGRtYWJ1Zi0+c2l6ZSkNCj4+PiArCQlyZXR1cm4gLUVJ
TlZBTDsNCj4+PiArCWlmIChiYWNrLT5maWxlX29mZnNldCArIGJhY2stPmJ1Zl9sZW4gPCBiYWNr
LT5maWxlX29mZnNldCkNCj4+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+PiArDQo+Pj4gKwlmaWxw
ID0gZmdldChiYWNrLT5mZCk7DQo+Pj4gKwlpZiAoIWZpbHApDQo+Pj4gKwkJcmV0dXJuIC1FQkFE
RjsNCj4+PiArDQo+Pj4gKwltdXRleF9sb2NrKCZidWZmZXItPmxvY2spOw0KPj4+ICsJcmV0ID0g
c3lzdGVtX2hlYXBfcndfZmlsZShidWZmZXIsIG9wID09DQo+PiBETUFfQlVGX1JXX0ZMQUdTX1JF
QUQsIGRpcmVjdF9pbywNCj4+PiArCQkJZmlscCwgYmFjay0+ZmlsZV9vZmZzZXQsIGJhY2stPmJ1
Zl9vZmZzZXQsIGJhY2stDQo+Pj4gYnVmX2xlbik7DQo+Pj4gKwltdXRleF91bmxvY2soJmJ1ZmZl
ci0+bG9jayk7DQo+Pj4gKw0KPj4+ICsJZnB1dChmaWxwKTsNCj4+PiArCXJldHVybiByZXQ7DQo+
Pj4gK30NCj4+PiArDQo+Pj4gIHN0YXRpYyB2b2lkIHN5c3RlbV9oZWFwX2RtYV9idWZfcmVsZWFz
ZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKSAgew0KPj4+ICAJc3RydWN0IHN5c3RlbV9oZWFwX2J1
ZmZlciAqYnVmZmVyID0gZG1hYnVmLT5wcml2OyBAQCAtMzA4LDYNCj4+ICs0MjUsNw0KPj4+IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgc3lzdGVtX2hlYXBfYnVmX29wcyA9IHsN
Cj4+PiAgCS5tbWFwID0gc3lzdGVtX2hlYXBfbW1hcCwNCj4+PiAgCS52bWFwID0gc3lzdGVtX2hl
YXBfdm1hcCwNCj4+PiAgCS52dW5tYXAgPSBzeXN0ZW1faGVhcF92dW5tYXAsDQo+Pj4gKwkucndf
ZmlsZSA9IHN5c3RlbV9oZWFwX2RtYV9idWZfcndfZmlsZSwNCj4+PiAgCS5yZWxlYXNlID0gc3lz
dGVtX2hlYXBfZG1hX2J1Zl9yZWxlYXNlLCAgfTsNCj4+Pg0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
