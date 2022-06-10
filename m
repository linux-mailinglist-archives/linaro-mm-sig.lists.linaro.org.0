Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A0B545DF8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jun 2022 10:00:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A086C3F4D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jun 2022 08:00:14 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2062.outbound.protection.outlook.com [40.107.95.62])
	by lists.linaro.org (Postfix) with ESMTPS id 184E93EEB7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jun 2022 08:00:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6fr+IeA4R0JGT0maH6xahzHEvERRRC9f2/2nKoYfwjR2ZjbgsDh/K1Oef/07d4/TnhxQDY3TXg7L8QqyiczO+uiWVbm/i/SEYnye7khKGMBqVVrR7gFb6mjtj50B+2z7zsBfsnlF0ThHR2CPiS2smwI1sCg1DKUXQo4ImCnuloA86vrF8vvU69C9j+S4Vg5G8PxzR3K0+ZcRz1uyZZgmga+ulDeumL12B+fatosN9OGEDba2DPbEv8SYz+LUFWPwB79dKGD34c/CRLzQowvMk1nygqzCDw9Lq/ptSqMOLcy34iX6dbG053J7koeA25Yi7lvt0Uw1xjeu8YR928q1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQqB3hSmmvM/nSx0QFf6VMxeRm+PoWFfJTZAJ5R/mRw=;
 b=Zrka/HYipOtV3YKPujprhgbsDtoJhojrkylAEHS443tcDAsqMjS7GVhMNNEhrf4N8ynphslXMqGfG3B30P6DujVBxGXXHOBEHIcJr8tWfXohPZxmmzLkIf7P/qSMgSkmiuRWru/XRVusjIz+R2ZAr/UncVZv0rc+aibskJowTT9y2Bnb55N1rHGnLCAzipn4FWMbGDeaY0WVKpc3wvJXiuh3U6SUzDEd8ifNfZS17WkJNHDZEhpUEEyM1IPEobaQeMFWuC2icBCkJMjbd/w/NfM7SshSLyc5NlGt4gTautIOnF5NWE0VnMvs55sB0ZedUWBzW5FWzpv/kQbLfA/tdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQqB3hSmmvM/nSx0QFf6VMxeRm+PoWFfJTZAJ5R/mRw=;
 b=rhKgMR8h1bLD6+86bc3LyIdUbu3TZp+LzVnCbrh7O4u9tz/IGnf5xSuiBOwbq0CofJOAmfAlSEjstwFKCLrMh2ol7xV8rlKhxvwXeJJbODFCrxV17KAGxREAg1NFUSJYMCLdXua57VeDI4tOAKuFCzjJcU4x6UUE7Pu8MZdEvOA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4433.namprd12.prod.outlook.com (2603:10b6:5:2a1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Fri, 10 Jun
 2022 08:00:05 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5332.013; Fri, 10 Jun 2022
 08:00:05 +0000
Message-ID: <9122ec2e-8729-0542-22e1-98a81fe3f3f2@amd.com>
Date: Fri, 10 Jun 2022 10:00:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jiabing Wan <wanjiabing@vivo.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220610072019.3075023-1-wanjiabing@vivo.com>
 <c079243c-9084-b565-2320-20453815c79a@amd.com>
 <7a689b6c-31b7-61d2-7bf4-6fdf49bb4ae4@vivo.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <7a689b6c-31b7-61d2-7bf4-6fdf49bb4ae4@vivo.com>
X-ClientProxiedBy: FR0P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::22) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed65c17f-5a01-43ac-f174-08da4ab73ab5
X-MS-TrafficTypeDiagnostic: DM6PR12MB4433:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR12MB4433C16F8A718D0B2D3314D383A69@DM6PR12MB4433.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	m0s2vRWqYID4lslURdjbQAFtpFXCbRslHngPVC3XKkhQND9VCvktL0Fjk4gQ4++lGG9XTN7FIJrDNTVKIpa6k/ZmRHViTZQ44fwrTayvyX+9LiRLa62UsMO7vjYGirxqdLHLDceBYZoO/nzV8HMncIw1zxfv4ED3Pb0jNWYgv+Y2GU6m2OuBi3hAZXLq4UBKve9zqoftDgW7GMzVOUAYY1FcTzxbXSW1oCVdWuVZsRqqbBe1DbEks/Avvs/rFRQMyIebfK7TWjNUVGRBxp2otHbi2VS+XLTEwHHfMPOV9hw8/73Z6SYXFtXyGCUjT8UHDHuy23meFCgBdpJcNTU0ECkpVaABl13rw2WReQeCIW9dNrvVeDvDmLeIWc1qngGrYQO7tGC7jzg4x1Xhtv0GAIwIZbOqDr2kQobfNfaEufR4vJ02phIMlkK9okDgrS639Kgr3MZKFHnbAEtwBCZjH49drNqxcKDqLWPAAt3CBA7u5ILxazsLVtXqrq1jg2dx3qOtWytZZ7G1ew0I2MH6tUKV5VsStv0aK06r1b3bE83ybHbh9wQscw4M7NkSeNMafqjM1afmKhszCWh509vyCVDHSnOLfAbCn6av9LEJBhvK3+Gc9XPxHM6ZiqeznEM/WW/aCUEa/2zJRLuFTXgCsMzkKIzKQ3j+fqf8slxbbdvubgKJjq5pD4Hxyogg9GY3rOGIPdUndpmjCtGYUPzPgqPbgNelifvvaHpjxan0QntBQ+KiHMWvz2+KlSuyW2v/
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(66574015)(53546011)(6506007)(5660300002)(66476007)(8676002)(31686004)(66946007)(66556008)(186003)(38100700002)(8936002)(36756003)(2616005)(2906002)(31696002)(83380400001)(6512007)(6486002)(6666004)(316002)(86362001)(110136005)(508600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b2tIbXh1a1gxeHhDOW9DMG1NVzc4N1BOcHdjd0p1RzRJTWJ3M09SMGxxSVlj?=
 =?utf-8?B?T3ZuVjJ4SzFPRGhTcStadEN0WGdoTjgyMFpvZHA4WU96ZzVmdnI2RC83Q0tG?=
 =?utf-8?B?NjRhVFRoR3BxTm12cGtxU1ZaMlUwd09lU29TNDRnU2FGZnhrUEtCVWFndjVD?=
 =?utf-8?B?VjI5L1laYjJHVlhQbVdrTjV3UDhTWGZQVU9ucnh6T2RkRGRKV1dTRXduY1BG?=
 =?utf-8?B?ZjN6VUYyTExIVlpta1A4bzFqZVNNWFlzNENZb2R1T0ZlOEV5TjhWbGY0a2dt?=
 =?utf-8?B?K2NST2lKczhxYmdVWDhxWUhrazlHUXkxT1M4d2xqakJoYXYrRnNhZVVkZlVp?=
 =?utf-8?B?UUVSWWtqdDBXdmluUVRSd3RnRStNdHlJdnh0emVMVXdpL3E4MmVaVFVrdTlG?=
 =?utf-8?B?V2xIU0E0MlFPbDlOVFFHSlFsRytwb0lYS1RFL3IvYitML0s0dExNdEJIWEo4?=
 =?utf-8?B?WCt3VXpobGF4T3VXdVlsOEtqMkdHT1NkVFMweFNvdWhGaUNndlU5ekZOOFdO?=
 =?utf-8?B?T2NMSHI2ZmRTRnM0UExnMGpDNTVhYzFyQkNOMWVXUTJlYnRBRFVRRG9HZFZP?=
 =?utf-8?B?RW9NL01VQkR3aWVHdVY5NmJBckVQRDMrZEw4VXpuNGRuRDNzeW9DQkxPT2dW?=
 =?utf-8?B?aVhodnhVbHdkZ1VnaHU3R05VNG9MekppZDJ6ZEZXVlF5alVlVGw4d0R2TkFJ?=
 =?utf-8?B?RDVXcUNCZ2wxZFFMT1l1UUN4Z1JuMENJNEQzMlBqdWVBYk9TV2F6UTVEdEZt?=
 =?utf-8?B?eXUrc2ZQbmZ3R0xEYnFIUFJqakg3NUkxcExNNmRLaTBubUpsdkMvNFpSTUVG?=
 =?utf-8?B?NFBkaE9vT0dWNENXOHczMzF1Z3ZCRmhtd1pMTHFJeTRlaVdvVUxjb1VNWElC?=
 =?utf-8?B?M0U3UVFzaTFZWkEzNkpFWDVYNzJ1OHBiNGZ4d3FaS3cvZHFaVzN6NktTVlh3?=
 =?utf-8?B?YWM1ZEZnQ1JoZ0g0SWlKTGZTdUljWU1CK3g1YWdCeTRxaVB1RTVESFNrRndm?=
 =?utf-8?B?K2J2bjFjZ3ZLN21ScG5PbWxjcEFaNFBMU29pTWlwQW9jenduWHRxRjRITEFn?=
 =?utf-8?B?RDlJc1dZMm5aK1ZnOXRmQzAwSHRRRS9rdGZjLzlGS2lBajByVFYyVDlDcXNB?=
 =?utf-8?B?blRraFZOL2YyaittekJ3U3N6VjIzTDlzMko4d1pUVXoxZzBmbzAzRUJiYm5t?=
 =?utf-8?B?L2I3YklPVFBVTFJqRHhLaE5RcVVpSmJkYUtMT1BvdXY1bXdJRXUrL1NWSkMr?=
 =?utf-8?B?UXVLTWhWZTYzZUIzdlh5VDk4bER6K3VsK0tJUTZ2M0lKQVhhNkF1cWdha2Qy?=
 =?utf-8?B?Zjg5UHVML0k2cVFOMXBqd0NvNUNFTGQxQ3AzN2IxRUxpZlVrZDlpVlRFajM5?=
 =?utf-8?B?eHpRM3VTU0ZrTFNId0hGSHF6U0hRL0lIRmp3M05iYWlhbjJyTEVFUjRlRVFh?=
 =?utf-8?B?R0E2c0VpR3JTRm5rZ3dIdWJUVVo5cDVSbzhVZmw2b29PQTVVcDQ5ak54eklE?=
 =?utf-8?B?WmErUXZXMndPQXBBdGlhVzVaTU93LzVZUkQ5dUxHaWtCTUw5cldRYmxpaVds?=
 =?utf-8?B?Z0tvRDUyc3JDM000N2s2Mk5RZGZseEtNUnc0a1AvNDFieE15c3pnMlhKODR6?=
 =?utf-8?B?eFI3UFdaQnFBYWUxejMycUUwRTlzR3BSUnMvUHVCSG9PdzlkN3VoUmh6QjF4?=
 =?utf-8?B?NnlHVEZONU9xT0lNTEg4VFd4RVF5bXFLSW9nUUJiclV1WGJzRkNzcXNyc3Nt?=
 =?utf-8?B?VlpsZEJrMDFFWG9BZVJiRjMyYnZSOGhwUUZGK3pTYk81dzEvU2swYkZHZjla?=
 =?utf-8?B?ZFNRc2dob2FIUTVxbCtvbW0yai94YUlyREt6Y1dqNENJQ2ZuV0FOSHhNR2xD?=
 =?utf-8?B?VkFHQUg0cS95bmZDaHlmZ2dzcTQyUlV0K3RJazJjanlEc2d2WjhSQk5uc1hh?=
 =?utf-8?B?dWZGMS96bEhMNk4vRWpYV3pSZ3d1ZFZDYW1ydURsSUZjemR6cDZKcDdqUjV5?=
 =?utf-8?B?OGJ5ZGI4TDdhS0dkTlBKb25saGo2MVEvZzVIWkdmTDY3a1FlQjBjbFBzcWVW?=
 =?utf-8?B?YmhkQ3hPeDh6VjdyUlVhTy9vcHBqL0ZhdkJzYy8yelNOam94MHY2ZXlTYzFu?=
 =?utf-8?B?N0xPMXRtRS8wdDNxWGlvMmVySGFEVk1Sb2ZhbjVMNWRtb1czVm9aajQxRFFs?=
 =?utf-8?B?VjQ2VkpqbDdKWEZXQzRIcjVvMDZOd2x6Ty9FTFliZ3lVUUo4WSsrMnVVeUtD?=
 =?utf-8?B?OFRBNHlKNFRHWVNEVnUzbVR0UWptMWtYVC9pRWE1NklWY28zVHZTU2liaWNB?=
 =?utf-8?B?cGkwYXB5VTRGbXVaaHRGWWJJR1R0UUtSaVVGejY4TVQ4UUgyUk44Zz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed65c17f-5a01-43ac-f174-08da4ab73ab5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 08:00:05.1913
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: neXRs6nsBLbccWu/zUGzDTCQXJjAfOX/4Wsmc3makQo+pnSt14Tghpd50QdOpxH+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4433
Message-ID-Hash: 5BVBO6KLZEQKL5XFBNDGYZ4VF6PM6D4J
X-Message-ID-Hash: 5BVBO6KLZEQKL5XFBNDGYZ4VF6PM6D4J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Don't use typeof in va_arg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5BVBO6KLZEQKL5XFBNDGYZ4VF6PM6D4J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDYuMjIgdW0gMDk6NTIgc2NocmllYiBKaWFiaW5nIFdhbjoNCj4NCj4NCj4gT24gMjAy
Mi82LzEwIDE1OjI0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMTAuMDYuMjIgdW0g
MDk6MjAgc2NocmllYiBXYW4gSmlhYmluZzoNCj4+PiBGaXggZm9sbG93aW5nIGNvY2NpY2hlY2sg
d2FybmluZzoNCj4+PiAuL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmM6NzU6
MzktNDU6IEVSUk9SOiByZWZlcmVuY2UgDQo+Pj4gcHJlY2VkZWQgYnkgZnJlZSBvbiBsaW5lIDcw
DQo+Pj4NCj4+PiBVc2UgJ3N0cnVjdCBkbWFfZmVuY2UgKicgaW5zdGVhZCBvZiAndHlwZW9mKCpm
ZW5jZXMpJyB0byBhdm9pZCB0aGlzDQo+Pj4gd2FybmluZyBhbmQgYWxzbyBmaXggb3RoZXIgJ3R5
cGVvZigqZmVuY2VzKScgdG8gbWFrZSB0aGVtIGNvbnNpc3RlbnQuDQo+Pg0KPj4gV2VsbCB0aGF0
IGRvZXNuJ3QgbG9va3MgY29ycmVjdCB0byBtZS4NCj4+DQo+PiAqZmVuY2Ugc2hvdWxkIGJlIHZh
bGlkIGF0IHRoaXMgcG9pbnQsIHdoeSBkb2VzIGNvY2NpY2hlY2sgdGhpbmdzIGl0IA0KPj4gaXMg
ZnJlZWQ/DQo+DQo+ICpmZW5jZSBpcyB2YWxpZC4gQ29jY2ljaGVjayByZXBvcnRzIHRoaXMgYmVj
YXVzZSBmZW5jZSBpcyBmcmVlZC4NCj4gQnV0IHVzZSAnc3RydWN0IGRtYV9mZW5jZSAqJyBjYW4g
YXZvaWQgdGhpcyB3cm9uZyByZXBvcnQuDQoNCldlbGwgaW4gdGhpcyBjYXNlIHRoYXQncyBqdXN0
IGEgY2xlYXIgTkFLLg0KDQpVc2luZyB0eXBlb2YoKnZhcikgaXMgcGVyZmVjdGx5IHZhbGlkIGFu
ZCBwcmVmZXJyZWQgc2hvdWxkIHRoZSB0eXBlIA0KY2hhbmdlIGF0IHNvbWUgcG9pbnQuDQoNCkFz
IGZhciBhcyBJIGNhbiBzZWUgeW91ciBjb2NjaSBzY3JpcHQgaXMgc29tZWhvdyByZXBvcnRpbmcg
YSBmYWxzZSB3YXJuaW5nLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEkgYWxzbyBn
cmVwIGFsbCBjb2RlIGFuZCBmaW5kIGl0J3MgdW51c3VhbCB0byB1c2UgJ3R5cGVvZicgaW4gdmFf
YXJnLCANCj4gb25seSB0d28gZmlsZXMuDQo+DQo+IGdyZXAgLVIgInZhX2FyZygiwqAgLiB8IGdy
ZXAgJ3R5cGVvZicNCj4gLi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jOsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmZW5jZXNbaV0gPSANCj4gdmFfYXJnKHZhbGlz
dCwgdHlwZW9mKCpmZW5jZXMpKTsNCj4gLi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVu
d3JhcC5jOiBkbWFfZmVuY2VfcHV0KHZhX2FyZyh2YWxpc3QsIA0KPiB0eXBlb2YoKmZlbmNlcykp
KTsNCj4gLi9saWIvdGVzdF9zY2FuZi5jOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eXBlb2Yo
KmV4cGVjdCkgZ290ID0gKnZhX2FyZyhhcCwgDQo+IHR5cGVvZihleHBlY3QpKTvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBcDQo+DQo+IEFuZCBvdGhlciBmaWxlcyBhbGwgdXNlIGRlY2xhcmF0
aW9uIG5hbWUgZGlyZWN0bHkuDQo+IFNvIEkgc2VuZCB0aGlzIHBhdGNoIG1ha2VzIGNvZGUgY2xl
YXJlciBhbmQgZml4IHRoZSB3cm9uZyB3YXJuaW5nIGJ5IA0KPiB0aGUgd2F5Lg0KPg0KPiBUaGFu
a3MsDQo+IFdhbiBKaWFiaW5nDQo+DQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+
DQo+Pj4NCj4+PiBGaXhlczogMGM1MDY0ZmE4ZDVhICgiZG1hLWJ1ZjogY2xlYW51cCBkbWFfZmVu
Y2VfdW53cmFwIHNlbGZ0ZXN0IHYyIikNCj4+PiBTaWduZWQtb2ZmLWJ5OiBXYW4gSmlhYmluZyA8
d2FuamlhYmluZ0B2aXZvLmNvbT4NCj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLXVud3JhcC5jIHwgNCArKy0tDQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jIA0KPj4+IGIvZHJpdmVycy9kbWEtYnVmL3N0
LWRtYS1mZW5jZS11bndyYXAuYw0KPj4+IGluZGV4IDQxMDVkNWVhOGRkZS4uMTEzN2E2ZDkwYjMy
IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMN
Cj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jDQo+Pj4gQEAg
LTU2LDcgKzU2LDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKm1vY2tfYXJyYXkodW5zaWdu
ZWQgaW50IA0KPj4+IG51bV9mZW5jZXMsIC4uLikNCj4+PiDCoCDCoMKgwqDCoMKgIHZhX3N0YXJ0
KHZhbGlzdCwgbnVtX2ZlbmNlcyk7DQo+Pj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbnVt
X2ZlbmNlczsgKytpKQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCBmZW5jZXNbaV0gPSB2YV9hcmcodmFs
aXN0LCB0eXBlb2YoKmZlbmNlcykpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBmZW5jZXNbaV0gPSB2
YV9hcmcodmFsaXN0LCBzdHJ1Y3QgZG1hX2ZlbmNlICopOw0KPj4+IMKgwqDCoMKgwqAgdmFfZW5k
KHZhbGlzdCk7DQo+Pj4gwqAgwqDCoMKgwqDCoCBhcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVh
dGUobnVtX2ZlbmNlcywgZmVuY2VzLA0KPj4+IEBAIC03Miw3ICs3Miw3IEBAIHN0YXRpYyBzdHJ1
Y3QgZG1hX2ZlbmNlICptb2NrX2FycmF5KHVuc2lnbmVkIGludCANCj4+PiBudW1fZmVuY2VzLCAu
Li4pDQo+Pj4gwqAgZXJyb3JfcHV0Og0KPj4+IMKgwqDCoMKgwqAgdmFfc3RhcnQodmFsaXN0LCBu
dW1fZmVuY2VzKTsNCj4+PiDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBudW1fZmVuY2VzOyAr
K2kpDQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQodmFfYXJnKHZhbGlzdCwgdHlw
ZW9mKCpmZW5jZXMpKSk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQodmFfYXJn
KHZhbGlzdCwgc3RydWN0IGRtYV9mZW5jZSAqKSk7DQo+Pj4gwqDCoMKgwqDCoCB2YV9lbmQodmFs
aXN0KTsNCj4+PiDCoMKgwqDCoMKgIHJldHVybiBOVUxMOw0KPj4+IMKgIH0NCj4+DQo+DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
