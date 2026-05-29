Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFibBgE2GWrzswgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:45:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2E5FE191
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:45:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9462D4068B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 06:45:19 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011067.outbound.protection.outlook.com [52.101.52.67])
	by lists.linaro.org (Postfix) with ESMTPS id BD8513F8EE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 06:45:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2XCL9Lob;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sCjBHFL4X9L0dFM+sbxFRbKnOmIj7xk5pyAbBGdzLJGz4D+K+LK9DlSHq0OprwqbcicC0VprThlgLeWihY2uil5oXwam/YOISzmMigKUJK5ZK5Z+xdzOSL/RrcQ8kIHtxHpcCESPDk/MFBcw4fMNU7FqouR7TpVydJ47BU5BAXPx53iiKzhO6vzv4Y2wAWsB0FZq43Le/rrz/zlomM7ge7GDmUMWQIxv/wHa0wgsP8zHSD0y+JYcln9/msGXul1jCCM99O6MfjzNlLO1pONWlRG/QdOX9H3kdb46xW8Fa2MU9qEBi6yR9pz2GuWJT3cbV4se+v5Nke6zP+ADAZH8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUpsoj1bpW7q8NG+lOwdTJIuw6iQo+p8cwklpKIbG7c=;
 b=c2giGSB7kIU8mlf+4LSaKjT4J0wkH3dOCb/XJdipQwp8QAUi1SE84MaAoWG0WJn9dcTqrBMhukoAZvSx/8XziZlS9za56w/Moc+OobOEnJO96VVOOw4uMkotKu/dAD9rsgnSBRhBgxlgrT8JHik9cv+hnDvF4OaVbLGjGrX+0PIOGUK7x+FEB8i3fUEhPoPcNwhoajOxlgl1e6VTo5ixhED4ttOUTm4IQDYaRAReH9dPS+eorVhjIzW28JQlbEEs66OFuLZo1jzKftASJ/xD1jcnALJQFdKGwvX8RluFn3UMQPkKP5CDpLtSQT/0iozFqSZiBEmweGFRJq9RYZNvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kUpsoj1bpW7q8NG+lOwdTJIuw6iQo+p8cwklpKIbG7c=;
 b=2XCL9LobTLbmj5+4FBXAP/jH8GtXdoKmq+J6PCk83m/rc+Fd50fKTdFu780l96EvlcKWzzYw8/nyf9ekSt9UqO1PhSQNydDxoUaPL2cyyEEo/P3rPLKa38/rvDMiLXjXQyk9wmawEUrA1i3EsU6HbcwlhBQWqw+0sF5lXulPKFk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB8316.namprd12.prod.outlook.com (2603:10b6:930:7a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 06:45:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 06:45:06 +0000
Message-ID: <bb4d3330-822e-45ae-94f4-65ba0e351f57@amd.com>
Date: Fri, 29 May 2026 08:45:01 +0200
User-Agent: Mozilla Thunderbird
To: w15303746062 <w15303746062@163.com>
References: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
 <20260528132932.1078483-1-w15303746062@163.com>
 <62c256eb-1df4-4633-8040-222895b54f97@amd.com>
 <7bbb8946.9d19.19e6ed958df.Coremail.w15303746062@163.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7bbb8946.9d19.19e6ed958df.Coremail.w15303746062@163.com>
X-ClientProxiedBy: FR4P281CA0047.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cc::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB8316:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a1b7477-68dc-4dc8-b4ba-08debd4dd1e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|6133799003|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 
	m9Uh5bKJohjIrTCAgZ+e2mfflx1+ivgwx6bHHdGfGP6ZYxMLq6P0riHNDWwPRPlrQoB3XUpfsPvxhYyFvWFknnVPoj0WhHSABwr/1WKB3XVQnNpaQr1ffTAGej2di18c0CQEX5z8jFri6IFppt3bUITKCE0bG6xXyWeX9+tZU6ih6UNgHxa/DwsyBE+/Z4uGRtbqN1RJ+FvIXcL/dHZ6TroiexDdQSBOEvWGzaAnOCxYLvVhrNl7ZxLzRwBha5OhzUcPJGdLplVBM8BYlQ3yrobtfkUPkC1Fjf1NcgzLeT2a9CDpXsgxvnrChDiKoSDKjaYPIK/cDWhAS32k+CEVEUdkE3V9lS6J/gq7P4YPVASqd7FFVGl5ZimK+aPDGWY6wmbd6BoN4Dcay5jeLreQcWN45+qNCg+49hzyDjDPKOR5bia61SDqV0Y/ohXBVX2rvSYVYtNQ5eIVqqx4RSeEJRiUlnR+AB5QriRHhmOsG4T7d+1VRNUuBuj2syZcJQBvXd9F9GHNk2wvquuJfiPwSRv9EPfMGCZUB1cqEF7gt4pDl7c38PzJ1k1On8014SWLC+9dZjVLRc87v1gAMvKEfggi1am3b9luz+WakNaGO28ALekzLnwMe4H4mGbj8t40x3uJYqqzVab//B57KEGwzmeBovmEtoME5BDjxBjhGcf1M009cjfoo3hD1vxzlnWtmbeN/ZT5Z82iSvAItJSw4w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(6133799003)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VkRSNk16eWhQVEo4MjF0aWJHUURQdnp1OTZGblBXS3VxZ1FzNXhSMUdLelcv?=
 =?utf-8?B?cUlNNTFqUWxpRm9iOXErNTZIdkQ5ODZxSlF5THlqd3VybWMvcjloalRoQ3Jy?=
 =?utf-8?B?V0RXazNIQVhQVzg2THlpM0hnQVp6enhiVk1LOVRJcjhRNXNSdlRGU2gwUzZl?=
 =?utf-8?B?YThZQjhFUDFpZVFtekNSNXVVZWFFVFh6UVQyeUxrMTZGUlg3S0hvOG9udE9p?=
 =?utf-8?B?bkVCL1ZJL0JiczFuOGZ1ZmRIUjc2MU1WTjlWeTRFemNOWEV6SE9vcmZsY1Z6?=
 =?utf-8?B?UVAxWlBnc3NUdHhjbnNrejdJdUg2SUVET2VIaTBNbDgwRnBjWCtCK2htaTMz?=
 =?utf-8?B?SldWMXB5RktEZkk4ZG9mTlhtcDgyZVJNdm1oZHRyQ1BPUDAvRnVlRE1xbXRR?=
 =?utf-8?B?Uk9BL05lM3ZxZk82RHRNM2VaSVBBNUZSb2E0M2pydFFoQU1KcXcrUFZKQWVK?=
 =?utf-8?B?OVpwdFlxNHUxQVVKU3FjSksrRHFBSmlTTk5PYWFCZDlHNkJpc1ZrQ3J4ZU0x?=
 =?utf-8?B?eWN3Q091cE1Qb3V0U1F2NDNybnhRNFhzQU8zNTJTMnNOczc3SFNIYnQycm1M?=
 =?utf-8?B?blErNEMzTW5HY2RmRDNpdGlDRnZSejcrRGFDemp5aytweGh0THBuNTZxSWJX?=
 =?utf-8?B?cldmc2lINUlnOUxtQUgydHV0ejRFWDlUc2xJRXZFNExFclcwcmlpWXpzWHRa?=
 =?utf-8?B?RzVkNHZteGVuNlNDWENreXBzV3RjTVBEbVpUOWJSNlpBRlRtdm5HUGY0aUpP?=
 =?utf-8?B?ZW5QaS92dXlvTXN2SU5NaTk5UUdUM2NSSU1EYmRVMU5NanptL0p2WDZ0MXlw?=
 =?utf-8?B?QlVXMm9UVU9hcnlWTm43WDZJdFlrTHp4YkJpU0xZeUhYZXFld0pUSzQ1WUls?=
 =?utf-8?B?M2Y2VjdUdE8yN05VdGwwbGRVTktsSVhYMUkxUFBJTm9HNGdYK0Ftd0RZTVJw?=
 =?utf-8?B?cWJnYmdSWWJpOUVXR0JYdDRRMi95VFBHV1RYM0ViS0V3clY2b1lXdGovWjVG?=
 =?utf-8?B?OS9wQzh5QzUwYWdDTHVWbEwrNjEwZEVvOXdFK1J3VjJGRHRGcm9GU3BUWUxn?=
 =?utf-8?B?R0xpV012S0xyaXkrK1dpb2VUNk9MMXphZ3AxSWZoajh4R1JXZ1NndFJWQUlD?=
 =?utf-8?B?MEw2MndqeTZOaCtRN3lDbDI0SEozbGJjVEwwUnplSTJHR3RyWnJLNmdFQkMw?=
 =?utf-8?B?bTFxcy91RVZKSzFoT29zZU13cEt5bDV0ck5BU3NzTnpPdjg1UGk5YmxjeGlW?=
 =?utf-8?B?N0lqWi9jcy82aEtFdVRCT0x5Z2N1Z0lpdUpQZnUrUnBUTmFiRzR1QWZoU3F5?=
 =?utf-8?B?K2djV2dhUXZKaStHSFZCUXNQR2VKdW40R28vaDE4ZzBvNEFLUGU2THVBd2NT?=
 =?utf-8?B?SWdvK3E1cnBoT2FWNkgvc1VOK1Fycm1qWXlnNjkzZnY5QTFlN2ZGK1lGOEY2?=
 =?utf-8?B?MWljOGg2amdZeEpZVjVKZ3Y5N1hsR1VON1BxM3VOaHlJR3NBclVsTXIraEV2?=
 =?utf-8?B?UDRzY2V1Ly9udnllNVo4MjVSS0FabjJkNU5LYjJ2cHFpV1hiNXlVbmpnZzNn?=
 =?utf-8?B?VG44YlN1cjNUUnN4S281N3U5OGZKdldTeGVVYVMrYnF0YkM5dE5QYWlUbmJB?=
 =?utf-8?B?SDFyajdacVFnVmhpTmY1NXU4enJDbER1QVNUQ1FSQzBuS1E3R2NqbFdpY0hJ?=
 =?utf-8?B?MkZ1MGFuRmZWQ0QzaTluWk5VUEJnZmU5Tm5GNkx6Ri91ZjRIT1RYYXZFTWNK?=
 =?utf-8?B?RjM2RXVRa1FDYWNCTkxNclV6aWNxd3VaTlM0NDZtVG1qbzN6ZmZGUTlYMHpK?=
 =?utf-8?B?c01OWWNYVXc4RWo3LzhXZTh0Wlh2dFh1REZnWDBnNGZ0T2RYNjMyM2pUbWhp?=
 =?utf-8?B?MnAwRkt2ZkZvbFFFOWxKdys4UVFNbGFWNmc3WnZ6TkdNMzVkL0lsRkJyQlRz?=
 =?utf-8?B?WnVIR25Tdk16dlpJTlFRbThEekQzY1EweGNLRHVtQWx5UTBxeC8wRnVHOUJh?=
 =?utf-8?B?WERtcmFZY2FzeUc5anIwL0NxSCtHUVBkQzcwL0tlSVgyMTB4NUtaWDAzZ1hG?=
 =?utf-8?B?Uit3ZTYrUnB4OWtRUlBDSGpSdXVXNU9LbVd0YU1YeGhQdml6dGVqL1I1ejRw?=
 =?utf-8?B?L2NtQWM0eWx5aHJCODR2b3VJZHh4Rk1GOThHVW5aLy84TlhYZGExWXRoYTdW?=
 =?utf-8?B?Y1IvOWlrY2c2Z08yd3p1VjM2TGdBbjFsellQYmUvMllwZkg2WTJuTXVaQVVU?=
 =?utf-8?B?Qjh2R24zRE0ySi8yR1dUQzc5OFkycGt5cEtqbUw5M01laml6OUFrbTI0Tm5r?=
 =?utf-8?Q?APmkVO3/ovMEfRqVf6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a1b7477-68dc-4dc8-b4ba-08debd4dd1e2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 06:45:06.7514
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: apdb3CctwC3UYDEjbmAkEr+JVSzdQLNJnn8nXVqRFSqBcZLLpHb+oJTfU8GEvV78
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8316
X-Spamd-Bar: ----
Message-ID-Hash: OCGGV5JLKCVNJOOMZD3IIEEFYFDNEOOU
X-Message-ID-Hash: OCGGV5JLKCVNJOOMZD3IIEEFYFDNEOOU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/prime: fix dangling dmabuf entries after handle release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OCGGV5JLKCVNJOOMZD3IIEEFYFDNEOOU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[163.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,rock-chips.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,stu.xidian.edu.cn];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.050];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 8CD2E5FE191
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgTWluZ3l1LA0KDQpPbiA1LzI4LzI2IDE1OjQ5LCB3MTUzMDM3NDYwNjIgd3JvdGU6DQo+IEhp
IENocmlzdGlhbiwNCj4gDQo+IFRoYW5rIHlvdSBmb3IgaW5zaXN0aW5nIG9uIHRoaXMuIEkndmUg
bm93IGdvbmUgdGhyb3VnaCBhbGwgY2FsbGVycw0KPiBvZiBkcm1fcHJpbWVfYWRkX2J1Zl9oYW5k
bGUoKSBpbiBkcm1fcHJpbWUuYy4NCj4gDQo+IFlvdSBhcmUgYWJzb2x1dGVseSByaWdodDogYm90
aCBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSgpIGFuZA0KPiBkcm1fZ2VtX3ByaW1lX2hhbmRs
ZV90b19kbWFidWYoKSBwZXJmb3JtIHRoZSBsb29rdXAgdW5kZXINCj4gcHJpbWVfZnByaXYtPmxv
Y2sgYmVmb3JlIGFkZGluZywgc28gYSBkdXBsaWNhdGUgaGFuZGxlIHNob3VsZCBpbmRlZWQNCj4g
bmV2ZXIgYmUgaW5zZXJ0ZWQgdGhyb3VnaCB0aG9zZSBwYXRocy4NCj4gDQo+IFRoYXQgc2FpZCwg
dGhlIHN5emthbGxlciByZXBvcnQgY2xlYXJseSBzaG93cyB0aGF0IHRoZSBkbWFidWZzIHRyZWUN
Cj4gaXMgbm90IGVtcHR5IHdoZW4gZHJtX3ByaW1lX2Rlc3Ryb3lfZmlsZV9wcml2YXRlKCkgcnVu
cywgd2hpY2ggbWVhbnMNCj4gc29tZSBlbnRyeSB3YXNuJ3QgcmVtb3ZlZC4gR2l2ZW4gdGhhdCB0
aGUgbm9ybWFsIGFkZC9yZW1vdmUgcGF0aHMNCj4gYXBwZWFyIGNvcnJlY3QsIHRoZSB0cmlnZ2Vy
IG1pZ2h0IGJlIHNvbWV0aGluZyBtb3JlIHN1YnRsZSDigJQgcGVyaGFwcw0KPiBhIGRyaXZlci1z
cGVjaWZpYyBjYWxsYmFjayB0aGF0IGJ5cGFzc2VzIHRoZSBnZW5lcmljIGhlbHBlcnMsIG9yIGFu
DQo+IGVycm9yIHBhdGggdGhhdCBsZWF2ZXMgYW4gb3JwaGFuIGluIHRoZSBkbWFidWZzIHRyZWUu
IEkgaGF2ZW4ndCBiZWVuDQo+IGFibGUgdG8gaWRlbnRpZnkgdGhlIGV4YWN0IHRyaWdnZXIgeWV0
Lg0KPiANCj4gVGhlIHByb3Bvc2VkIGNoYW5nZSB0byBkcm1fcHJpbWVfcmVtb3ZlX2J1Zl9oYW5k
bGUoKSAocmVzdGFydCBzZWFyY2gNCj4gaW5zdGVhZCBvZiBicmVhaykgaXMgaW50ZW5kZWQgYXMg
YSBzbWFsbCByb2J1c3RuZXNzIGltcHJvdmVtZW50LCBub3QNCj4gYSBmaXggZm9yIGEgY29uZmly
bWVkIHJhY2UuIEluIHRoZSBub3JtYWwgY2FzZSBpdCB3aWxsIHN0aWxsIGV4ZWN1dGUNCj4gb25s
eSBvbmNlLCBidXQgaWYgdGhlIHRyZWVzIGV2ZXIgYmVjb21lIGluY29uc2lzdGVudCBmb3IgYW55
IHJlYXNvbiwNCj4gaXQgd2lsbCBjbGVhbiB1cCBhbGwgZW50cmllcyBmb3IgdGhlIGdpdmVuIGhh
bmRsZSBhbmQgcHJldmVudCB0aGUNCj4gV0FSTklORy4NCj4gDQo+IFdvdWxkIHlvdSBiZSBva2F5
IHdpdGggc3VjaCBhIGRlZmVuc2l2ZSBhcHByb2FjaCwgb3Igd291bGQgeW91IHByZWZlcg0KPiB0
aGF0IHdlIGZpcnN0IHRyYWNrIGRvd24gdGhlIHByZWNpc2UgdHJpZ2dlciAoZS5nLiB3aXRoIGFk
ZGl0aW9uYWwNCj4gV0FSTnMgb3IgdHJhY2luZyk/DQoNCkkgZG9uJ3QgdGhpbmsgc28uIEFzIGZh
ciBhcyBJIGNhbiBzZWUgdGhpcyBpcyBub3QgYSByb2J1c3RuZXNzIGltcHJvdmVtZW50IGJ1dCBq
dXN0IHBhcGVyaW5nIG92ZXIgYW4gaXNzdWUuDQoNCkxlYWtpbmcgbWVtb3J5IGlzIHVzdWFsbHkg
b25seSBhIHZlcnkgbWlub3IgcHJvYmxlbSwgdGhpbmdzIGxpa2UgdXNlIGFmdGVyIGZyZWUgb3Ig
cmFuZG9tIG1lbW9yeSBjb3JydXB0aW9uIGlzIG11Y2ggbW9yZSB3b3JzZS4NCg0KQW5kIHN1Y2gg
dGhpbmdzIGlzIGV4YWN0bHkgd2hhdCBzdGFydHMgdG8gaGFwcGVucyB3aGVuIHlvdSBzdGFydCBw
YXBlcmluZyBvdmVyIGlzc3Vlcy4NCg0KU28gSSB3b3VsZCBzYXkgZmluZCB0aGUgcm9vdCBjYXVz
ZSBvZiB3aGF0IGlzIGdvaW5nIG9uIGhlcmUsIHlvdSBoYXZlIGNlcnRhaW5seSBzdHVtYmxlZCBv
dmVyIHNvbWV0aGluZywgYW5kIHRoZW4gd2UgY2FuIGxvb2sgaW50byBob3cgdG8gZml4IHRoYXQu
DQoNCkJ1dCBqdXN0IHNlbmRpbmcgb3V0IHJhbmRvbSBwYXRjaGVzIHdoZXJlIGEgYml0IG9mIHNp
bXBsZSBjb2RlIHJlYWRpbmcgY2FuIHByb3ZlIHRoZW0gaW5jb3JyZWN0IGlzIG5vdCByZWFsbHkg
aGVscGZ1bC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtzLA0KPiBNaW5n
eXUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
