Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C33F283648F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 14:41:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C929940CCE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jan 2024 13:41:34 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2069.outbound.protection.outlook.com [40.107.244.69])
	by lists.linaro.org (Postfix) with ESMTPS id 9E3C040B38
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jan 2024 13:41:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Z6nyTA1C;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.69 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MyJurin/nm60kD6kOf9GBDpmEHH1VFbtltGOB+Hgf/repmX5QFFejdNsJoNky/KjzSAWJx9JBhznvyysgUHkYyT8xGiaCxwjPigiU7Qgkgew/9x2kHtiMhY9Dv6V4gWXopMVHdXlSJfNfEAJlLWCQ9/GhHEy3EhzFWZsWQ2Rgq8fGJSELWkN2NQaDXyhB1dz9fRh9dtgRyIFQgFMCjvBvN0l6Qiqx+R+fUeHzCWoDqlLhFRnmC/HunpS6rrhgzjjjfpXSD+X0uzFKfFgWPs/QWQ2woQpe1NtPvI9FOPjdVv9EzEU/3veeGrGEBTSQbubw01veMpx0Xs861h1Y86Lzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2/uND+PylRqEr8qzmxLFKHDrUvlITQ5CkViw7tP1Q0=;
 b=WLuXjFqUymwtYFA2vuXQJ9cF98jZAlsmENPfjeor4JZJNCZHkroGcTsPnl9V9esx0/037UAouiY1OCK6ue0LvAIOSTu6QqozCJzf2Z47yYTSgh3BcVuXHg16yHIOxgTCdYPzFhgEfaqywfzRfwAdR3n3Yn11PMR5huXJX7ydnBUyPC6u1zKn6ogi6kyE8jbZp5o0nWW2MqkxHzYJMSHAjF7LeQlv2XYLnGDNz6pQ4E3OXlW05TwCzHjdEGfmo7akthNHYTTY26wCuCcRkkE/+aJgHyCfUPC12g4lljik6XYejUIxF84yQKr/efwPV5+7N3UDff3YyBemunqWvzTNyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e2/uND+PylRqEr8qzmxLFKHDrUvlITQ5CkViw7tP1Q0=;
 b=Z6nyTA1CcFTlk8lGvi0oRYWNh273RCO6YsguN43OtCH0zv4abzOGfh3645H9P/nSwE+1pktsO6Cny0noX4CPzxsUn0qfS7Ouug4bAZV9sQ7h+HLDADk6JKKa7OXwyRH7d/SOwRKPuGRYylBZcOuV36KSq9C8+WKe+Rr24AQnyMc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7213.namprd12.prod.outlook.com (2603:10b6:303:22a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32; Mon, 22 Jan
 2024 13:41:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 13:41:23 +0000
Message-ID: <0b6b8738-9ea3-44fa-a624-9297bd55778f@amd.com>
Date: Mon, 22 Jan 2024 14:41:14 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20240119141402.44262-1-paul@crapouillou.net>
 <20240119141402.44262-2-paul@crapouillou.net>
 <8035f515-591f-4c87-bf0a-23d5705d9b1c@gmail.com>
 <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
X-ClientProxiedBy: FR5P281CA0014.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f2::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7213:EE_
X-MS-Office365-Filtering-Correlation-Id: 1332b9b8-ed1a-47a8-79fe-08dc1b4fd298
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	E/DFazMuZlCZO8kkNh5i26b8cm/YMhDofn1fwhnj3gml8L+xPxNk+oDwnH2DP7DlnfYvdvBRflj0z+2fYaBHfJxupybv5rZ71wAgiXVVfiFBU8ys4Opx89e1UPx178p1XH3rhvmgy8NntLaFRsYOY8OzSaWQxQT0BZXmZp4knmbbdcMJ7BmzMx6v8n8gDCOLisQKHbrXo0hNq4/J2tqyte2NlU1bkHEZ6PgEge+Yr1rGsz2wwlL08z701RpyomhdVy975uQub4fptSut/y4rfO0UUtmBuKq8tQuYMxQKhxK5vtBKTV4KY9v53GxuZoH6xPMVWcFKQuz1AsZgLRUS+brZxxaqR5Y/ch4TTdru25mFD5zIutWw7pZ/+B3wbDRAMP8CPoBrtuboqnVCMW4Bl3HeEY2fvW1Lo7X/PcbRkq5EPW9xOwWw6PBOEasDNvRzYrZKpyX0NlwmOhvb9US6a+xDYpgHT4ZQE2hLTExHbW/OEWPDp06w68vBmfVy05S8TfKQMJSvOl4OOKAlgC4TIjKg5ZMP4FuK4fOO6nSrQx/2/HWCv2vWAZaHqmuJSfie+KQ4m13USzTkASSWCzos2zBWgdgmz4uvJZiayOaSiOiEvV2sx8vdBjDlvqxlEVZR4Xj2N4zXpFgdeUM+HY8JAw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(39860400002)(136003)(366004)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(31686004)(2906002)(66946007)(54906003)(66556008)(66476007)(26005)(66574015)(110136005)(6666004)(8676002)(6486002)(6506007)(478600001)(4326008)(316002)(8936002)(6512007)(5660300002)(7416002)(2616005)(38100700002)(83380400001)(86362001)(31696002)(36756003)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3AwMXcva1BUaThCNC9GTVF1Z3RhQUdOc0pUdm1qMlBNRDZ4cWFmQlFFcTA2?=
 =?utf-8?B?aEZtY0NYazFNWHJpNSswelI3TDVEcGN2aUl3TWRBL1JIYlAzUHlGbXBFa2FU?=
 =?utf-8?B?SVFVcngvUHNYNzVXUXV3ejZOSjNSaDBvWWRGREtqRGdrQUVacXowT2lzdUdG?=
 =?utf-8?B?dzVjZlQvaTd4aFVSVnBZSlpkZGRkTlVtTzNDTmNSTEl6dW5DcjR5cXNBM0Rk?=
 =?utf-8?B?ZnlwWTNkTjVzZHpjZU9jSUtuclJscXlCN0M0Y0ZwMWxwZW5EMnVQUWF6dTRK?=
 =?utf-8?B?dnROZ1M2QkxOMzF5emV3TkRBcElMM3d5NzlmQWlYYjFaOWxZMWFrQ2hmUmxj?=
 =?utf-8?B?YW9Pc1ViZFY3V1pJMWZrWUtJbmJob0FvNWwrVDJXaUhGbHNaUGlmZGhreVpx?=
 =?utf-8?B?bGk5WERnejNhUTAyenlDcjh2YnRGMW5WaW1OMWN2Qzc0S0s0N3ZOSTVFQzA2?=
 =?utf-8?B?bUxKUFdqR25vT1NJNEg0VVhFSVliU3lJdHVmbFBBQnJQcndtemN1c3hKb1RQ?=
 =?utf-8?B?TEdTMnd0WkRWZk9RMlNack1NczdPM3Z5TlYrQzVISCtmOE1wb2RscTFGWEZ2?=
 =?utf-8?B?TFQvWEd1VHdzVld2d3UrMWxqVHlTaEZxcng3eW9ILzAvWnJGMHY4dEtzd205?=
 =?utf-8?B?Q2hGcyt6WVhWNDNLSWljbW5VMHlPN2ZnUXFKY3F3Sm5kbStVSnJaZnRNREUz?=
 =?utf-8?B?ejBYQTRwYWFyYld5RTFkNWVsMDZ3TytqMHRoQmc5cjhiaTJORGM2cmpaazFF?=
 =?utf-8?B?QkRMbTNBWkZ2ZzBHYVM1dE9sVEduK0xHKzdZUUJMNm1kMlYvODFweWRpQ1BQ?=
 =?utf-8?B?eVJ2MGJPSCtUTEhnVHlwbXhaeVMvUlF0MnU2YTBNMlJ4bDdwWXFJR0JkbUEx?=
 =?utf-8?B?VjB1QjlDM1dCUHhXd1lsN0pjdGwzbDlyTlI5dFFuM2V6NU9Wc0NNRmtTNnpO?=
 =?utf-8?B?NHBDcUVOUVAycXlXZko1OVlPVThXSDRmL3pCM2w4d0lIdGJsdTlOS2NEUHBV?=
 =?utf-8?B?TTJ3V0lGTFdVODJ5OUxFbUU4aEFXdUJmbUdBdjdXTURtaWtZMnN5TzV2UWpZ?=
 =?utf-8?B?ek5ZeUxySkxKM255Mk5hdjlwdy9jM1doWnk4UUYyS3kxdzhTbG9yVFE3ZzRI?=
 =?utf-8?B?ZWVTS0ZndXgwQ3dRbFZSWmdGTTRZNDMxQmQzcFpHVGl4a0xkNXp4RlZKd3M4?=
 =?utf-8?B?ZG1zWVRBK05NUWtsY09NTVFxaHZwMFE1OEl4V2tuM1FNcGU2ZzhaR2tPbEph?=
 =?utf-8?B?eHpEa0xQTi9SNmtDVnVVOTVXNlNLelh2SWpxeHRqZWUvamF6Z2RBYjlyTWpu?=
 =?utf-8?B?aG5KSURhRVY2OFJtQUdNLzdqZXkybWYzUERmSFc5T09aYk1DZUNLTHNMRzJ2?=
 =?utf-8?B?bDBwQTZ5dDQxeVZRTFhNZWI3RTUzckcza3lhekZ1RjIrTWUwZzgxQ05HZHUx?=
 =?utf-8?B?akNoVTIvYmNkUGlNZm8vQ1gyQUpuTFgyWXUyY3M3ellDWVZobzhyd0x0TEFV?=
 =?utf-8?B?ZjdmSnhHOTg2RnNMNGpLeHAzemRCWW42eFdmOUptdE51RTRHWVRBekFpZHlH?=
 =?utf-8?B?ZFpHSUxOWlIxM096NWtvSXRQNkJLbTdBR3hnZlhVNTdvZGhPNzdBUVA0ZEI4?=
 =?utf-8?B?dnByTmRwVlJ1dmtOOWR0MjdZRUJMWWtLdVFDUjI3Tk10ME5uMnphSXhvcG9D?=
 =?utf-8?B?TnZKL09zMmhVZHJacE1VY3ZuNVJFWmxSMjJKSGhUZjN5SDdiUmJqeFhHQTdB?=
 =?utf-8?B?Y2RORVFQVFl3djZlbGxBaDhJM21CRnBxbnZhYW9jajNFcWNTT0doTVdKcGo2?=
 =?utf-8?B?QSsvSmRUYmg4Rm0zVVRNL3o5ekNwR1hyZHFGNHNBUXgvNUhKdWt5T1dTaEo2?=
 =?utf-8?B?TUwycDgwRENqdElIS3lyRFJ4Yi9Wajh2TWJwZ05weU14b0d0bkR4OC8xOE9O?=
 =?utf-8?B?MFBSYjdvcHdDQi9LQXBiMlFlMkhtVkNLc1pKb0g2Lzd1MVB0bEFFTGluN0l0?=
 =?utf-8?B?M3VVaXFsZ2h4dGkzczJFZ0hsQ0JybklJU0dlTjh6N0hqVzZFa09xcVhYMi9q?=
 =?utf-8?B?OURtNnNSN3lVOVpIZEUvbDBDU3p4RUJxWHpJSzJtMEVNMTRHY3hZRFFNZkVz?=
 =?utf-8?Q?B7WpbRgmWui8exUbubgi4eRoI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1332b9b8-ed1a-47a8-79fe-08dc1b4fd298
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 13:41:23.2065
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: alu2sZLKakqmTHNNQh2RKjwubVmZ0W57sxMifsEKGJFkYTt2iux4BUKgvZinutSw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7213
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E3C040B38
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.69:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: B4CVT7LAVOOM7TVCTKK6YPDXJXW4BL2K
X-Message-ID-Hash: B4CVT7LAVOOM7TVCTKK6YPDXJXW4BL2K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4CVT7LAVOOM7TVCTKK6YPDXJXW4BL2K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMDEuMjQgdW0gMTI6MDEgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBIaSBDaHJpc3Rp
YW4sDQo+DQo+IExlIGx1bmRpIDIyIGphbnZpZXIgMjAyNCDDoCAxMTozNSArMDEwMCwgQ2hyaXN0
aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPj4gQW0gMTkuMDEuMjQgdW0gMTU6MTMgc2NocmllYiBQ
YXVsIENlcmN1ZWlsOg0KPj4+IFRoZXNlIGZ1bmN0aW9ucyBzaG91bGQgYmUgdXNlZCBieSBkZXZp
Y2UgZHJpdmVycyB3aGVuIHRoZXkgc3RhcnQNCj4+PiBhbmQNCj4+PiBzdG9wIGFjY2Vzc2luZyB0
aGUgZGF0YSBvZiBETUFCVUYuIEl0IGFsbG93cyBETUFCVUYgaW1wb3J0ZXJzIHRvDQo+Pj4gY2Fj
aGUNCj4+PiB0aGUgZG1hX2J1Zl9hdHRhY2htZW50IHdoaWxlIGVuc3VyaW5nIHRoYXQgdGhlIGRh
dGEgdGhleSB3YW50IHRvDQo+Pj4gYWNjZXNzDQo+Pj4gaXMgYXZhaWxhYmxlIGZvciB0aGVpciBk
ZXZpY2Ugd2hlbiB0aGUgRE1BIHRyYW5zZmVycyB0YWtlIHBsYWNlLg0KPj4gQXMgRGFuaWVsIGFs
cmVhZHkgbm90ZWQgYXMgd2VsbCB0aGlzIGlzIGEgY29tcGxldGUgbm8tZ28gZnJvbSB0aGUNCj4+
IERNQS1idWYgZGVzaWduIHBvaW50IG9mIHZpZXcuDQo+IFdoYXQgZG8geW91IG1lYW4gImFzIERh
bmllbCBhbHJlYWR5IG5vdGVkIj8gSXQgd2FzIGhpbSB3aG8gc3VnZ2VzdGVkDQo+IHRoaXMuDQoN
ClNvcnJ5LCBJIGhhdmVuJ3QgZnVsbHkgY2F0Y2hlZCB1cCB0byB0aGUgZGlzY3Vzc2lvbiB0aGVu
Lg0KDQpJbiBnZW5lcmFsIERNQS1idWYgaXMgYnVpbGQgYXJvdW5kIHRoZSBpZGVhIHRoYXQgdGhl
IGRhdGEgY2FuIGJlIA0KYWNjZXNzZWQgY29oZXJlbnRseSBieSB0aGUgaW52b2x2ZWQgZGV2aWNl
cy4NCg0KSGF2aW5nIGEgYmVnaW4vZW5kIG9mIGFjY2VzcyBmb3IgZGV2aWNlcyB3YXMgYnJvdWdo
dCB1cCBtdWx0aXBsZSB0aW1lcyANCmJ1dCBzbyBmYXIgcmVqZWN0ZWQgZm9yIGdvb2QgcmVhc29u
cy4NCg0KVGhhdCBhbiBleHBvcnRlciBoYXMgdG8gY2FsbCBleHRyYSBmdW5jdGlvbnMgdG8gYWNj
ZXNzIGhpcyBvd24gYnVmZmVycyANCmlzIGEgY29tcGxldGUgbm8tZ28gZm9yIHRoZSBkZXNpZ24g
c2luY2UgdGhpcyBmb3JjZXMgZXhwb3J0ZXJzIGludG8gDQpkb2luZyBleHRyYSBzdGVwcyBmb3Ig
YWxsb3dpbmcgaW1wb3J0ZXJzIHRvIGFjY2VzcyB0aGVpciBkYXRhLg0KDQpUaGF0IGluIHR1cm4g
aXMgcHJldHR5IG11Y2ggdW4tdGVzdGFibGUgdW5sZXNzIHlvdSBoYXZlIGV2ZXJ5IHBvc3NpYmxl
IA0KaW1wb3J0ZXIgYXJvdW5kIHdoaWxlIHRlc3RpbmcgdGhlIGV4cG9ydGVyLg0KDQpSZWdhcmRz
LA0KQ2hyaXN0aWFuLg0KDQo+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPiBDaGVlcnMs
DQo+IC1QYXVsDQo+DQo+Pj4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFw
b3VpbGxvdS5uZXQ+DQo+Pj4NCj4+PiAtLS0NCj4+PiB2NTogTmV3IHBhdGNoDQo+Pj4gLS0tDQo+
Pj4gIMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA2Ng0KPj4+ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+ICDCoCBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aMKgwqAgfCAzNyArKysrKysrKysrKysrKysrKysrKysrDQo+Pj4gIMKgIDIgZmlsZXMgY2hhbmdl
ZCwgMTAzIGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IGluZGV4IDhmZTVh
YTY3YjE2Ny4uYThiYWI2YzE4ZmNkIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gQEAgLTgz
MCw2ICs4MzAsOCBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICogX19tYXBfZG1hX2J1ZihzdHJ1
Y3QNCj4+PiBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+PiAgwqDCoCAqwqDCoMKgwqAg
LSBkbWFfYnVmX21tYXAoKQ0KPj4+ICDCoMKgICrCoMKgwqDCoCAtIGRtYV9idWZfYmVnaW5fY3B1
X2FjY2VzcygpDQo+Pj4gIMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1Zl9lbmRfY3B1X2FjY2Vzcygp
DQo+Pj4gKyAqwqDCoMKgwqAgLSBkbWFfYnVmX2JlZ2luX2FjY2VzcygpDQo+Pj4gKyAqwqDCoMKg
wqAgLSBkbWFfYnVmX2VuZF9hY2Nlc3MoKQ0KPj4+ICDCoMKgICrCoMKgwqDCoCAtIGRtYV9idWZf
bWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoKQ0KPj4+ICDCoMKgICrCoMKgwqDCoCAtIGRtYV9idWZf
dW5tYXBfYXR0YWNobWVudF91bmxvY2tlZCgpDQo+Pj4gIMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1
Zl92bWFwX3VubG9ja2VkKCkNCj4+PiBAQCAtMTYwMiw2ICsxNjA0LDcwIEBAIHZvaWQgZG1hX2J1
Zl92dW5tYXBfdW5sb2NrZWQoc3RydWN0IGRtYV9idWYNCj4+PiAqZG1hYnVmLCBzdHJ1Y3QgaW9z
eXNfbWFwICptYXApDQo+Pj4gIMKgIH0NCj4+PiAgwqAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1h
X2J1Zl92dW5tYXBfdW5sb2NrZWQsIERNQV9CVUYpOw0KPj4+ICAgIA0KPj4+ICsvKioNCj4+PiAr
ICogQGRtYV9idWZfYmVnaW5fYWNjZXNzIC0gQ2FsbCBiZWZvcmUgYW55IGhhcmR3YXJlIGFjY2Vz
cyBmcm9tL3RvDQo+Pj4gdGhlIERNQUJVRg0KPj4+ICsgKiBAYXR0YWNoOglbaW5dCWF0dGFjaG1l
bnQgdXNlZCBmb3IgaGFyZHdhcmUgYWNjZXNzDQo+Pj4gKyAqIEBzZ190YWJsZToJW2luXQlzY2F0
dGVybGlzdCB1c2VkIGZvciB0aGUgRE1BIHRyYW5zZmVyDQo+Pj4gKyAqIEBkaXJlY3Rpb246wqAg
W2luXcKgwqDCoCBkaXJlY3Rpb24gb2YgRE1BIHRyYW5zZmVyDQo+Pj4gKyAqLw0KPj4+ICtpbnQg
ZG1hX2J1Zl9iZWdpbl9hY2Nlc3Moc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0K
Pj4+ICsJCQkgc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0NCj4+PiBkbWFfZGF0YV9kaXJlY3Rp
b24gZGlyKQ0KPj4+ICt7DQo+Pj4gKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4+ICsJYm9v
bCBjb29raWU7DQo+Pj4gKwlpbnQgcmV0Ow0KPj4+ICsNCj4+PiArCWlmIChXQVJOX09OKCFhdHRh
Y2gpKQ0KPj4+ICsJCXJldHVybiAtRUlOVkFMOw0KPj4+ICsNCj4+PiArCWRtYWJ1ZiA9IGF0dGFj
aC0+ZG1hYnVmOw0KPj4+ICsNCj4+PiArCWlmICghZG1hYnVmLT5vcHMtPmJlZ2luX2FjY2VzcykN
Cj4+PiArCQlyZXR1cm4gMDsNCj4+PiArDQo+Pj4gKwljb29raWUgPSBkbWFfZmVuY2VfYmVnaW5f
c2lnbmFsbGluZygpOw0KPj4+ICsJcmV0ID0gZG1hYnVmLT5vcHMtPmJlZ2luX2FjY2VzcyhhdHRh
Y2gsIHNndCwgZGlyKTsNCj4+PiArCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhjb29raWUpOw0K
Pj4+ICsNCj4+PiArCWlmIChXQVJOX09OX09OQ0UocmV0KSkNCj4+PiArCQlyZXR1cm4gcmV0Ow0K
Pj4+ICsNCj4+PiArCXJldHVybiAwOw0KPj4+ICt9DQo+Pj4gK0VYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfYmVnaW5fYWNjZXNzLCBETUFfQlVGKTsNCj4+PiArDQo+Pj4gKy8qKg0KPj4+ICsg
KiBAZG1hX2J1Zl9lbmRfYWNjZXNzIC0gQ2FsbCBhZnRlciBhbnkgaGFyZHdhcmUgYWNjZXNzIGZy
b20vdG8NCj4+PiB0aGUgRE1BQlVGDQo+Pj4gKyAqIEBhdHRhY2g6CVtpbl0JYXR0YWNobWVudCB1
c2VkIGZvciBoYXJkd2FyZSBhY2Nlc3MNCj4+PiArICogQHNnX3RhYmxlOglbaW5dCXNjYXR0ZXJs
aXN0IHVzZWQgZm9yIHRoZSBETUEgdHJhbnNmZXINCj4+PiArICogQGRpcmVjdGlvbjrCoCBbaW5d
wqDCoMKgIGRpcmVjdGlvbiBvZiBETUEgdHJhbnNmZXINCj4+PiArICovDQo+Pj4gK2ludCBkbWFf
YnVmX2VuZF9hY2Nlc3Moc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+ICsJ
CcKgwqDCoMKgwqDCoCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgZW51bQ0KPj4+IGRtYV9kYXRhX2Rp
cmVjdGlvbiBkaXIpDQo+Pj4gK3sNCj4+PiArCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+Pj4g
Kwlib29sIGNvb2tpZTsNCj4+PiArCWludCByZXQ7DQo+Pj4gKw0KPj4+ICsJaWYgKFdBUk5fT04o
IWF0dGFjaCkpDQo+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKw0KPj4+ICsJZG1hYnVmID0g
YXR0YWNoLT5kbWFidWY7DQo+Pj4gKw0KPj4+ICsJaWYgKCFkbWFidWYtPm9wcy0+ZW5kX2FjY2Vz
cykNCj4+PiArCQlyZXR1cm4gMDsNCj4+PiArDQo+Pj4gKwljb29raWUgPSBkbWFfZmVuY2VfYmVn
aW5fc2lnbmFsbGluZygpOw0KPj4+ICsJcmV0ID0gZG1hYnVmLT5vcHMtPmVuZF9hY2Nlc3MoYXR0
YWNoLCBzZ3QsIGRpcik7DQo+Pj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2llKTsN
Cj4+PiArDQo+Pj4gKwlpZiAoV0FSTl9PTl9PTkNFKHJldCkpDQo+Pj4gKwkJcmV0dXJuIHJldDsN
Cj4+PiArDQo+Pj4gKwlyZXR1cm4gMDsNCj4+PiArfQ0KPj4+ICtFWFBPUlRfU1lNQk9MX05TX0dQ
TChkbWFfYnVmX2VuZF9hY2Nlc3MsIERNQV9CVUYpOw0KPj4+ICsNCj4+PiAgwqAgI2lmZGVmIENP
TkZJR19ERUJVR19GUw0KPj4+ICDCoCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCj4+PiAgwqAgew0KPj4+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4g
aW5kZXggOGZmNGFkZDcxZjg4Li44YmE2MTJjN2NjMTYgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+
IEBAIC0yNDYsNiArMjQ2LDM4IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7DQo+Pj4gIMKgwqAJICov
DQo+Pj4gIMKgwqAJaW50ICgqZW5kX2NwdV9hY2Nlc3MpKHN0cnVjdCBkbWFfYnVmICosIGVudW0N
Cj4+PiBkbWFfZGF0YV9kaXJlY3Rpb24pOw0KPj4+ICAgIA0KPj4+ICsJLyoqDQo+Pj4gKwkgKiBA
YmVnaW5fYWNjZXNzOg0KPj4+ICsJICoNCj4+PiArCSAqIFRoaXMgaXMgY2FsbGVkIGZyb20gZG1h
X2J1Zl9iZWdpbl9hY2Nlc3MoKSB3aGVuIGENCj4+PiBkZXZpY2UgZHJpdmVyDQo+Pj4gKwkgKiB3
YW50cyB0byBhY2Nlc3MgdGhlIGRhdGEgb2YgdGhlIERNQUJVRi4gVGhlIGV4cG9ydGVyDQo+Pj4g
Y2FuIHVzZSB0aGlzDQo+Pj4gKwkgKiB0byBmbHVzaC9zeW5jIHRoZSBjYWNoZXMgaWYgbmVlZGVk
Lg0KPj4+ICsJICoNCj4+PiArCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQo+Pj4gKwkg
Kg0KPj4+ICsJICogUmV0dXJuczoNCj4+PiArCSAqDQo+Pj4gKwkgKiAwIG9uIHN1Y2Nlc3Mgb3Ig
YSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuDQo+Pj4gKwkgKi8NCj4+PiArCWludCAo
KmJlZ2luX2FjY2Vzcykoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqLCBzdHJ1Y3QNCj4+PiBz
Z190YWJsZSAqLA0KPj4+ICsJCQnCoMKgwqAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24pOw0KPj4+
ICsNCj4+PiArCS8qKg0KPj4+ICsJICogQGVuZF9hY2Nlc3M6DQo+Pj4gKwkgKg0KPj4+ICsJICog
VGhpcyBpcyBjYWxsZWQgZnJvbSBkbWFfYnVmX2VuZF9hY2Nlc3MoKSB3aGVuIGEgZGV2aWNlDQo+
Pj4gZHJpdmVyIGlzDQo+Pj4gKwkgKiBkb25lIGFjY2Vzc2luZyB0aGUgZGF0YSBvZiB0aGUgRE1B
QlVGLiBUaGUgZXhwb3J0ZXIgY2FuDQo+Pj4gdXNlIHRoaXMNCj4+PiArCSAqIHRvIGZsdXNoL3N5
bmMgdGhlIGNhY2hlcyBpZiBuZWVkZWQuDQo+Pj4gKwkgKg0KPj4+ICsJICogVGhpcyBjYWxsYmFj
ayBpcyBvcHRpb25hbC4NCj4+PiArCSAqDQo+Pj4gKwkgKiBSZXR1cm5zOg0KPj4+ICsJICoNCj4+
PiArCSAqIDAgb24gc3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4N
Cj4+PiArCSAqLw0KPj4+ICsJaW50ICgqZW5kX2FjY2Vzcykoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqLCBzdHJ1Y3QNCj4+PiBzZ190YWJsZSAqLA0KPj4+ICsJCQnCoCBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbik7DQo+Pj4gKw0KPj4+ICDCoMKgCS8qKg0KPj4+ICDCoMKgCSAqIEBtbWFwOg0K
Pj4+ICDCoMKgCSAqDQo+Pj4gQEAgLTYwNiw2ICs2MzgsMTEgQEAgdm9pZCBkbWFfYnVmX2RldGFj
aChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPj4+ICDCoCBpbnQgZG1hX2J1Zl9waW4oc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCj4+PiAgwqAgdm9pZCBkbWFfYnVmX3VucGlu
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQo+Pj4gICAgDQo+Pj4gK2ludCBk
bWFfYnVmX2JlZ2luX2FjY2VzcyhzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+
Pj4gKwkJCSBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgZW51bQ0KPj4+IGRtYV9kYXRhX2RpcmVjdGlv
biBkaXIpOw0KPj4+ICtpbnQgZG1hX2J1Zl9lbmRfYWNjZXNzKHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCwNCj4+PiArCQnCoMKgwqDCoMKgwqAgc3RydWN0IHNnX3RhYmxlICpzZ3Qs
IGVudW0NCj4+PiBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKTsNCj4+PiArDQo+Pj4gIMKgIHN0cnVj
dCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5m
bw0KPj4+ICpleHBfaW5mbyk7DQo+Pj4gICAgDQo+Pj4gIMKgIGludCBkbWFfYnVmX2ZkKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsIGludCBmbGFncyk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
