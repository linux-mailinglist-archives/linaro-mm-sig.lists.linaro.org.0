Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4356AC51A9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:10:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7EC8455CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 15:10:36 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2088.outbound.protection.outlook.com [40.107.92.88])
	by lists.linaro.org (Postfix) with ESMTPS id EA614443DC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 15:10:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=k1GgL9jp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.88 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hJlplHqIYbKJxd2VKG+GpIaOA+KehSBDR/FAa6BUaGZ1CngiflnZM9Ps//pxdJQAnXUW2j5Za0D+2vNhASMon5L/jAdGP8V9M8CroDJSfUqQIpFHhhxmuuckBCnKZSqv0PDQbFK2/YCuZ6DCRuumfMVLg7qXQAE7mqxQxekY8vwYTm/mLFUPcbHORXlCBAKf4b3IiAH04eU0dj194VIKIs7IySDcZHjWqWZepweogytuncoyvWVnPsV74R4xqVuxOjvhb9LUIccDTyiKkNUlI7l1xhfQAktK3EGd0A5SerNsL4L51uSoliEX8j/jyGStvSdckcUIkmnDsuFrH6GCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YbHN0AssXKaXhGiBtqaJelUl051jRGfmIAzeLo+Z5Bc=;
 b=yNow1i5RngjajFj07DrTnOvwocCAzi3+KQcR1ngD9sU4gdmHGozMQbu2SShGXJfgpbcvG4t6jZmFS8fzqOl2p9hlcLjvUJNlw30iEHZ/VeUXIl0xQc+YwIRy1n/wGNEAzQxeyR7nDdubNHvo/7NpuhBIV/xfuMiwNBH/pbp3X7Ci9ImMYlMVe5DaB7mqDuDzx6XgJnvtsAco/40McPlu+6vEhTnPIt1L+vTfyzHpRIOuBomN/sGQjArycJAwCV/kaV2Hnh4q+fmbAjurIZAZbb882S720pb4M5GEzPX2qVy0mNUdqHjP2iXJFmZDTIcn0r/QKqELNKf1ZEfxRaj36g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbHN0AssXKaXhGiBtqaJelUl051jRGfmIAzeLo+Z5Bc=;
 b=k1GgL9jpLB4SBYD1mVdSXqFsnZp2JwWNjUurgYXk1sMA+ntCm9z2SD2JpfY4NvzkUpYJSc+C5i3ncOSj3dm6EIhW+2rgQssQeU3lEENHCOGU/J/B8aAzzd0uZBO18+eo2wdjXdh6/qcPIl9yGprLEYlq5XSNwuzsKaDwiIXqR7A=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7273.namprd12.prod.outlook.com (2603:10b6:806:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Tue, 27 May
 2025 15:10:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 27 May 2025
 15:10:23 +0000
Message-ID: <48ea826a-54fe-4df0-bff9-18ae29117f57@amd.com>
Date: Tue, 27 May 2025 17:10:14 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
 <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
 <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
 <50092362-4644-4e47-9c63-fc82ba24e516@amd.com>
 <2755aae2f1674b239569bf1acad765dc@honor.com>
 <2487bad4-81d6-4ea2-96a7-a6ac741c9d9c@amd.com>
 <a3f57102bc6e4588bc7659485feadbc1@honor.com>
 <5c11b50c-2e36-4fd5-943c-086f55adffa8@amd.com>
 <CABdmKX30c_5N34FYMre6Qx5LLLWicsi_XdUdu0QtsOmQ=RcYxQ@mail.gmail.com>
 <375f6aac8c2f4b84814251c5025ae6eb@honor.com>
 <38aa6cf19ce245578264aaa9062aa6dd@honor.com>
 <CABdmKX0nAYDdgq-PHv0HxucfYQzvvTAJjVCo7nQ0UtjwcF02aQ@mail.gmail.com>
 <7198873a044143c7be12f727b469649b@honor.com>
 <fdd7a11b-140c-40bd-a1c1-334d69256b92@amd.com>
 <e61fcdbf71ba4f9dbfef2f521d1b2fc1@honor.com>
 <d786ff9f-9bf0-42e1-987f-f2091fd90279@amd.com>
 <068cca07bc5a4e68be5355c884843b8a@honor.com>
 <4a53b6bf-9273-4e77-9882-644faafa200a@amd.com>
 <d7b506bd3be242d290b57449c353c07a@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <d7b506bd3be242d290b57449c353c07a@honor.com>
X-ClientProxiedBy: BL0PR02CA0127.namprd02.prod.outlook.com
 (2603:10b6:208:35::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7273:EE_
X-MS-Office365-Filtering-Correlation-Id: e6fcf68a-e153-4865-4180-08dd9d309a65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YVlyMEtDMG5STURuUDRKZGlGeGw5TldBRzFIMXpkbllheXZkcitObEpNR3Ez?=
 =?utf-8?B?b08yOTRqUnBJdGd6QVhpYUJpUS9WejBZQWxrUmJGR3ZHZ1N5VzRFUXQ2dCti?=
 =?utf-8?B?cFZDMmQ0V2d6N3JYM3R2ZGc1WGM3QUNlY2ljVkZJNFNsNHRDNTJCSFk5U3NC?=
 =?utf-8?B?YVBVYXJLLzJaVUFmblR5SWcvL04vdmNrek5Pc0tyS1J6L0VjSTJuMTdKWGZy?=
 =?utf-8?B?UXZ6Nnh4dm5uN2IrNWxpT29pT0F3TXUxaU5xNURweC92NnBpYnNva2xQR09Z?=
 =?utf-8?B?TEpYbjJMYmlZSEt2aDF0TFVPc0NZUm00UllFdEkvWm9Ick1vc3RuS05KNFdq?=
 =?utf-8?B?Nll3WURDSUo5VDNzMFh6NXNuQ1R5N1RqNC9reTN2YVBCTE4vc0NwWDA0dS9r?=
 =?utf-8?B?VHg2QnVIYUkwOEU0MGxQR3htQjVFUHJOU25haVI2dlBVdTlCbXo4VUhzZlUz?=
 =?utf-8?B?UDlnYUREVUxJd0ZmWlRNOWxOb0VUVUI0U05HNGZZQVIzcDNBODRDQktaMHRL?=
 =?utf-8?B?aXpsTktTZGZoNFdwVVJzNXpvOWM0ZzhKdVBSK1ZrNk1TZjkrVnJKdGR6WGF5?=
 =?utf-8?B?UDYrclhscGY2WlBmVnJvTHlKS016VDd6dDlsMUNNNmRtVGUvQUZ4VTg3VWo0?=
 =?utf-8?B?K3BhZEZRSzVEZzBmRGtST1FXRDFSVEZVbFNGM0VsbkJwS3pqZmp2Z1BRZmFV?=
 =?utf-8?B?VlpNeE9iZUpBNk5GckUvd1AyaUlGdmZhUnBWZUJZdmhJT1RkQzdFeWVqTmoy?=
 =?utf-8?B?cE5sZDlFNzdMYWQvWHl1VVNsSjdmbUZ4Y0JjemtFY2Vrb1RSSFJnVVpodnc2?=
 =?utf-8?B?cUljcWtCYy8rQ1RnTjZ4QzQ2WG9ScTV2T3JVb1B0ZGJVOVcvcHJaM29Tb3g0?=
 =?utf-8?B?T3lvOWxxWi80VkdubzY1RytFVnEzQ0dXbytrYkNqemVPNm9GdlJjSG5JQ25V?=
 =?utf-8?B?akFDYXcyVlBJRldSN1RvbUk3VGhCSTloYmN3VitFSkhCcnRsTmErNkNpMFlQ?=
 =?utf-8?B?OEIzRnVNVEZ4YndrMGhOdlZoSHBQNnZ6SThNS1E0Tk1iRFU4TG9BWEdmQmt4?=
 =?utf-8?B?VTh3cTVScFhtWElVV05TVENOdFEySHNvYWtrTlNsb1duV3NSNkM2WTNIKzhH?=
 =?utf-8?B?SjM2WUNGRDZCTk96QittaFBmaDhlblVoMUthRytURkVaR3NGcE5FMGhrTU9L?=
 =?utf-8?B?d1M2MytubEZkdGFuclc3dTY4NXR0Um5LaVlKVWVSNmpqeHl6OHpYY0NDMGh4?=
 =?utf-8?B?VW1yNnJBc2YraHNCS2p0YitnS0F5UTk2cXcyYjlVRCtENk1paURDZmpoYUtW?=
 =?utf-8?B?V3E4RDNDR0Z2ZEJmMXFONlFJQ3F5UHhtVEt6UmFmRXcrQjJqUllmelVNTTh3?=
 =?utf-8?B?dlNSTXpOdVJnUEpxU040MC9oMWZXUGhKVWFwY0NyTkdSTndLdTdzRUF3NnZM?=
 =?utf-8?B?M0tlT1JORXo5Y1VlTGNOSnVXM200bkV1dTBEOUxXT1pGaWZPWlR3OHpNbWtX?=
 =?utf-8?B?SzJjcVFzWjBsU2pNZWVlMEdKcWlDWUNNU3hueWZRblh6NmhUUEloVE1mUUlW?=
 =?utf-8?B?QUhScUcra0Uxd2NBSzRNNmVwY3R2L0kwY091ZUFPUm1WWjlqN3IxNGZ2bjBp?=
 =?utf-8?B?R1Q3RHVQMWtJZDZSQWhwUEdJUWNHVVlTd2IzSjgzaTdiMVEwZlZmYUZhMlR3?=
 =?utf-8?B?cGR4WERBR0JIWjlrc0YrSlI2OUZZWGpBUWdWQXlqZjk0VXZYeGxFQzRVUkdF?=
 =?utf-8?B?TWFrV0Z6c2RvZVphQm9VR0NPdDhRN3hrL1o3STUrbERnOW1wb3ZWUnZEZEUr?=
 =?utf-8?B?VjVBbkJpdFpkZEdaVVJxa2dPcFc0d2hsRDRERloyWlFqcXlRT3NJN3h4elVt?=
 =?utf-8?B?TDRnZWcwalBwWExDMit6WEloMHFRMVBGams5RHhLS2FmTWUydVlPQzNLTllK?=
 =?utf-8?Q?ApYunOKPC4A=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MVg1RUxYRXM5bnFwRmsyTVpiaVFScUU4d3ZDVE4zZVRkT1VHdzlwNFdUM0hK?=
 =?utf-8?B?aFc4anRhZHFwK2wwTTVtdXZSSnI3d3RHd3ZpZ2hmbG9DaXdTZmZNb3p4RzY5?=
 =?utf-8?B?djhreHFMbENQTFhubURnWE12dWhidzV2OFNHd3dPMEdzQXM0TzlHVGJIdUZt?=
 =?utf-8?B?ZklhMmI5QnF0ajdRTExDSmtvejBSZU9ITDVqS1FPV0ZnZEt3cStIZmFJQm5v?=
 =?utf-8?B?MU9DQTZScnJXdzJsQWwzY08vVjNVM1puRmhIMlpvM0E5aUxURFFvRHR3Y2JT?=
 =?utf-8?B?ZlYrMnVTbEpscHJTazMxZFdCZEtpWHJmdjBIZ1FPN3hxZnMwb3ZqYzBlaHA0?=
 =?utf-8?B?bUd0Vm9DcFk1NHhTTzBodWRMRngvaGVNUTQzdGJ5Tk00OWdOektaaDVpUjdx?=
 =?utf-8?B?Wk5XdEtNaWJPZXhDUzVqVDd4SGtzaExUeEJpMVdOcVhFZ3NMR0UzR0hQemk1?=
 =?utf-8?B?SUpXcm52M1NLdkZrRTdWYUdVMTVHamsxOUw1emxtVXhHUVlLY05JN1gvV1Ey?=
 =?utf-8?B?b083cG5zSTJnTU5URHEzVE5tN3N0Y29QZWE2SU4vaVdJZDN3YStFZ3ZxUzda?=
 =?utf-8?B?RjhjN1hzbFljT3ZXR1RPTThKL29JaTBxaTlwbXpyNkFQdmxTUTlQSXhIajZl?=
 =?utf-8?B?TlMyZE15RFV0VTJTdklIMG03UDNrQWlmSnU4blpMT2RneTdDcFZsNzZlbDZQ?=
 =?utf-8?B?NllOZ2E2a3JQY0FwUUt6eXdJbG00MUZ2Rjh3NkVIekNzQkgxWGFXeHZxUnEz?=
 =?utf-8?B?Y1BCTGlGQ21IRjA1ZkdSNTYwa3pDTVAzbnFPV2VWM1J0S09WMG5IdkNwUFgv?=
 =?utf-8?B?aGh1ZlAyT3R6VXJ4S1YvOEZmL05ncUJmM1B3L2QrK1BhRHpQc1J6a1k3VVhW?=
 =?utf-8?B?b3JaZkViRHpYRk5zMGlxUFVyaDF3dkZmZUxJa0xXSnpqYXpHWWQ4MjBXNXI2?=
 =?utf-8?B?ajhtM2tEaWNhQjRXbTFCcWxWVUw2Rmg0VXh5V2hqR09xUWJVUWI5anl5WTBk?=
 =?utf-8?B?cjRFSXh1RmJpWm1EWkczcEREanpyWGxtRldxSmpoQlBYYzZLRjFIMkw5RFFX?=
 =?utf-8?B?R2ROVE9EYU9sTzBNc09aLzBtRkdBendXbm4zeXdOMkxuZ3lCSW4vNXY4alJ5?=
 =?utf-8?B?UEdmdFlNNHY1OFpkRFRqSlhnM2tQOTZOOCtGTU8yWmZvTjN4WmJOR0Q5eExR?=
 =?utf-8?B?b0NNalVhVWMrTmpLQ2hBQnpyOEcrMmZzNk00dHV3VDBRdkxIQXZIdGRXc3Vx?=
 =?utf-8?B?dWpRbXNiTGNaRHd5VzdiYmRMZ2I4Z21YWFVuK05nT1dOOUc5WHBYK21EUmFQ?=
 =?utf-8?B?MFdid21jNjBOcldvcytWV0MyRHdiWkxaaHJGSlRUa3pkajI1Zm96NFpod2Yz?=
 =?utf-8?B?UXl4NTNEQytjZVV5RjRiQTdGOE84Qzd0MEVNaStyQzVUVHJDTXl4SnowSVFq?=
 =?utf-8?B?V2F4NzUvRnZ3ajBZRXc2TUQ0cVhXblB2bkxqUTE1a0ZGR1NucUcrRCt3L2pk?=
 =?utf-8?B?TG5MVllpUGUyYXg1ZWludzZ1alNVSHRJSGtKRlY5dDgvNlJwNnVWVWszcFcw?=
 =?utf-8?B?Nmx2aWpUUFdoNEYvRW1leG1PaDE0NFdISllBclpWNENid2VHVnpSV0NPc3No?=
 =?utf-8?B?VkVXZ0ZNUmpjMmNXREN4akpZaE9QZTVOcDRqVkdrMlRnc3JwVmFOaVl5a05E?=
 =?utf-8?B?QlNsSVNmS1p3RHJ5L2ZQNU9wdjl2UFN0OU02UWg2Z2hqOG54dGRJZ0sxaUlu?=
 =?utf-8?B?enNrbkZpYmcxcFNaNkwyMUhzVWFtSXl3YzExRHZqd01VRkl0ejJ2blFDemZm?=
 =?utf-8?B?NVFHWjFqVEdHRE1XTDZZTmlTZ1VQdHF2aDVkYzd4V0p5bXI4RDVHY3o4MHBD?=
 =?utf-8?B?azVSZ2h5QXhJL2VwenRmbEhHKzdHM3EvYkcwSXhHbzBBWkpGaGNseVZtYmRX?=
 =?utf-8?B?aWVHenQ1UWdqeW1mSURkUTFmc3dNcFVPVVNWaXNpQy9kMXNZUm1RR3NsOU45?=
 =?utf-8?B?YWJRMjhtdkJMVDYycTFOZnlPNnhjTUsvazM5TEJ3Qk9KMVVDVGhwL3o3cGtB?=
 =?utf-8?B?ejdzbHpxV1JUc0FmVlZZQ0JpaXBxZDVxTVV2ZTd5OHpQWEIvWk5oT2R4QkJM?=
 =?utf-8?Q?DPEg=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6fcf68a-e153-4865-4180-08dd9d309a65
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 15:10:23.3875
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w9eV1d3vZqu0k5aDn7R0dPVJQgMjkJFg/qH+6FCIlSqHqGksIiZ6pDfAUMK/3Tdl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7273
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.88:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,honor.com,gmail.com,linux-foundation.org,zeniv.linux.org.uk,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.92.88:from];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: EA614443DC
X-Spamd-Bar: ----
Message-ID-Hash: QM2FJXML3ATYVLALVHAVUS34TVKBRHDM
X-Message-ID-Hash: QM2FJXML3ATYVLALVHAVUS34TVKBRHDM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>, "amir73il@gmail.com" <amir73il@gmail.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QM2FJXML3ATYVLALVHAVUS34TVKBRHDM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8yNy8yNSAxNjozNSwgd2FuZ3RhbyB3cm90ZToNCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+PiBGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+PiBTZW50OiBUaHVyc2RheSwgTWF5IDIyLCAyMDI1IDc6NTggUE0NCj4+IFRvOiB3YW5n
dGFvIDx0YW8ud2FuZ3Rhb0Bob25vci5jb20+OyBULkouIE1lcmNpZXINCj4+IDx0am1lcmNpZXJA
Z29vZ2xlLmNvbT4NCj4+IENjOiBzdW1pdC5zZW13YWxAbGluYXJvLm9yZzsgYmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbTsNCj4+IEJyaWFuLlN0YXJrZXlAYXJtLmNvbTsganN0dWx0ekBn
b29nbGUuY29tOyBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmc7DQo+PiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4
LQ0KPj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgd2FuZ2JpbnRpYW4oQmludGlhbldhbmcpDQo+
PiA8YmludGlhbi53YW5nQGhvbm9yLmNvbT47IHlpcGVuZ3hpYW5nIDx5aXBlbmd4aWFuZ0Bob25v
ci5jb20+OyBsaXVsdQ0KPj4gMDAwMTMxNjcgPGxpdWx1LmxpdUBob25vci5jb20+OyBoYW5mZW5n
IDAwMDEyOTg1IDxmZW5nLmhhbkBob25vci5jb20+Ow0KPj4gYW1pcjczaWxAZ21haWwuY29tDQo+
PiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZG1hYnVmL2hlYXBzOiBpbXBsZW1lbnQNCj4+IERN
QV9CVUZfSU9DVExfUldfRklMRSBmb3Igc3lzdGVtX2hlYXANCj4+DQo+PiBPbiA1LzIyLzI1IDEw
OjAyLCB3YW5ndGFvIHdyb3RlOg0KPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+
PiBGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4+
IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDIxLCAyMDI1IDc6NTcgUE0NCj4+Pj4gVG86IHdhbmd0YW8g
PHRhby53YW5ndGFvQGhvbm9yLmNvbT47IFQuSi4gTWVyY2llcg0KPj4+PiA8dGptZXJjaWVyQGdv
b2dsZS5jb20+DQo+Pj4+IENjOiBzdW1pdC5zZW13YWxAbGluYXJvLm9yZzsgYmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbTsNCj4+Pj4gQnJpYW4uU3RhcmtleUBhcm0uY29tOyBqc3R1bHR6
QGdvb2dsZS5jb207DQo+Pj4+IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4+Pj4gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnOyBsaW51eC0ga2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4+Pj4gd2FuZ2JpbnRpYW4oQmlu
dGlhbldhbmcpIDxiaW50aWFuLndhbmdAaG9ub3IuY29tPjsgeWlwZW5neGlhbmcNCj4+Pj4gPHlp
cGVuZ3hpYW5nQGhvbm9yLmNvbT47IGxpdWx1DQo+Pj4+IDAwMDEzMTY3IDxsaXVsdS5saXVAaG9u
b3IuY29tPjsgaGFuZmVuZyAwMDAxMjk4NQ0KPj4+PiA8ZmVuZy5oYW5AaG9ub3IuY29tPjsgYW1p
cjczaWxAZ21haWwuY29tDQo+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkbWFidWYvaGVh
cHM6IGltcGxlbWVudA0KPj4+PiBETUFfQlVGX0lPQ1RMX1JXX0ZJTEUgZm9yIHN5c3RlbV9oZWFw
DQo+Pj4+DQo+Pj4+IE9uIDUvMjEvMjUgMTI6MjUsIHdhbmd0YW8gd3JvdGU6DQo+Pj4+PiBbd2Fu
Z3Rhb10gSSBwcmV2aW91c2x5IGV4cGxhaW5lZCB0aGF0DQo+Pj4+PiByZWFkL3NlbmRmaWxlL3Nw
bGljZS9jb3B5X2ZpbGVfcmFuZ2UNCj4+Pj4+IHN5c2NhbGxzIGNhbid0IGFjaGlldmUgZG1hYnVm
IGRpcmVjdCBJTyB6ZXJvLWNvcHkuDQo+Pj4+DQo+Pj4+IEFuZCB3aHkgY2FuJ3QgeW91IHdvcmsg
b24gaW1wcm92aW5nIHRob3NlIHN5c2NhbGxzIGluc3RlYWQgb2YNCj4+Pj4gY3JlYXRpbmcgYSBu
ZXcgSU9DVEw/DQo+Pj4+DQo+Pj4gW3dhbmd0YW9dIEFzIEkgbWVudGlvbmVkIGluIHByZXZpb3Vz
IGVtYWlscywgdGhlc2Ugc3lzY2FsbHMgY2Fubm90DQo+Pj4gYWNoaWV2ZSBkbWFidWYgemVyby1j
b3B5IGR1ZSB0byB0ZWNobmljYWwgY29uc3RyYWludHMuDQo+Pg0KPj4gWWVhaCwgYW5kIHdoeSBj
YW4ndCB5b3Ugd29yayBvbiByZW1vdmluZyB0aG9zZSB0ZWNobmljYWwgY29uc3RyYWlucz8NCj4+
DQo+PiBXaGF0IGlzIGJsb2NraW5nIHlvdSBmcm9tIGltcHJvdmluZyB0aGUgc2VuZGZpbGUgc3lz
dGVtIGNhbGwgb3IgcHJvcG9zaW5nIGENCj4+IHBhdGNoIHRvIHJlbW92ZSB0aGUgY29weV9maWxl
X3JhbmdlIHJlc3RyaWN0aW9ucz8NCj4gW3dhbmd0YW9dIFNpbmNlIHNlbmRmaWxlL3NwbGljZSBj
YW4ndCBlbGltaW5hdGUgQ1BVIGNvcGllcywgSSBza2lwcGVkIGNyb3NzLUZTIGNoZWNrcw0KPiBp
biBjb3B5X2ZpbGVfcmFuZ2Ugd2hlbiBjb3B5aW5nIG1lbW9yeS9kaXNrIGZpbGVzLg0KDQpJdCB3
aWxsIHByb2JhYmx5IGJlIGEgbG9uZ2VyIGRpc2N1c3Npb24sIGJ1dCBJIHRoaW5rIHRoYXQgaGF2
aW5nIHRoZSBGUyBwZW9wbGUgdGFrZSBhIGxvb2sgYXMgd2VsbCBpcyBjbGVhcmx5IG1hbmRhdG9y
eS4NCg0KSWYgTGludXMgb3IgYW55Ym9keSBlbHNlIG9mIHRob3NlIG1haW50YWluZXJzIHRoZW4g
c2F5IHRoYXQgdGhpcyBpc24ndCBnb2luZyB0byBmbHkgZWl0aGVyIHdlIGNhbiBzdGlsbCBsb29r
IGludG8gYWx0ZXJuYXRpdmVzLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCg0KPiBXaWxsIHNl
bmQgbmV3IHBhdGNoZXMgYWZ0ZXIgY29tcGxldGluZyBzaG1lbS91ZG1hYnVmIGNhbGxiYWNrLg0K
PiBUaGFuayB5b3UgZm9yIHlvdXIgYXR0ZW50aW9uIHRvIHRoaXMgaXNzdWUuDQo+IA0KPiBVRlMg
NC4wIGRldmljZSBANEdCL3MsIEFybTY0IENQVSBAMUdIejoNCj4gfCBNZXRyaWNzICAgICAgICAg
ICAgICAgICAgfENyZWF0KHVzKXxDbG9zZSh1cyl8IEkvTyh1cykgfEkvTyhNQi9zKXwgVnMuJQ0K
PiB8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tfC0tLS0tLS0tLXwtLS0tLS0t
LS18LS0tLS0tLS0tfC0tLS0tLS0NCj4gfCAwKSAgICBkbWFidWYgYnVmZmVyIHJlYWQgfCAgIDQ2
ODk4IHwgICAgNDgwNCB8IDExNzM2NjEgfCAgICAgOTE0IHwgIDEwMCUNCj4gfCAxKSAgIHVkbWFi
dWYgYnVmZmVyIHJlYWQgfCAgNTkzODQ0IHwgIDMzNzExMSB8IDIxNDQ2ODEgfCAgICAgNTAwIHwg
ICA1NCUNCj4gfCAyKSAgICAgbWVtZmQgYnVmZmVyIHJlYWQgfCAgICAxMDI5IHwgIDMwNTMyMiB8
IDIyMTU4NTkgfCAgICAgNDg0IHwgICA1MiUNCj4gfCAzKSAgICAgbWVtZmQgZGlyZWN0IHJlYWQg
fCAgICAgNTYyIHwgIDI5NTIzOSB8IDEwMTk5MTMgfCAgICAxMDUyIHwgIDExNSUNCj4gfCA0KSBt
ZW1mZCBidWZmZXIgc2VuZGZpbGUgfCAgICAgNzg1IHwgIDI5OTAyNiB8IDE0MzEzMDQgfCAgICAg
NzUwIHwgICA4MiUNCj4gfCA1KSBtZW1mZCBkaXJlY3Qgc2VuZGZpbGUgfCAgICAgNzE4IHwgIDI5
NjMwNyB8IDI2MjIyNzAgfCAgICAgNDA5IHwgICA0NCUNCj4gfCA2KSAgIG1lbWZkIGJ1ZmZlciBz
cGxpY2UgfCAgICAgOTgxIHwgIDI5OTY5NCB8IDE1NzM3MTAgfCAgICAgNjgyIHwgICA3NCUNCj4g
fCA3KSAgIG1lbWZkIGRpcmVjdCBzcGxpY2UgfCAgICAgODkwIHwgIDMwMjUwOSB8IDEyNjk3NTcg
fCAgICAgODQ1IHwgICA5MiUNCj4gfCA4KSAgICBtZW1mZCBidWZmZXIgY19mX3IgfCAgICAgIDMz
IHwgICAgNDQzMiB8ICAgICBOL0EgfCAgICAgTi9BIHwgICBOL0ENCj4gfCA5KSAgICBtZW1mZCBk
aXJlY3QgY19mX3IgfCAgICAgIDI3IHwgICAgNDQyMSB8ICAgICBOL0EgfCAgICAgTi9BIHwgICBO
L0ENCj4gfDEwKSBtZW1mZCBidWZmZXIgc2VuZGZpbGUgfCAgNTk1Nzk3IHwgIDQyMzEwNSB8IDEy
NDI0OTQgfCAgICAgODY0IHwgICA5NCUNCj4gfDExKSBtZW1mZCBkaXJlY3Qgc2VuZGZpbGUgfCAg
NTkzNzU4IHwgIDM1NzkyMSB8IDIzNDQwMDEgfCAgICAgNDU4IHwgICA1MCUNCj4gfDEyKSAgIG1l
bWZkIGJ1ZmZlciBzcGxpY2UgfCAgNjIzMjIxIHwgIDM1NjIxMiB8IDExMTc1MDcgfCAgICAgOTYw
IHwgIDEwNSUNCj4gfDEzKSAgIG1lbWZkIGRpcmVjdCBzcGxpY2UgfCAgNTg3MDU5IHwgIDM0NTQ4
NCB8ICA4NTcxMDMgfCAgICAxMjUyIHwgIDEzNiUNCj4gfDE0KSAgdWRtYWJ1ZiBidWZmZXIgY19m
X3IgfCAgIDIyNzI1IHwgICAxMDI0OCB8ICAgICBOL0EgfCAgICAgTi9BIHwgICBOL0ENCj4gfDE1
KSAgdWRtYWJ1ZiBkaXJlY3QgY19mX3IgfCAgIDIwMTIwIHwgICAgOTk1MiB8ICAgICBOL0EgfCAg
ICAgTi9BIHwgICBOL0ENCj4gfDE2KSAgIGRtYWJ1ZiBidWZmZXIgY19mX3IgfCAgIDQ2NTE3IHwg
ICAgNDcwOCB8ICA4NTc1ODcgfCAgICAxMjUyIHwgIDEzNiUNCj4gfDE3KSAgIGRtYWJ1ZiBkaXJl
Y3QgY19mX3IgfCAgIDQ3MzM5IHwgICAgNDY2MSB8ICAyODQwMjMgfCAgICAzNzgwIHwgIDQxMyUN
Cj4gDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+PiAgQ291bGQgeW91DQo+
Pj4gc3BlY2lmeSB0aGUgdGVjaG5pY2FsIHBvaW50cywgY29kZSwgb3IgcHJpbmNpcGxlcyB0aGF0
IG5lZWQNCj4+PiBvcHRpbWl6YXRpb24/DQo+Pj4NCj4+PiBMZXQgbWUgZXhwbGFpbiBhZ2FpbiB3
aHkgdGhlc2Ugc3lzY2FsbHMgY2FuJ3Qgd29yazoNCj4+PiAxLiByZWFkKCkgc3lzY2FsbA0KPj4+
ICAgIC0gZG1hYnVmIGZvcHMgbGFja3MgcmVhZCBjYWxsYmFjayBpbXBsZW1lbnRhdGlvbi4gRXZl
biBpZiBpbXBsZW1lbnRlZCwNCj4+PiAgICAgIGZpbGVfZmQgaW5mbyBjYW5ub3QgYmUgdHJhbnNm
ZXJyZWQNCj4+PiAgICAtIHJlYWQoZmlsZV9mZCwgZG1hYnVmX3B0ciwgbGVuKSB3aXRoIHJlbWFw
X3Bmbl9yYW5nZS1iYXNlZCBtbWFwDQo+Pj4gICAgICBjYW5ub3QgYWNjZXNzIGRtYWJ1Zl9idWYg
cGFnZXMsIGZvcmNpbmcgYnVmZmVyLW1vZGUgcmVhZHMNCj4+Pg0KPj4+IDIuIHNlbmRmaWxlKCkg
c3lzY2FsbA0KPj4+ICAgIC0gUmVxdWlyZXMgQ1BVIGNvcHkgZnJvbSBwYWdlIGNhY2hlIHRvIG1l
bW9yeSBmaWxlKHRtcGZzL3NobWVtKToNCj4+PiAgICAgIFtESVNLXSAtLURNQS0tPiBbcGFnZSBj
YWNoZV0gLS1DUFUgY29weS0tPiBbTUVNT1JZIGZpbGVdDQo+Pj4gICAgLSBDUFUgb3ZlcmhlYWQg
KGJvdGggYnVmZmVyL2RpcmVjdCBtb2RlcyBpbnZvbHZlIGNvcGllcyk6DQo+Pj4gICAgICA1NS4w
OCUgZG9fc2VuZGZpbGUNCj4+PiAgICAgfC0gNTUuMDglIGRvX3NwbGljZV9kaXJlY3QNCj4+PiAg
ICAgfC18LSA1NS4wOCUgc3BsaWNlX2RpcmVjdF90b19hY3Rvcg0KPj4+ICAgICB8LXwtfC0gMjIu
NTElIGNvcHlfc3BsaWNlX3JlYWQNCj4+PiAgICAgfC18LXwtfC0gMTYuNTclIGYyZnNfZmlsZV9y
ZWFkX2l0ZXINCj4+PiAgICAgfC18LXwtfC18LSAxNS4xMiUgX19pb21hcF9kaW9fcncNCj4+PiAg
ICAgfC18LXwtIDMyLjMzJSBkaXJlY3Rfc3BsaWNlX2FjdG9yDQo+Pj4gICAgIHwtfC18LXwtIDMy
LjExJSBpdGVyX2ZpbGVfc3BsaWNlX3dyaXRlDQo+Pj4gICAgIHwtfC18LXwtfC0gMjguNDIlIHZm
c19pdGVyX3dyaXRlDQo+Pj4gICAgIHwtfC18LXwtfC18LSAyOC40MiUgZG9faXRlcl93cml0ZQ0K
Pj4+ICAgICB8LXwtfC18LXwtfC18LSAyOC4zOSUgc2htZW1fZmlsZV93cml0ZV9pdGVyDQo+Pj4g
ICAgIHwtfC18LXwtfC18LXwtfC0gMjQuNjIlIGdlbmVyaWNfcGVyZm9ybV93cml0ZQ0KPj4+ICAg
ICB8LXwtfC18LXwtfC18LXwtfC0gMTguNzUlIF9fcGlfbWVtbW92ZQ0KPj4+DQo+Pj4gMy4gc3Bs
aWNlKCkgcmVxdWlyZXMgb25lIGVuZCB0byBiZSBhIHBpcGUsIGluY29tcGF0aWJsZSB3aXRoIHJl
Z3VsYXIgZmlsZXMgb3INCj4+IGRtYWJ1Zi4NCj4+Pg0KPj4+IDQuIGNvcHlfZmlsZV9yYW5nZSgp
DQo+Pj4gICAgLSBCbG9ja2VkIGJ5IGNyb3NzLUZTIHJlc3RyaWN0aW9ucyAoQW1pcidzIGNvbW1p
dCA4NjhmOWYyZjhlMDApDQo+Pj4gICAgLSBFdmVuIHdpdGhvdXQgdGhpcyByZXN0cmljdGlvbiwg
RXZlbiB3aXRob3V0IHJlc3RyaWN0aW9ucywgaW1wbGVtZW50aW5nDQo+Pj4gICAgICB0aGUgY29w
eV9maWxlX3JhbmdlIGNhbGxiYWNrIGluIGRtYWJ1ZiBmb3BzIHdvdWxkIG9ubHkgYWxsb3cgZG1h
YnVmDQo+PiByZWFkDQo+Pj4gCSBmcm9tIHJlZ3VsYXIgZmlsZXMuIFRoaXMgaXMgYmVjYXVzZSBj
b3B5X2ZpbGVfcmFuZ2UgcmVsaWVzIG9uDQo+Pj4gCSBmaWxlX291dC0+Zl9vcC0+Y29weV9maWxl
X3JhbmdlLCB3aGljaCBjYW5ub3Qgc3VwcG9ydCBkbWFidWYNCj4+IHdyaXRlDQo+Pj4gCSBvcGVy
YXRpb25zIHRvIHJlZ3VsYXIgZmlsZXMuDQo+Pj4NCj4+PiBUZXN0IHJlc3VsdHMgY29uZmlybSB0
aGVzZSBsaW1pdGF0aW9uczoNCj4+PiBULkouIE1lcmNpZXIncyAxRyBmcm9tIGV4dDQgb24gNi4x
Mi4yMCB8IHJlYWQvc2VuZGZpbGUgKG1zKSB3LyAzID4NCj4+PiBkcm9wX2NhY2hlcw0KPj4+IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4gdWRtYWJ1ZiBi
dWZmZXIgcmVhZCAgICAgfCAxMjEwDQo+Pj4gdWRtYWJ1ZiBkaXJlY3QgcmVhZCAgICAgfCA2NzEN
Cj4+PiB1ZG1hYnVmIGJ1ZmZlciBzZW5kZmlsZSB8IDEwOTYNCj4+PiB1ZG1hYnVmIGRpcmVjdCBz
ZW5kZmlsZSB8IDIzNDANCj4+Pg0KPj4+IE15IDNHSHogQ1BVIHRlc3RzIChjYWNoZSBjbGVhcmVk
KToNCj4+PiBNZXRob2QgICAgICAgICAgICAgICAgfCBhbGxvYyB8IHJlYWQgIHwgdnMuICglKQ0K
Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4g
dWRtYWJ1ZiBidWZmZXIgcmVhZCAgIHwgMTM1ICAgfCA1NDYgICB8IDE4MCUNCj4+PiB1ZG1hYnVm
IGRpcmVjdCByZWFkICAgfCAxNTkgICB8IDMwMCAgIHwgOTklDQo+Pj4gdWRtYWJ1ZiBidWZmZXIg
c2VuZGZpbGUgfCAxMzQgfCAzMDMgICB8IDEwMCUNCj4+PiB1ZG1hYnVmIGRpcmVjdCBzZW5kZmls
ZSB8IDE0MSB8IDkxMiAgIHwgMzAxJQ0KPj4+IGRtYWJ1ZiBidWZmZXIgcmVhZCAgICB8IDIyICAg
IHwgMzYyICAgfCAxMTklDQo+Pj4gbXkgcGF0Y2ggZGlyZWN0IHJlYWQgIHwgMjkgICAgfCAyNjUg
ICB8IDg3JQ0KPj4+DQo+Pj4gTXkgMUdIeiBDUFUgdGVzdHMgKGNhY2hlIGNsZWFyZWQpOg0KPj4+
IE1ldGhvZCAgICAgICAgICAgICAgICB8IGFsbG9jIHwgcmVhZCAgfCB2cy4gKCUpDQo+Pj4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+PiB1ZG1hYnVm
IGJ1ZmZlciByZWFkICAgfCA1NTIgICB8IDIwNjcgIHwgMTk4JQ0KPj4+IHVkbWFidWYgZGlyZWN0
IHJlYWQgICB8IDU0MCAgIHwgNjI3ICAgfCA2MCUNCj4+PiB1ZG1hYnVmIGJ1ZmZlciBzZW5kZmls
ZSB8IDQ5NyB8IDEwNDUgIHwgMTAwJSB1ZG1hYnVmIGRpcmVjdCBzZW5kZmlsZSB8DQo+Pj4gNTI3
IHwgMjMzMCAgfCAyMjMlDQo+Pj4gZG1hYnVmIGJ1ZmZlciByZWFkICAgIHwgNDAgICAgfCAxMTEx
ICB8IDEwNiUNCj4+PiBwYXRjaCBkaXJlY3QgcmVhZCAgICAgfCA0NCAgICB8IDMxMCAgIHwgMzAl
DQo+Pj4NCj4+PiBUZXN0IG9ic2VydmF0aW9ucyBhbGlnbiB3aXRoIGV4cGVjdGF0aW9uczoNCj4+
PiAxLiBkbWFidWYgYnVmZmVyIHJlYWQgcmVxdWlyZXMgc2xvdyBDUFUgY29waWVzIDIuIHVkbWFi
dWYgZGlyZWN0IHJlYWQNCj4+PiBhY2hpZXZlcyB6ZXJvLWNvcHkgYnV0IGhhcyBwYWdlIHJldHJp
ZXZhbA0KPj4+ICAgIGxhdGVuY3kgZnJvbSB2YWRkcg0KPj4+IDMuIHVkbWFidWYgYnVmZmVyIHNl
bmRmaWxlIHN1ZmZlcnMgQ1BVIGNvcHkgb3ZlcmhlYWQgNC4gdWRtYWJ1ZiBkaXJlY3QNCj4+PiBz
ZW5kZmlsZSBjb21iaW5lcyBDUFUgY29waWVzIHdpdGggZnJlcXVlbnQgRE1BDQo+Pj4gICAgb3Bl
cmF0aW9ucyBkdWUgdG8gc21hbGwgcGlwZSBidWZmZXJzIDUuIGRtYWJ1ZiBidWZmZXIgcmVhZCBh
bHNvDQo+Pj4gcmVxdWlyZXMgQ1BVIGNvcGllcyA2LiBNeSBkaXJlY3QgcmVhZCBwYXRjaCBlbmFi
bGVzIHplcm8tY29weSB3aXRoDQo+Pj4gYmV0dGVyIHBlcmZvcm1hbmNlDQo+Pj4gICAgb24gbG93
LXBvd2VyIENQVXMNCj4+PiA3LiB1ZG1hYnVmIGNyZWF0aW9uIHRpbWUgcmVtYWlucyBwcm9ibGVt
YXRpYyAoYXMgeW914oCZdmUgbm90ZWQpLg0KPj4+DQo+Pj4+PiBNeSBmb2N1cyBpcyBlbmFibGlu
ZyBkbWFidWYgZGlyZWN0IEkvTyBmb3IgW3JlZ3VsYXIgZmlsZV0gPC0tRE1BLS0+DQo+Pj4+PiBb
ZG1hYnVmXSB6ZXJvLWNvcHkuDQo+Pj4+DQo+Pj4+IFllYWggYW5kIHRoYXQgZm9jdXMgaXMgd3Jv
bmcuIFlvdSBuZWVkIHRvIHdvcmsgb24gYSBnZW5lcmFsIHNvbHV0aW9uDQo+Pj4+IHRvIHRoZSBp
c3N1ZSBhbmQgbm90IHNwZWNpZmljIHRvIHlvdXIgcHJvYmxlbS4NCj4+Pj4NCj4+Pj4+IEFueSBB
UEkgYWNoaWV2aW5nIHRoaXMgd291bGQgd29yay4gQXJlIHRoZXJlIG90aGVyIHVBUElzIHlvdSB0
aGluaw0KPj4+Pj4gY291bGQgaGVscD8gQ291bGQgeW91IHJlY29tbWVuZCBleHBlcnRzIHdobyBt
aWdodCBvZmZlciBzdWdnZXN0aW9ucz8NCj4+Pj4NCj4+Pj4gV2VsbCBvbmNlIG1vcmU6IEVpdGhl
ciB3b3JrIG9uIHNlbmRmaWxlIG9yIGNvcHlfZmlsZV9yYW5nZSBvcg0KPj4+PiBldmVudHVhbGx5
IHNwbGljZSB0byBtYWtlIGl0IHdoYXQgeW91IHdhbnQgdG8gZG8uDQo+Pj4+DQo+Pj4+IFdoZW4g
dGhhdCBpcyBkb25lIHdlIGNhbiBkaXNjdXNzIHdpdGggdGhlIFZGUyBwZW9wbGUgaWYgdGhhdCBh
cHByb2FjaA0KPj4+PiBpcyBmZWFzaWJsZS4NCj4+Pj4NCj4+Pj4gQnV0IGp1c3QgYnlwYXNzaW5n
IHRoZSBWRlMgcmV2aWV3IGJ5IGltcGxlbWVudGluZyBhIERNQS1idWYgc3BlY2lmaWMNCj4+Pj4g
SU9DVEwgaXMgYSBOTy1HTy4gVGhhdCBpcyBjbGVhcmx5IG5vdCBzb21ldGhpbmcgeW91IGNhbiBk
byBpbiBhbnkgd2F5Lg0KPj4+IFt3YW5ndGFvXSBUaGUgaXNzdWUgaXMgdGhhdCBvbmx5IGRtYWJ1
ZiBsYWNrcyBEaXJlY3QgSS9PIHplcm8tY29weQ0KPj4+IHN1cHBvcnQuIFRtcGZzL3NobWVtIGFs
cmVhZHkgd29yayB3aXRoIERpcmVjdCBJL08gemVyby1jb3B5LiBBcw0KPj4+IGV4cGxhaW5lZCwg
ZXhpc3Rpbmcgc3lzY2FsbHMgb3IgZ2VuZXJpYyBtZXRob2RzIGNhbid0IGVuYWJsZSBkbWFidWYN
Cj4+PiBkaXJlY3QgSS9PIHplcm8tY29weSwgd2hpY2ggaXMgd2h5IEkgcHJvcG9zZSBhZGRpbmcg
YW4gSU9DVEwgY29tbWFuZC4NCj4+Pg0KPj4+IEkgcmVzcGVjdCB5b3VyIHBlcnNwZWN0aXZlLiBD
b3VsZCB5b3UgY2xhcmlmeSBzcGVjaWZpYyB0ZWNobmljYWwNCj4+PiBhc3BlY3RzLCBjb2RlIHJl
cXVpcmVtZW50cywgb3IgaW1wbGVtZW50YXRpb24gcHJpbmNpcGxlcyBmb3IgbW9kaWZ5aW5nDQo+
Pj4gc2VuZGZpbGUoKSBvciBjb3B5X2ZpbGVfcmFuZ2UoKT8gVGhpcyB3b3VsZCBoZWxwIGFkdmFu
Y2Ugb3VyIGRpc2N1c3Npb24uDQo+Pj4NCj4+PiBUaGFuayB5b3UgZm9yIGVuZ2FnaW5nIGluIHRo
aXMgZGlhbG9ndWUuDQo+Pj4NCj4+Pj4NCj4+Pj4gUmVnYXJkcywNCj4+Pj4gQ2hyaXN0aWFuLg0K
PiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
