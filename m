Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC0DBA9FB2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 18:14:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D001742525
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 16:14:03 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010009.outbound.protection.outlook.com [40.93.198.9])
	by lists.linaro.org (Postfix) with ESMTPS id D98D942525
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 16:14:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=MVpTUGrt;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.198.9 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u87Uu2JrJs/FvBuMDBdvZbIKLHKOJHtRL+Buh81i4ChuJQA5EnsN6z6YAVOL+JcuBdQOmJIx8kpML4CJVNKq+eOdAgpRE4xsOyWZFU9sqXcMB7XFb/vw6uPhGfaHPKIEQKt59oWbz1yoGKsotUe4Bw111yguxWmEGxzvQWzxp0xn8bt6dE97M0a858/rOjDCGa0czaK+S2Xf1oo1e8A5JbuVMHqE+tSEpxenO+ZevKoqFZ5jmY6h3BGRchLe9aRHr/iUrUVbnfyMqlY+OLqd3/mD5ziBWXz+ermPFGv0C2py2/FTu0shQYQ+XoHG1nzxwzqyATp0ygohybsqjuqAyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18RJEXJ4a6ZPDWTTE+pfFHkepZNKaD5XGMviYITNCJY=;
 b=DMOgMPrP14cJTyTZK5OpDR9JyZzqQCsa95Mek/FoH0SKRWSfwsF/XKowl6M1tyLxBaSGHMNRKVUXqLXY0uFyIYct+Hsi1pfD6K943vM3Je+L8JwlljOtHUDE3gfR87DbmU/shvAfRRLxTU/ibJX0F8xVxHIiSpqM8ICFZLAY41Ned96I2kQG9ndfWed+P9amAoiKwJZgom0zhk2e49PQOUAXsvhC6+M3Om1zy53crBS17DLIkOK7l5uLtkkP/8ivP7uPKAbNa0AHSMZRF9k4wM2APfLkTJz0/SPEpsAWoA8xgaKoD/ov79KXnD8UshK9HsT30E2cO1zAnJIBC0HT9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=18RJEXJ4a6ZPDWTTE+pfFHkepZNKaD5XGMviYITNCJY=;
 b=MVpTUGrtiykxp9AJWPeNc2DwMA8P8aOrJyiAhnE+/2EimvAUKHBFb77gD2RwTSml2iRAHZnJYCv9G4Qk3BNko3LyOXu9JYsmp0AQer3ZsInc6a21I0FXSH9Fqa3XZUhItdqHdBaUuWwrn7hx8cusJ39N2zki9k2CRKPbQTfJK10Um0meN8H76+wylELAe5GU5upM78LM15btdWGxkSqVpzToxsNGrM5gwSTXk1pj4K68O3vgaipxTroZEEsuHUXGMX7ZbVBNRsP60nhahUVYdn6gUkDN8HWbL157nnFcAFCIFlX9ualo0YXhpZFlOM/q8p8TN5Fs+6a9u6jozwjkOg==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by MN2PR12MB4319.namprd12.prod.outlook.com (2603:10b6:208:1dc::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 16:13:56 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 16:13:56 +0000
Date: Mon, 29 Sep 2025 13:13:54 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20250929161354.GA2942991@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
 <20250926160036.GE2617119@nvidia.com>
 <f33a4344-545a-43f4-9a3b-24bf070d559c@amd.com>
 <20250929124535.GI2617119@nvidia.com>
 <071c1bedd6fd902da9725c74c1b892c9fe76179c.camel@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <071c1bedd6fd902da9725c74c1b892c9fe76179c.camel@linux.intel.com>
X-ClientProxiedBy: BYAPR01CA0060.prod.exchangelabs.com (2603:10b6:a03:94::37)
 To PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|MN2PR12MB4319:EE_
X-MS-Office365-Filtering-Correlation-Id: 9399a497-597c-4a60-4091-08ddff7330b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YkNxR3VqU2Q4b3Y0RVJuNTlHeG01Z3RrdnVpRkRBTW1QZjFna1lLTkdobzl4?=
 =?utf-8?B?V1diVDdNVW9mTnEzenBOYVhhdDZHM0twb2FtbVlyOHZMdHBUUzh6ZGJUc3Zv?=
 =?utf-8?B?YXNzMW44SWVocGNwZjNRVks5amkvcFBVNTF3c1lSZWluSXZ6d25aR1h3Vmhx?=
 =?utf-8?B?MVV0QTcxYm0wcUxHdzJnZDNEQ281N2dQQ3g2SkdDYk8wbnJENW83ZjFjNEFo?=
 =?utf-8?B?NDFpc0FvaVRKVlhYQzluQ0oyT1NkZEhhZDJqaExLVVFrWG1JcXhpdzdUeWc2?=
 =?utf-8?B?c205VFovR0tEdjZtZ2h0VTJTZ0dJSjZETmVQWlZVbVZCZE4wM0hDSDB6aExW?=
 =?utf-8?B?VnJLeWVwRkE1eSswdTZkV3hLbkJCeWlXcHVZTlY4WWJzRjYrOHBQK25jUjRM?=
 =?utf-8?B?YkRQZTdmL0diREIxY0pUL1pGZUZYZnk4QndlQmxDcjFCN29xK3BQeGR0MVV4?=
 =?utf-8?B?NUxHLzBYSHhadGd1WWpiNE1SOW5VZU50T09QRC9Obm1ITEZjU1JjU2lWcU52?=
 =?utf-8?B?WVlFTnVsMmF1NWVtRkJNakVaNlB4aU5FbzJHemVSY0xSZnBZMng2MzBXSGJP?=
 =?utf-8?B?NERJVHF4NFRwZ0pDbVNOQ1B1dnJESklRcHEvVG1mSVBJWjBWOGVzbnBLMFhZ?=
 =?utf-8?B?SGpWZ0hHblVrMHNSRzM3QUZzSnlJR2ZhclpXZ29DOHd5QlVzdjZCRWtWMVZJ?=
 =?utf-8?B?T2Z1V0NrZkxZTjlyeE1reVVSZDFkNlZHb0g4QXY5K0JRMTBUek0vcE9xTk1l?=
 =?utf-8?B?dXB6bGQ1Q016WFBESlVRamJ0di9QTS9NcjF2cWhFdFY5V05kcG81bkRZcS9r?=
 =?utf-8?B?K1FmaDUwUnhFSitQc0wyWHF0VklLVG9Rak9DaW0yTU9ENmsvOW9yRTROTVhj?=
 =?utf-8?B?QnZEZndyK2NONXA5VjNNYTkxNGtkTGFLNjl0dXRIRW9pMFRvaXY5ZitHUHYy?=
 =?utf-8?B?NGNtWVZEeFIwYlJ1bFZMRTBIa3M5TU1kV0Y4ci9ORXg1bHFpTk5VUFhsYXA3?=
 =?utf-8?B?VU8zaDY3SnFuNk1EMzhRNmVmclFqdmR0OTFsN2wyL1I1TUZBR0hqcFluQUdH?=
 =?utf-8?B?SElJamVZa0dlVGl0UlhLZ3NzWHFWSUJpbjIrWFowTitQR29FUDJkeWVyR2Mz?=
 =?utf-8?B?ZklHajU3d0FUeTVrZUVVS0JWQWNXSHlDNDdBeDZyem4xUUVjaFJEa3dXUU0r?=
 =?utf-8?B?d0hWbEJFaGQ4b09wMVcwU2tpMms1STZpTklOTzhadDJ6Tjg4dXEyNll1ekhs?=
 =?utf-8?B?eUtyZVdJQmNHNGh4TGJ2Um9wTHhEdWZQRzNkbnp6YkNZMjE1b0w1QlFUbXBV?=
 =?utf-8?B?cmlYTmcydVNjOEJvd0l6eFNPdE9kNml5cFRsTS9kZHM3SEthSzNBOFJQendM?=
 =?utf-8?B?Z2V4NmgwU2xHbXBnYWxucTVqRzJ2MFZTbHBaaWlKTHp2WHg3cEVRbG9jTDFu?=
 =?utf-8?B?eFd0N1N5ekF0bkNQenFtU3dBYnU0WXlJcDh6YWZmQVRoZWF6ekV3aXJRWUJy?=
 =?utf-8?B?RzRjaUgwZEtMOENqSTEvV2M3QXZNL1dKQUZPSHFBYmxndThnRXdZeHBMaXZP?=
 =?utf-8?B?TjQrVVhRUnNNNGdENnNEREtsOTNGKzFXMTJZRVVXQTZ1bWdWZksrN3VnbjhS?=
 =?utf-8?B?YlF0Qy93V3JuWWpmaUtFUndUU001UUNVNXQyZEVsUktwUUNtd01SNWJLUHpz?=
 =?utf-8?B?SUppSDQ5MUpxMHNIaERYbmpBeGJXdzV4SndKNldEVDd0Qk53TFJuZGxxa2xh?=
 =?utf-8?B?NnlQaCtsd3ZWcmlndkk0RXM0TkMxMlFpdG5TQ1hOV2hUUXBPUUJXa0IwNDln?=
 =?utf-8?B?UHNhbDduZkl1aVo4OExWaERhR0dkMTRIMEw5c2lNY2E0bGZLbXVNUEpOandy?=
 =?utf-8?B?VXI5WGIyRm5GUUhQc25idXpYMnptYnhmdSsxaXNWRDlVbEdaYnRMRTUrWmZq?=
 =?utf-8?Q?Vh43Ww+iqqyA7QO6510bcYVXlRbE++bj?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RmEwNmJxYXErRlpUVTM0UFdlWnJScmp3ZG9tUUdLQWYzeVdFYnNJcithMCtY?=
 =?utf-8?B?MHdUcjBTUit6eGw4ZzhlbFd0Znd6S3k3UFMrYS9hci9jRk9nV1o1REdvdFcx?=
 =?utf-8?B?WEN3eDJ3Y3FYQzdWQlUyTVVzZG1RMVlvd0x5OUU4Q09KMWhCNWRWU0lsdzB3?=
 =?utf-8?B?ZzNuRCt2S3VXZ2dYanBabkRBQXZ2NGV4Y21KTWpFN0xBNzZZUjVSZ2xOT210?=
 =?utf-8?B?Qzg0NGh4V3dyOTE1ejdMVVdvME1oZEIwdytMeks1Y1BoR3hzemxpTFpXVVdz?=
 =?utf-8?B?THh5QVd5bkw4ZFpCbWFZRlJGbWxsakF2YzFtUGFWOEx3ZUlkRFBlU2QyYWxK?=
 =?utf-8?B?cGxXNk5vbk95bEhnREIza0dxb1lkczBselMvVUhvT1hPTEgzanVqaGpmN2Vk?=
 =?utf-8?B?VkR5aXZWVGVkK1BFQ2RFTXZlVmJaZzRqNFYwdFhUakVVOEZYUDlGQVZZZzQ1?=
 =?utf-8?B?TDFSMlk4NWJSTHAxdGRKcXNGc0pJVk1aU1BXTllhQkFHTGVDbkRTUm1RREpZ?=
 =?utf-8?B?VkpyY0JSeGhKNXhMVXpLTGNSZkRxY1IrdVhmeEcrTG9UbytkekNVMXEveEk4?=
 =?utf-8?B?eXgxeDFBcit6d2RHczhUVmJrc2tpdVUvWllNL05WTnlEaTZLVUtyRkxndC9y?=
 =?utf-8?B?K1d0dUE0TTY4dnl2SjZWT2piSW1qMS9lOHEzaG5VdlNCMnJhSm53a2VXK3U3?=
 =?utf-8?B?Q21vaTErVVJjOGRTeThJTitNNDduWDRuQ1FsWTlxYVpxRGhwUEFhZndrWWNO?=
 =?utf-8?B?ZEdQeSt0dG84dVo2UFh4V0FlQ0pNR1lxNkNCdjh4a0ZwMnhzNVBYSHF5emVL?=
 =?utf-8?B?bkhBeFE0UXRZUGFZVmUwREd6SG0rWHRhcDVpQ3o5TVpDc0pxZ1Vsd2FoMWwz?=
 =?utf-8?B?R080RmlvT3hzNDJNcXF3Y1BDeHl5dWJ4S25TaWpTQ0F3OWRxbTdOYkRKWHpW?=
 =?utf-8?B?OVNPOTB2YzBSVU9qaXpMamxwM0J4Uk1pb0JaMWV4MTJTbCs0Y1h3RHAyeVlH?=
 =?utf-8?B?NVdoWVpmSmdRVy9Bc1AyL1poUGVpdUJhL0NkNzU2c25YM3N5SFo3QlhSTndn?=
 =?utf-8?B?VUg0cXVkTHgvNEhyc29IQTJhWDNRL0swY1hCWnRJMlQ1NWwyRVV6aEM5Y0M2?=
 =?utf-8?B?UWs1M2JzR3kraUJ0T2ZrcE1TWGRWZWpBa1ZCYUlmZlZLV0oxRHR2ck5xZ2hl?=
 =?utf-8?B?a2NwMGJlb3FDZVQyRDREWElVOFJ6bzdCVGxTZTRtQlpTemZmRFd4RU1IMTVT?=
 =?utf-8?B?Vk0rOC84Q0M3bTBZREZYUjRtTHBKRmdESWpwWTZ2bStYdEsyNUlGZVBGQjl3?=
 =?utf-8?B?bEQxaXZ2bTZ2U0JzcUN2YnpwMFNMWENkeWs4N3ZCVjAyWXgxSmhIemtmam9N?=
 =?utf-8?B?bU4rTlU4R1Q1MzcvY3VGcUFacXYvcGFlUWVBYktDbzBhTSt2LzR0UGlDVkdC?=
 =?utf-8?B?ZWtNNVdaYWxTNGN5K2FXdC9kQ3NweERFOWt0Q29ySjUzY1pSS0Y5V29FWlVm?=
 =?utf-8?B?c05oVTI4NjVCN0NDWDdqK0ZCYmIwM3JHK0NlVmZ0TE1GcHBzQVMxWmVFQ2N6?=
 =?utf-8?B?dWU4aDRuY3VXOEZrYStBQTNWdnpIU2MrMER1SFBRWTdsYS9LZzVJZzZ0R2wr?=
 =?utf-8?B?TjZDYzRReWhBNEdZWFYxdHJWblNoV0xXSFFJZ3B2alg1dmJLKzkzbXJ4cEZ0?=
 =?utf-8?B?VWV3M2tkRjgvNzF0S2dmc09nbW5JU2xMdFBOMS90Q2I2RlZldDExelZqbVZn?=
 =?utf-8?B?TFo1Z3dqM3pXNXk5QmJBbDVZMWtNZHFERElEdG1IM0d4LzlSOVJWNkFHTm0r?=
 =?utf-8?B?ODFSa25abDQyUXZhYVBXRmU1YmdaMHBYL1huREpTSlRtb28zM2V1WWZQNUI1?=
 =?utf-8?B?azAvNVp6OWcrYUFLazVWZ0NSdm9DS25KWldFWFhNNmMzNlpGbHVMQXRaMk9L?=
 =?utf-8?B?S28vOUFIcWk4L0l4ZThXVmhVL2hQOWtOOFJZOWY5OEdRMW8wZnoyRFc4dVdr?=
 =?utf-8?B?N2F6UmVWUlMvVXFqSlA0UzlVZWpnOGZIUlR6a0hJb1NBMzJsY01kWFUvV3VM?=
 =?utf-8?B?TVNtUWFZdDVXc3dNTnBXOXd4bGhLR2IxWnpFaVZuSHFHQlRYN1FuUWx5d3BJ?=
 =?utf-8?Q?BIBYu+8Ug5ZO6AkkI396l5E9y?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9399a497-597c-4a60-4091-08ddff7330b2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 16:13:56.0955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IYY2phBCEIw1SOpZKIYofjSvnkMN608x7HbNTyM4fnnZiIz9KHk5UkYOyd0XUlqQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4319
X-Rspamd-Queue-Id: D98D942525
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.97 / 15.00];
	BAYES_HAM(-2.97)[99.87%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.9:from];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BB7MRPEVPNEL5KVMJDVELZ2PQ6J2EUAM
X-Message-ID-Hash: BB7MRPEVPNEL5KVMJDVELZ2PQ6J2EUAM
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BB7MRPEVPNEL5KVMJDVELZ2PQ6J2EUAM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjksIDIwMjUgYXQgMDY6MDI6NTBQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+ID4gSSdtIG5vdCB0aGlua2luZyBhYm91dCBsb2FkIGJhbGFuY2luZywgbW9y
ZSBhICdxdWFsaXR5IG9mIHBhdGgnDQo+ID4gbWV0cmljLg0KPiANCj4gVGhpcyBzb3VuZHMgbGlr
ZSBpdCdzIGdldHRpbmcgaW5jcmVhc2luZ2x5IGNvbXBsZXguIFRCSCBJIHRoaW5rIHRoYXQgYXQN
Cj4gbGVhc3QgYWxsIGZhc3QgaW50ZXJjb25uZWN0cyB3ZSBoYXZlIGluIHRoZSBwbGFubmluZyBm
b3IgeGUgZWl0aGVyIGFyZQ0KPiBmaW5lIHdpdGggZmFsbGluZyBiYWNrIHRvIHRoZSBjdXJyZW50
IHBjaWUtcDJwIC8gZG1hLWJ1ZiBvciBpbiB3b3JzdA0KPiBjYXNlIHN5c3RlbSBtZW1vcnkuIA0K
DQpZYWgsIGZhbGxiYWNrIGlzIGZpbmUsIGJ1dCB0aGV5IHdpbGwgc3RpbGwgd2FudCB0byBwcmVm
ZXIgdGhlIGJldHRlcg0KcGF0aHMgaWYgdGhleSBhcmUgYXZhaWxhYmxlLiBUaGF0J3MgbXkgcG9p
bnQuLg0KDQo+IFRoZSB2aXJ0dWFsIGludGVyY29ubmVjdCB3ZSd2ZSBiZWVuIGRpc2N1c3NpbmcN
Cj4gd291bGQgcHJvYmFibHkgbm90IGJlIGFibGUgdG8gZmFsbCBiYWNrIGF0IGFsbCB1bmxlc3Mg
bmVnb3RpYXRpb24gZ2V0cw0KPiBzb21laG93IGZvcndhcmRlZCB0byB0aGUgdm0gZ3Vlc3QuDQoN
ClRoaXMgaXMgYmFzaWNhbGx5IHByb3Bvc2luZyB0byBvcGVuIGNvZGUgYWxsIHRoZSBwcmlvcml0
eSBhbmQgUU9SDQptYXRjaGluZyBpbiB0aGUgZHJpdmVycy4gSSBzdHJvbmdseSB0aGluayB0aGF0
IHdpbGwgYmVjb21lDQp1bm1haW50YWluYWJsZSBpZiB0aGluZ3MgZXZvbHZlIGluIHRoYXQgZGly
ZWN0aW9uLi4NCg0KV2hhdCBJJ20gc3VnZ2VzdGluZyBpcyB0byBoYXZlIGp1c3QgZW5vdWdoIGlu
ZnJhc3RydWN0dXJlIHRoYXQgd2UgY2FuDQpoYXZlIHRoZSBwcmlvcml0eSBzZWxlY3Rpb24gYmUg
aW4gY29tbW9uIGNvZGUgYW5kIGltcGxlbWVudCB0aGUNCnNpbXBsZXN0IHBvc3NpYmxlIHNlbGVj
dGlvbiBmb3IgcmlnaHQgbm93LiBSdW4gZG93biB0aGUgZXhwb3J0cyBsaXN0DQppbiBvcmRlciBh
bmQgdGhlIGZpcnQgaW50ZXJjb25uZWN0IHRvIG1hdGNoIHRoZSBpbXBvcnRlcidzIGxpc3QgaXMN
CnNlbGVjdGVkLg0KDQpBbGwgdGhlIG1vcmUgZmFuY3kgc3R1ZmYgSSd2ZSBtZW50aW9uZWQgaXMg
c29tZW9uZSBlbHNlJ3MgcHJvYmxlbSBkb3duDQp0aGUgcm9hZCB0byBlbmhhbmNlIHRoZSBjb3Jl
IG1hdGNoZXIuDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
