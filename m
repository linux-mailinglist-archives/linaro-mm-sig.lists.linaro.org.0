Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D5E4BD785
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Feb 2022 09:25:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DB0B3EEDD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Feb 2022 08:25:03 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2051.outbound.protection.outlook.com [40.107.236.51])
	by lists.linaro.org (Postfix) with ESMTPS id 5104E3ED6F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Feb 2022 08:25:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcUb4351a4Ud51brDMuhbsmnlF/KBnIAVI2jpqiT67Vngzoz75ASuLL6INf3VzvfGOG8horivleZx6W8AV8duXs5qHykWHgkVMUHOyY6hP6o7grY6h9OUtkb2TDNSFhKk9i52BzHy7PCcuhCd4gRPXHPpGCpJV/+Apa4jjHbTV7ULZBnxGB+4UcZinx9reUDSJvzorCPi04qQwOnnl6DyNuY/4pMqCe5z7MMChCAy9Uc5zWTiK6lNdUQy19DFZEAZ1u8IGrGEJAug7PIMICGDqjb3Rh5wwTiSqhrJVcfLX6/BeOa1T84r9x2mcEoSoVnFdsrMahdKn4Srpw/tEzF5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5OEVVJ/IdAuoLTgcNxL7S4kTR12vJyAKLaqR1j1/plQ=;
 b=aDN4K5JDc2QXTeSv/XnPLLo3HfFbVlBs9cEN8yLUNahUGE2btGrO0Z8cU82LknALaXz6gqYjI4zKH400YTgputPha7bgqaGNrhHsbaOw2dM9HY4LoWyhwfE0n8UjF2f72ofLWJAa4r6PWR7NuA5lDWro/A6GvNeqRBEW5ehPwP2IxQJ/P/Y+c/IOycEc1H9dq1+Feu9VPl/pzehRZt2Mr9zihkoSZqwnJk/yOjAtMwPda+jAdyTjWLVmzmTeTRNlytuPZrNQyh5sbixYpxPjjQDydZLbzWNStJ04eVKyTCPdvM1/fLZ2xmG5GFpc/Q4C3Sbg9Pgr+Gxd4H7mzJ60Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OEVVJ/IdAuoLTgcNxL7S4kTR12vJyAKLaqR1j1/plQ=;
 b=LdmzQHXB3/hhySCNVR8oy5jQVPpRgY88kd099lAfzqjGXLxVQON8i++8hGV4uQlcHUaQOhm1msrVo4akOynDU6AwJlVdiiB5mHkM6vdx28Qg4OnWypQHKxwWgP/NtT9pq9AslT1MBWJXXYfHCgV5aIYdrBeDdUbZiogvUls23RQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BYAPR12MB4709.namprd12.prod.outlook.com (2603:10b6:a03:98::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.26; Mon, 21 Feb
 2022 08:24:58 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581%6]) with mapi id 15.20.4995.027; Mon, 21 Feb 2022
 08:24:58 +0000
Message-ID: <25ffdb03-b767-9e64-a636-55df2edc0d4c@amd.com>
Date: Mon, 21 Feb 2022 09:24:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Qiang Yu <yuq825@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220217090440.4468-1-qiang.yu@amd.com>
 <5d3fdd2c-e74a-49f4-2b28-32c06483236f@amd.com>
 <CAKGbVbtLTBJPF5eTu4rABUTBa8eqjQvqjo1AEUrzgPgYgCREuA@mail.gmail.com>
 <dac70c05-e712-d2e3-2267-278380895f1e@amd.com>
 <CAKGbVbvtLbDiKrX80-dMnipdLkTE+FP=g_mx37e12fuMtA1Y4Q@mail.gmail.com>
 <ca27a9c6-f390-a938-dd66-ac23f3b44dc4@amd.com>
 <CAKGbVbv4UFCybS_OFj5UkDgevbrB5qe3pv+0nHv9WdefYhy6Ww@mail.gmail.com>
 <6711073b-8771-5750-33f7-b72333b411c6@amd.com>
 <CAKGbVbvR+msXjrsXmDM8QTmsCP03hL5-q5CTJBYu4mm=NQd01A@mail.gmail.com>
 <a11b7073-6597-8e87-b724-33acab32e791@gmail.com>
 <CAKGbVbuJ-QdeoMTg=_O=1x5A5tbqZftsjt8aCCoVkAekci0USA@mail.gmail.com>
 <d830bb82-63ea-2de6-6d10-3a401ac0dcf0@amd.com>
 <CAKGbVbtorRius+Sq1_3SPUF3JzA00U747noSGhx7eP8Vn1rSDg@mail.gmail.com>
 <47c3a681-379e-18d4-86da-c48721081911@gmail.com>
 <CAKGbVbvmxOCZWYvB+ZSL7oHJmbm8vPgM-NJzadrEG1E=2c2Eyg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAKGbVbvmxOCZWYvB+ZSL7oHJmbm8vPgM-NJzadrEG1E=2c2Eyg@mail.gmail.com>
X-ClientProxiedBy: AM6P193CA0051.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::28) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f0cad0cb-c090-42f7-7e9e-08d9f513a566
X-MS-TrafficTypeDiagnostic: BYAPR12MB4709:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR12MB4709DCDF98EFD8D093F9E10E833A9@BYAPR12MB4709.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	E1QNRDcBeZdKyzaalbgy5hH/yE0o6xnI8JeIhwiTqHipE+QX4vp9152u53N5yaLxyegIqBKHoT+OWQXfFjUNzllgtfz7OcJ+0AabZSrq14UR59nAaPbvr0DPD27vW+WJ5vx1iWBM9HZsYxeQfCgw7PPIBV/zMdOxbPk2wwQRCfmBPBBQm5kRcyp9uK60VD1cB3hVwc4CKPl6qg7BGnvf7Vv/QXUNhhy4zjRH3Vv/TummcrbCyvxYFHQduaTrKXaScr32NtYH+t8GIANhJbWcgzZQvMwNAQx8PWwvCJ5mbbIw/eN5Mrjw9SqLAnTKQDm+KFj3S9ie/DR1gLsB2D9/qK2YimxuZrVmIFBxTtERaYIoF2FnE1QrjzWnpOwuBAHmMJ1ccbmvWiDaU6Wq4VZWJYzKwVRbfkZXkqOL/nATnYHcq0TMs3yooRE0bgIf4ums0N8UTXzoTWJ4RIg2bkdZTOxEATrXxZWi3veSVVdfJRNsyiSTI6Q5KKi8X1fRL1dEgRcWod+ZBtddoH/TzkYa89TpGZSuVygwf7icrw6bnHstG4D7GaxX2t89hOaftkgq1inpQ2Lxk9jFC3HuO27z/KumdIeQ3Qjre8hKAddRVeGIOBqlqgoPKYPh5J9sJXYZ7enqGwIl5ErNcgucXbCbxPAXkpiNve01VTiFQZbdl7SMeoko2xJRvAISK6SkK8O6aG8nmGyMkRp5wQ+Y1N3zDJpPDarIgFeWlblYO0figSPexW2NVwMz5/f06vlp9xfe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(6512007)(31696002)(6486002)(508600001)(6506007)(86362001)(66574015)(83380400001)(38100700002)(53546011)(186003)(26005)(2616005)(5660300002)(7416002)(8936002)(30864003)(8676002)(66946007)(66476007)(66556008)(4326008)(36756003)(31686004)(54906003)(2906002)(316002)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dm9IaDRjbys4b3UvNmxYYkkvVmZQbUFERUs1TWNjbFlWdlRXOWprME1sL0lE?=
 =?utf-8?B?QkhNZ0c2eXJMa1Z1UXN6LzJBakc3cnJtVjVTbXBPSE1Mcjk0Z1lHemo4TmJN?=
 =?utf-8?B?MjdQeDRPMXBnczBYZE5UbnlHVUllN3RFZHd2bk1PSG1VN2JVVXZWVHNXY042?=
 =?utf-8?B?T1l5MlNqalo1YkwwaEtFeTRYb2g2b1h4bWU1TFBVZHBOTUptMDBleVNGQVBX?=
 =?utf-8?B?bzE3RUl3ek41d0c3dHMzU3RwaS9FMWhUNmdjSVFjNlZxT2k4L2MvbDRLazR6?=
 =?utf-8?B?Q3RvamMxSUFNU2VpU2x6QStJWGxDZWU1NzlKdDdPQk00N2pNNDI5dmRKSDc4?=
 =?utf-8?B?S1RlSHY3cmFvMUhwVVBxVUJwQTl4V05UQlNOM2dRRGV0NVptUGxwdW5vQU1D?=
 =?utf-8?B?MW00KzhGU3hFa3lCYmhrWW1ITTlkb2lGQUN4VmlKZTVPOUlHcmRsL2Zyajc3?=
 =?utf-8?B?RzlFdzlSYmdUM3BLb3RacGhUS013a1pFUkJwNW50SlRrZnBMOUVVWGZmdlB4?=
 =?utf-8?B?VXdpQzhtS2dwVGNRZWpldmdCeHpTTFkxTlRGY1dmYi9ZOWUzMnlBMms1U0tt?=
 =?utf-8?B?T1d2UnI3bnAvaGlyaUIwSXczbHhmZU9WaWhob2ZUdGUxY0pXSjcxS0ZIajg2?=
 =?utf-8?B?NUlBN0Fqc0I5elFpdEo2N2hBanp3RzNqZHVNOUhIZmtIN0VTZG0xSzRiV0NW?=
 =?utf-8?B?MnRMRnJKckN1YkJNd2JDOFlIYXRZYXhjaTFET2dvenNNM3lPRlpiVzBranJh?=
 =?utf-8?B?OHpGTU9pWDA1dlpaUWh3OU1ub3cvemtKTTA3bUw0Q3loNnY1dmtFYUNwSUhR?=
 =?utf-8?B?eVpncFpKankrSEdzcTZPVmluc1NiQXprbnJuYXNPWVV1TGdHeGU5eTFqc21D?=
 =?utf-8?B?WHozUW9KNU5kTzIwblNWcGpvQnFRb1dkaWhMNjlSNGdneFZBWjJ0dkF6dWxI?=
 =?utf-8?B?RXVaYTZINU5uVVI0d3lNK1RuUW5nRUt2RVdVSjEwallNdFlDc0Q4R2xYaTBD?=
 =?utf-8?B?L2w1bi9wZHVIQlpxVmNDeGVJd25xcDBDTjN3d0lLeTQycEhoT0kxdnVTaG11?=
 =?utf-8?B?ZTVkOXZXY0VoU0YxbFpreDJjeU9WNkZGdllZODRKNXJaTTNJdmVpWFg2YWRz?=
 =?utf-8?B?MmJqYmxJOEVCdjc2eFZVUzBSQ2kwRGNsS2RyY2pod1VUTHo4YnpmM0N0TDB1?=
 =?utf-8?B?QUsrTE5RNTV6S213VVBQRzAxNDFMLzJSWmFVdVp4clo2eFdpWlo0Z3dwMGxD?=
 =?utf-8?B?WDQzVGFKOFU0OG5RS3VEUHRwNjd6RVNoaTBTdExHaGxaYU5hZ0dsWGdpR01V?=
 =?utf-8?B?OXlZaDZoSlpWRVNteXU2bmVVWHRBU2IrMExHVVR2YzdSWnJ1RkswVHZxWDZn?=
 =?utf-8?B?TEhMNEVRamhuQmhEaXRaZUdZZGcwbTUwekZQNEd4NkhkYlJQQWU1QmZwaDAr?=
 =?utf-8?B?YURXOXRjV2d3a2c4Vi8rVGhTYXJzNzVQcnlzTncwSnRJQ0o3cnhtcEZaR2x0?=
 =?utf-8?B?Mng5MzFSVXhXR1FFSmxzN3hHdzcxbThmRHg4SDZWeGcyYnNmRHNrOGl5WlNw?=
 =?utf-8?B?NnZGYm9ISlh5QThUWGlsQTBkQ2YvR0V4TFhjKzdnZ2c4YWloSU1QdkdrM094?=
 =?utf-8?B?UUZtYm5vTnlHQ1RNWlNJaERVN01oSXcvdll5SFJaOFp3UC9hTG83NEJRdXdi?=
 =?utf-8?B?RjZyNlJZdFN3bTdaWm9UMFVQVjN6WXJERTA4eXBSWEMzNGRheUNTOTFFbGM4?=
 =?utf-8?B?Tmtia1ZiMWVVN3NxSDR1cndYOHJvTDQ3UWw5QytIMmQ3aEZVRTIwNjBYbEdY?=
 =?utf-8?B?UUUyNGZsRkE3NkxXRkRLOU41TnQxZ0Ftdnh1bE1PaTdaYnpiTGZ3cjdZOGhw?=
 =?utf-8?B?cHFPZVBjdWM4dzFGeE05cktZVlRSK005b29HbVBlT3BLUmNWakFHNDZOZklJ?=
 =?utf-8?B?eFM3VFQwVXBDQWdKSDRVaDVKL0VoTnRPL2FpdlhKZkFOVFhwa09UWVpPUWJu?=
 =?utf-8?B?N1Rjb3MrWEdKQm55a2JMamJKMnpuOGpWOFRlckdNQUFLUm54VnovdEN4Zmpi?=
 =?utf-8?B?WEt5ZFhIWkdkcG5nVCt4aWgzWHgra0ZHNFMzTWx1cU9VdzdVbHhBd1hMakxi?=
 =?utf-8?Q?6ve8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0cad0cb-c090-42f7-7e9e-08d9f513a566
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2022 08:24:58.0589
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I3FeNYtehwlqtVQCeb8WZTmeMR1Pcgxmynx+qu99BYLwe/sQgq73hPjGm4J5M7vR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4709
Message-ID-Hash: QTL6LTFMTSQJZAKFBPLF3SLEQD5EXKZX
X-Message-ID-Hash: QTL6LTFMTSQJZAKFBPLF3SLEQD5EXKZX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@linux.ie>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Qiang Yu <qiang.yu@amd.com>, amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: check vm bo eviction valuable at last
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTL6LTFMTSQJZAKFBPLF3SLEQD5EXKZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMDIuMjIgdW0gMDQ6Mjggc2NocmllYiBRaWFuZyBZdToNCj4gT24gRnJpLCBGZWIgMTgs
IDIwMjIgYXQgNjoyNCBQTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxja29lbmlnLmxlaWNodHp1bWVy
a2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBBbSAxOC4wMi4yMiB1bSAxMToxNiBzY2hyaWViIFFp
YW5nIFl1Og0KPj4+IFtTTklQXQ0KPj4+Pj4gSWYgYW1kZ3B1X3ZtX3JlYWR5KCkgdXNlIGV2aWN0
aW5nIGZsYWcsIGl0J3Mgc3RpbGwgbm90IGVxdWl2YWxlbnQgdG8gY2hlY2sNCj4+Pj4+IHZtIGlk
bGU6IHRydWUgLT4gdm0gaWRsZSwgZmFsc2UgLT4gdm0gbWF5IGJlIGlkbGUgb3IgYnVzeS4NCj4+
Pj4gWWVhaCwgYnV0IHdoeSBzaG91bGQgdGhhdCBiZSByZWxldmFudD8NCj4+Pj4NCj4+Pj4gVGhl
IGFtZGdwdV92bV9yZWFkeSgpIHJldHVybiBpZiB3ZSBjYW4gZG8gcGFnZSB0YWJsZSB1cGRhdGVz
IG9yIG5vdC4gSWYNCj4+Pj4gdGhlIFZNIGlzIGlkbGUgb3Igbm90IGlzIG9ubHkgcmVsZXZhbnQg
Zm9yIGV2aWN0aW9uLg0KPj4+Pg0KPj4+PiBJbiBvdGhlciB3b3JkcyBhbnkgQ1Mgb3IgcGFnZSB0
YWJsZSB1cGRhdGUgbWFrZXMgdGhlIFZNIGJ1c3ksIGJ1dCB0aGF0DQo+Pj4+IG9ubHkgYWZmZWN0
cyBpZiB0aGUgVk0gY2FuIGJlIGV2aWN0ZWQgb3Igbm90Lg0KPj4+Pg0KPj4+IE15IHBvaW50IGlz
OiB3ZSBjYW4ndCB1c2UgYW1kZ3B1X3ZtX3JlYWR5KCkgdG8gcmVwbGFjZSB2bV9pc19idXN5KCks
IHNvDQo+Pj4gY3VycmVudGx5IHdlIHVwZGF0ZSB2bSBldmVuIHdoZW4gdm0gaXMgYnVzeS4gU28g
d2h5IG5vdCB1c2U6DQo+IFNvcnJ5LCBzaG91bGQgYmUgInZtIGlzIGlkbGUiLg0KPg0KPj4+IGlm
ICghYW1kZ3B1X3ZtX3JlYWR5KCkgfHwgdm1faXNfYnVzeSgpKSByZXR1cm47DQo+Pj4gaW4gYW1k
Z3B1X2dlbV92YV91cGRhdGVfdm0oKSwgYXMgeW91IG1lbnRpb25lZCB3ZSBwcmVmZXIgdG8gbm90
DQo+Pj4gdXBkYXRlIHZtIHdoZW4gaXQncyBpZGxlLg0KPj4gQmVjYXVzZSB1cGRhdGluZyB0aGUg
Vk0gd2hpbGUgaXQgaXMgYnVzeSBpcyBwZXJmZWN0bHkgZmluZSwgd2UgZG8gaXQgYWxsDQo+PiB0
aGUgdGltZS4NCj4+DQo+IFllYWgsIGFzIGFib3ZlLCBteSB0eXBvLg0KPg0KPj4gV2Ugc2hvdWxk
IGp1c3Qgbm90IHVwZGF0ZSBpdCB3aGVuIGl0IGlzIGFscmVhZHkgaWRsZSBhbmQgd2FzIGNvbnNp
ZGVyZWQNCj4+IGZvciBldmljdGlvbi4NCj4gImFuZCIsIG5vdCAib3IiPw0KPg0KPj4gSW4gdGhp
cyBzaXR1YXRpb24gaXQgbWFrZXMgbW9zdCBvZiB0aGUgdGltZSBzZW5zZSB0byBrZWVwDQo+PiBp
dCBpZGxlIGFuZCBwb3N0cG9uZSB0aGUgdXBkYXRlIHRpbGwgdGhlIG5leHQgY29tbWFuZCBzdWJt
aXNzaW9uLg0KPj4NCj4+Pj4+Pj4gVGhlbiB3ZSBjYW4ga2VlcCB0aGUgZXZpY3RpbmcgZmxhZyBh
Y2N1cmF0ZSAoYWZ0ZXIgc29sdmluZyB5b3VyDQo+Pj4+Pj4+IGNvbmNlcm4gZm9yIHRoaXMgcGF0
Y2ggdGhhdCBldmljdGlvbiBtYXkgZmFpbCBsYXR0ZXIgYnkgZnVydGhlciBkZWxheQ0KPj4+Pj4+
PiB0aGUgZmxhZyB1cGRhdGUgYWZ0ZXIgZXZpY3Rpb24gc3VjY2VzcykuDQo+Pj4+Pj4gVGhhdCB3
b24ndCB3b3JrLiBTZWUgd2UgbmVlZCB0byBtYXJrIHRoZSBWTSBhcyBldmljdGVkIGJlZm9yZSB3
ZQ0KPj4+Pj4+IGFjdHVhbGx5IGV2aWN0IHRoZW0gYmVjYXVzZSBvdGhlcndpc2Ugc29tZWJvZHkg
Y291bGQgdXNlIHRoZSBWTSBpbg0KPj4+Pj4+IHBhcmFsbGVsIGFuZCBhZGQgYW5vdGhlciBmZW5j
ZSB0byBpdC4NCj4+Pj4+Pg0KPj4+Pj4gSSBzZWUsIG1ha2UgdGhpcyB0b28gYWNjdXJhdGUgc2hv
dWxkIGNvc3QgdG9vIG11Y2ggbGlrZSBob2xkaW5nIHRoZQ0KPj4+Pj4gZXZpY3Rpb25fbG9jayB3
aGVuIGV2aWN0aW9uLiBCdXQganVzdCBkZWxheSBpdCBpbg0KPj4+Pj4gYW1kZ3B1X3R0bV9ib19l
dmljdGlvbl92YWx1YWJsZSgpDQo+Pj4+PiBjb3VsZCBhdm9pZCBtb3N0IGZhbHNlIHBvc2l0aXZl
IGNhc2UuDQo+Pj4+IFBhcnRpYWxseSBjb3JyZWN0LiBBbm90aGVyIGZ1bmRhbWVudGFsIHByb2Js
ZW0gaXMgdGhhdCB3ZSBjYW4ndCBob2xkIHRoZQ0KPj4+PiBldmljdGlvbiBsb2NrIGJlY2F1c2Ug
dGhhdCB3b3VsZCByZXN1bHQgaW4gbG9jayBpbnZlcnNpb24gYW5kIHBvdGVudGlhbA0KPj4+PiBk
ZWFkbG9jay4NCj4+Pj4NCj4+Pj4gV2UgY291bGQgc2V0IHRoZSBmbGFnIGxhdGVyIG9uLCBidXQg
YXMgSSBzYWlkIGJlZm9yZSB0aGF0IHdoZW4gd2Ugc2V0DQo+Pj4+IHRoZSBldmljdGVkIGZsYWcg
d2hlbiB0aGUgVk0gaXMgYWxyZWFkeSBpZGxlIGlzIGEgZGVzaXJlZCBlZmZlY3QuDQo+Pj4+DQo+
Pj4gQXMgYWJvdmUsIHRoaXMgY29uZnVzZSBtZSBhcyB3ZSBjYW4gZXhwbGljaXRseSBjaGVjayB2
bSBpZGxlIHdoZW4NCj4+PiB1c2VyIHVwZGF0ZSB2bSwgd2h5IGJvdGhlciB0byBlbWJlZCBpdCBp
biBldmljdGluZyBmbGFnIGltcGxpY2l0bHk/DQo+PiBXZWxsIGFzIEkgc2FpZCBpdCdzIGlycmVs
ZXZhbnQgZm9yIHRoZSB1cGRhdGUgaWYgdGhlIFZNIGlzIGlkbGUgb3Igbm90Lg0KPj4NCj4+IFRv
IHN1bW1hcml6ZSB0aGUgcnVsZXMgb25jZSBtb3JlOg0KPj4gMS4gV2hlbiBWTSBwYWdlIHRhYmxl
cyBhcmUgdXNlZCBieSBDUyBvciBwYWdlIHRhYmxlcyB1cGRhdGVzIGl0IGlzDQo+PiBjb25zaWRl
cmVkIGJ1c3ksIGUuZy4gbm90IGlkbGUuDQo+Pg0KPj4gMi4gV2hlbiB3ZSB3YW50IHRvIGV2aWN0
IGEgVk0gaXQgbXVzdCBiZSBpZGxlLiBBcyBzb29uIGFzIHdlIGNvbnNpZGVyZWQNCj4+IHRoaXMg
d2Ugc2hvdWxkIHNldCB0aGUgZXZpY3RlZCBmbGFnIHRvIG1ha2Ugc3VyZSB0byBrZWVwIGl0IGlk
bGUgYXMgbXVjaA0KPj4gYXMgcG9zc2libGUuDQo+Pg0KPj4gMy4gV2hlbiB3ZSB3YW50IHRvIHVw
ZGF0ZSB0aGUgcGFnZSB0YWJsZXMgd2UganVzdCBuZWVkIHRvIGNoZWNrIGlmIHRoZQ0KPj4gVk0g
aXMgaWRsZSBvciBub3QuDQo+Pg0KPiBCdXQgbm93IHdlIGRvZXMgbm90IGNoZWNrIHZtIGlkbGUg
ZGlyZWN0bHkgaW4gYW1kZ3B1X2dlbV92YV91cGRhdGVfdm0oKS4NCj4gSWYgVk0gYm8gaGFzIG5v
dCBiZWVuIGNvbnNpZGVyZWQgZm9yIGV2aWN0aW9uLCBpdCBjb3VsZCBiZSBlaXRoZXIgaWRsZSBv
ciBidXN5Lg0KPg0KPiBKdXN0IHdhbnQgdG8gY29uZmlybSBpZiB0aGUgZml4IHNob3VsZCBiZSBv
bmx5IGNoYW5nZSBhbWRncHVfdm1fcmVhZHkoKQ0KPiB0byB1c2UgZXZpY3RpbmcgZmxhZyBvciBi
ZXNpZGVzIHVzaW5nIGV2aWN0aW5nIGZsYWcsIGFsc28gY2hlY2sgdm1faWRsZSgpIGluDQo+IGFt
ZGdwdV9nZW1fdmFfdXBkYXRlX3ZtKCkuDQoNCk9ubHkgY2hhbmdpbmcgdGhlIGFtZGdwdV92bV9y
ZWFkeSgpIHNob3VsZCBiZSBlbm91Z2guIEl0IGNhbiBiZSB0aGF0IA0KdGhpcyB0aGVuIGJ1YmJs
ZXMgdXAgbW9yZSBpc3N1ZSwgYnV0IHRob3NlIG5lZWQgdG8gYmUgdGFrZW4gY2FyZSBvZiANCnNl
cGFyYXRlbHkgdGhlbi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBSZWdhcmRzLA0K
PiBRaWFuZw0KPg0KPj4gNC4gV2hlbiBhIENTIGhhcHBlbnMgd2UgZG9uJ3QgaGF2ZSBhbm90aGVy
IGNoYW5jZSBhbmQgbWFrZSB0aGUgVk0gYnVzeQ0KPj4gYWdhaW4uIEFuZCBkbyBhbGwgcG9zdHBv
bmVkIHBhZ2UgdGFibGUgdXBkYXRlcy4NCj4+DQo+IEFueXdheSwNCj4NCj4+IFJlZ2FyZHMsDQo+
PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IENoZWNrIHZtIGlkbGUgbmVlZCB0byBob2xkIHJlc3YgbG9j
ay4gUmVhZCB5b3VyIHBhdGNoIGZvciBhZGRpbmcNCj4+PiBldmljdGluZyBmbGFnIGlzIHRvIHVw
ZGF0ZSB2bSB3aXRob3V0IHJlc3YgbG9jay4gQnV0IHVzZXIgdm0gb3BzIGluDQo+Pj4gYW1kZ3B1
X2dlbV92YV91cGRhdGVfdm0oKSBkbyBob2xkIHRoZSByZXN2IGxvY2ssIHNvIHRoZSBkaWZmZXJl
bmNlDQo+Pj4gaGFwcGVucyB3aGVuIGNhbGxpbmcgYW1kZ3B1X3ZtX2JvX3VwZGF0ZV9tYXBwaW5n
KCkgZnJvbQ0KPj4+IHN2bV9yYW5nZV8odW4pbWFwX3RvX2dwdSgpLiBTbyBlbWJlZCB2bSBpZGxl
IGluIGV2aWN0aW5nIGZsYWcNCj4+PiBpcyBmb3Igc3ZtX3JhbmdlXyh1biltYXBfdG9fZ3B1KCkg
YWxzbyBkbyBub3RoaW5nIHdoZW4gdm0gaWRsZT8NCj4+DQo+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4g
UWlhbmcNCj4+Pg0KPj4+PiBSZWdhcmRzLA0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4+DQo+Pj4+PiBS
ZWdhcmRzLA0KPj4+Pj4gUWlhbmcNCj4+Pj4+DQo+Pj4+Pj4gUmVnYXJkcywNCj4+Pj4+PiBDaHJp
c3RpYW4uDQo+Pj4+Pj4NCj4+Pj4+Pj4gUmVnYXJkcywNCj4+Pj4+Pj4gUWlhbmcNCj4+Pj4+Pj4N
Cj4+Pj4+Pj4NCj4+Pj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+Pj4+
Pg0KPj4+Pj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+Pj4+Pj4gUWlhbmcNCj4+Pj4+Pj4+Pg0KPj4+Pj4+
Pj4+PiBSZWdhcmRzLA0KPj4+Pj4+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+
Pj4+PiBSZWdhcmRzLA0KPj4+Pj4+Pj4+Pj4gUWlhbmcNCj4+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+
Pj4gUmVnYXJkcywNCj4+Pj4+Pj4+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+Pj4+Pj4+Pj4NCj4+Pj4+
Pj4+Pj4+Pj4gUmVnYXJkcywNCj4+Pj4+Pj4+Pj4+Pj4gUWlhbmcNCj4+Pj4+Pj4+Pj4+Pj4NCj4+
Pj4+Pj4+Pj4+Pj4+IFdoYXQgd2Ugc2hvdWxkIHJhdGhlciBkbyBpcyB0byBmaXggYW1kZ3B1X3Zt
X3JlYWR5KCkgdG8gdGFrZSBhIGxvb2sgYXQNCj4+Pj4+Pj4+Pj4+Pj4+IHRoZSBmbGFnIGluc3Rl
YWQgb2YgdGhlIGxpbmtlZCBsaXN0Lg0KPj4+Pj4+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4+Pj4+IFJl
Z2FyZHMsDQo+Pj4+Pj4+Pj4+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+Pj4+Pj4+Pj4+Pg0KPj4+Pj4+
Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBhbWQuY29tPg0KPj4+
Pj4+Pj4+Pj4+Pj4+IC0tLQ0KPj4+Pj4+Pj4+Pj4+Pj4+ICAgICAgICAgIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyB8IDg1ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0N
Cj4+Pj4+Pj4+Pj4+Pj4+PiAgICAgICAgICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygr
KSwgMzggZGVsZXRpb25zKC0pDQo+Pj4+Pj4+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4+Pj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4+Pj4+Pj4+Pj4+Pj4gaW5kZXgg
NWEzMmVlNjZkOGM4Li44OGEyNzkxMTA1NGYgMTAwNjQ0DQo+Pj4+Pj4+Pj4+Pj4+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4+Pj4+Pj4+Pj4+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4+Pj4+Pj4+
Pj4+Pj4gQEAgLTEzMDYsNDUgKzEzMDYsMTEgQEAgdWludDY0X3QgYW1kZ3B1X3R0bV90dF9wdGVf
ZmxhZ3Moc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHN0cnVjdCB0dG1fdHQgKnR0bSwNCj4+
Pj4+Pj4+Pj4+Pj4+PiAgICAgICAgICAgICAgcmV0dXJuIGZsYWdzOw0KPj4+Pj4+Pj4+Pj4+Pj4+
ICAgICAgICAgIH0NCj4+Pj4+Pj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+Pj4+Pj4+IC0vKg0KPj4+Pj4+
Pj4+Pj4+Pj4+IC0gKiBhbWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlIC0gQ2hlY2sgdG8g
c2VlIGlmIHdlIGNhbiBldmljdCBhIGJ1ZmZlcg0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gKiBvYmplY3Qu
DQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAqDQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAqIFJldHVybiB0cnVlIGlm
IGV2aWN0aW9uIGlzIHNlbnNpYmxlLiBDYWxsZWQgYnkgdHRtX21lbV9ldmljdF9maXJzdCgpIG9u
DQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAqIGJlaGFsZiBvZiB0dG1fYm9fbWVtX2ZvcmNlX3NwYWNlKCkg
d2hpY2ggdHJpZXMgdG8gZXZpY3QgYnVmZmVyIG9iamVjdHMgdW50aWwNCj4+Pj4+Pj4+Pj4+Pj4+
PiAtICogaXQgY2FuIGZpbmQgc3BhY2UgZm9yIGEgbmV3IG9iamVjdCBhbmQgYnkgdHRtX2JvX2Zv
cmNlX2xpc3RfY2xlYW4oKSB3aGljaCBpcw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gKiB1c2VkIHRvIGNs
ZWFuIG91dCBhIG1lbW9yeSBzcGFjZS4NCj4+Pj4+Pj4+Pj4+Pj4+PiAtICovDQo+Pj4+Pj4+Pj4+
Pj4+Pj4gLXN0YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0
IHR0bV9idWZmZXJfb2JqZWN0ICpibywNCj4+Pj4+Pj4+Pj4+Pj4+PiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSkN
Cj4+Pj4+Pj4+Pj4+Pj4+PiArc3RhdGljIGJvb2wgYW1kZ3B1X3R0bV9tZW1fZXZpY3Rpb25fdmFs
dWFibGUoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywNCj4+Pj4+Pj4+Pj4+Pj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHR0bV9w
bGFjZSAqcGxhY2UpDQo+Pj4+Pj4+Pj4+Pj4+Pj4gICAgICAgICAgew0KPj4+Pj4+Pj4+Pj4+Pj4+
ICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG51bV9wYWdlcyA9IGJvLT5yZXNvdXJjZS0+bnVt
X3BhZ2VzOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICBzdHJ1Y3QgYW1kZ3B1X3Jlc19j
dXJzb3IgY3Vyc29yOw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgIHN0cnVjdCBkbWFfcmVzdl9saXN0
ICpmbGlzdDsNCj4+Pj4+Pj4+Pj4+Pj4+PiAtICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmOw0KPj4+
Pj4+Pj4+Pj4+Pj4+IC0gICAgIGludCBpOw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0NCj4+Pj4+Pj4+Pj4+
Pj4+PiAtICAgICAvKiBTd2Fwb3V0PyAqLw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgIGlmIChiby0+
cmVzb3VyY2UtPm1lbV90eXBlID09IFRUTV9QTF9TWVNURU0pDQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAg
ICAgICAgICAgICByZXR1cm4gdHJ1ZTsNCj4+Pj4+Pj4+Pj4+Pj4+PiAtDQo+Pj4+Pj4+Pj4+Pj4+
Pj4gLSAgICAgaWYgKGJvLT50eXBlID09IHR0bV9ib190eXBlX2tlcm5lbCAmJg0KPj4+Pj4+Pj4+
Pj4+Pj4+IC0gICAgICAgICAhYW1kZ3B1X3ZtX2V2aWN0YWJsZSh0dG1fdG9fYW1kZ3B1X2JvKGJv
KSkpDQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+Pj4+Pj4+
Pj4+Pj4+Pj4gLQ0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgIC8qIElmIGJvIGlzIGEgS0ZEIEJPLCBj
aGVjayBpZiB0aGUgYm8gYmVsb25ncyB0byB0aGUgY3VycmVudCBwcm9jZXNzLg0KPj4+Pj4+Pj4+
Pj4+Pj4+IC0gICAgICAqIElmIHRydWUsIHRoZW4gcmV0dXJuIGZhbHNlIGFzIGFueSBLRkQgcHJv
Y2VzcyBuZWVkcyBhbGwgaXRzIEJPcyB0bw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgICAqIGJlIHJl
c2lkZW50IHRvIHJ1biBzdWNjZXNzZnVsbHkNCj4+Pj4+Pj4+Pj4+Pj4+PiAtICAgICAgKi8NCj4+
Pj4+Pj4+Pj4+Pj4+PiAtICAgICBmbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KGJvLT5iYXNl
LnJlc3YpOw0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgIGlmIChmbGlzdCkgew0KPj4+Pj4+Pj4+Pj4+
Pj4+IC0gICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRfY291bnQ7ICsr
aSkgew0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgICAgICAgICAgICAgICAgICBmID0gcmN1X2RlcmVm
ZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hhcmVkW2ldLA0KPj4+Pj4+Pj4+Pj4+Pj4+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9yZXN2X2hlbGQoYm8tPmJhc2UucmVzdikpOw0K
Pj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgICAgICAgICAgICAgICAgICBpZiAoYW1ka2ZkX2ZlbmNlX2No
ZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkNCj4+Pj4+Pj4+Pj4+Pj4+PiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAgICAgICAgICAg
ICB9DQo+Pj4+Pj4+Pj4+Pj4+Pj4gLSAgICAgfQ0KPj4+Pj4+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+
Pj4+Pj4gICAgICAgICAgICAgIHN3aXRjaCAoYm8tPnJlc291cmNlLT5tZW1fdHlwZSkgew0KPj4+
Pj4+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICBjYXNlIEFNREdQVV9QTF9QUkVFTVBUOg0KPj4+Pj4+
Pj4+Pj4+Pj4+IEBAIC0xMzc3LDEwICsxMzQzLDUzIEBAIHN0YXRpYyBib29sIGFtZGdwdV90dG1f
Ym9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywNCj4+Pj4+
Pj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+Pj4+Pj4+Pj4+
Pj4+Pj4NCj4+Pj4+Pj4+Pj4+Pj4+PiAgICAgICAgICAgICAgZGVmYXVsdDoNCj4+Pj4+Pj4+Pj4+
Pj4+PiAtICAgICAgICAgICAgIGJyZWFrOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAg
cmV0dXJuIHR0bV9ib19ldmljdGlvbl92YWx1YWJsZShibywgcGxhY2UpOw0KPj4+Pj4+Pj4+Pj4+
Pj4+ICAgICAgICAgICAgICB9DQo+Pj4+Pj4+Pj4+Pj4+Pj4gK30NCj4+Pj4+Pj4+Pj4+Pj4+Pg0K
Pj4+Pj4+Pj4+Pj4+Pj4+IC0gICAgIHJldHVybiB0dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoYm8s
IHBsYWNlKTsNCj4+Pj4+Pj4+Pj4+Pj4+PiArLyoNCj4+Pj4+Pj4+Pj4+Pj4+PiArICogYW1kZ3B1
X3R0bV9ib19ldmljdGlvbl92YWx1YWJsZSAtIENoZWNrIHRvIHNlZSBpZiB3ZSBjYW4gZXZpY3Qg
YSBidWZmZXINCj4+Pj4+Pj4+Pj4+Pj4+PiArICogb2JqZWN0Lg0KPj4+Pj4+Pj4+Pj4+Pj4+ICsg
Kg0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgKiBSZXR1cm4gdHJ1ZSBpZiBldmljdGlvbiBpcyBzZW5zaWJs
ZS4gQ2FsbGVkIGJ5IHR0bV9tZW1fZXZpY3RfZmlyc3QoKSBvbg0KPj4+Pj4+Pj4+Pj4+Pj4+ICsg
KiBiZWhhbGYgb2YgdHRtX2JvX21lbV9mb3JjZV9zcGFjZSgpIHdoaWNoIHRyaWVzIHRvIGV2aWN0
IGJ1ZmZlciBvYmplY3RzIHVudGlsDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAqIGl0IGNhbiBmaW5kIHNw
YWNlIGZvciBhIG5ldyBvYmplY3QgYW5kIGJ5IHR0bV9ib19mb3JjZV9saXN0X2NsZWFuKCkgd2hp
Y2ggaXMNCj4+Pj4+Pj4+Pj4+Pj4+PiArICogdXNlZCB0byBjbGVhbiBvdXQgYSBtZW1vcnkgc3Bh
Y2UuDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAqLw0KPj4+Pj4+Pj4+Pj4+Pj4+ICtzdGF0aWMgYm9vbCBh
bWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAq
Ym8sDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgY29uc3Qgc3RydWN0IHR0bV9wbGFjZSAqcGxhY2UpDQo+Pj4+Pj4+Pj4+Pj4+Pj4gK3sN
Cj4+Pj4+Pj4+Pj4+Pj4+PiArICAgICBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7DQo+Pj4+
Pj4+Pj4+Pj4+Pj4gKyAgICAgc3RydWN0IGRtYV9mZW5jZSAqZjsNCj4+Pj4+Pj4+Pj4+Pj4+PiAr
ICAgICBpbnQgaTsNCj4+Pj4+Pj4+Pj4+Pj4+PiArDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAgICAgLyog
U3dhcG91dD8gKi8NCj4+Pj4+Pj4+Pj4+Pj4+PiArICAgICBpZiAoYm8tPnJlc291cmNlLT5tZW1f
dHlwZSA9PSBUVE1fUExfU1lTVEVNKQ0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgcmV0
dXJuIHRydWU7DQo+Pj4+Pj4+Pj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgIC8qIElm
IGJvIGlzIGEgS0ZEIEJPLCBjaGVjayBpZiB0aGUgYm8gYmVsb25ncyB0byB0aGUgY3VycmVudCBw
cm9jZXNzLg0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAqIElmIHRydWUsIHRoZW4gcmV0dXJuIGZh
bHNlIGFzIGFueSBLRkQgcHJvY2VzcyBuZWVkcyBhbGwgaXRzIEJPcyB0bw0KPj4+Pj4+Pj4+Pj4+
Pj4+ICsgICAgICAqIGJlIHJlc2lkZW50IHRvIHJ1biBzdWNjZXNzZnVsbHkNCj4+Pj4+Pj4+Pj4+
Pj4+PiArICAgICAgKi8NCj4+Pj4+Pj4+Pj4+Pj4+PiArICAgICBmbGlzdCA9IGRtYV9yZXN2X3No
YXJlZF9saXN0KGJvLT5iYXNlLnJlc3YpOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgIGlmIChmbGlz
dCkgew0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IGZsaXN0
LT5zaGFyZWRfY291bnQ7ICsraSkgew0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICBmID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hhcmVkW2ldLA0KPj4+
Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9yZXN2X2hlbGQo
Ym8tPmJhc2UucmVzdikpOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBp
ZiAoYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkNCj4+Pj4+Pj4+Pj4+Pj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+Pj4+Pj4+Pj4+
Pj4+Pj4gKyAgICAgICAgICAgICB9DQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAgICAgfQ0KPj4+Pj4+Pj4+
Pj4+Pj4+ICsNCj4+Pj4+Pj4+Pj4+Pj4+PiArICAgICAvKiBDaGVjayBieSBkaWZmZXJlbnQgbWVt
IHR5cGUuICovDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAgICAgaWYgKCFhbWRncHVfdHRtX21lbV9ldmlj
dGlvbl92YWx1YWJsZShibywgcGxhY2UpKQ0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAg
cmV0dXJuIGZhbHNlOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsNCj4+Pj4+Pj4+Pj4+Pj4+PiArICAgICAv
KiBWTSBibyBzaG91bGQgYmUgY2hlY2tlZCBhdCBsYXN0IGJlY2F1c2UgaXQgd2lsbCBtYXJrIFZN
IGV2aWN0aW5nLiAqLw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgIGlmIChiby0+dHlwZSA9PSB0dG1f
Ym9fdHlwZV9rZXJuZWwpDQo+Pj4+Pj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gYW1k
Z3B1X3ZtX2V2aWN0YWJsZSh0dG1fdG9fYW1kZ3B1X2JvKGJvKSk7DQo+Pj4+Pj4+Pj4+Pj4+Pj4g
Kw0KPj4+Pj4+Pj4+Pj4+Pj4+ICsgICAgIHJldHVybiB0cnVlOw0KPj4+Pj4+Pj4+Pj4+Pj4+ICAg
ICAgICAgIH0NCj4+Pj4+Pj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+Pj4+Pj4+ICAgICAgICAgIHN0YXRp
YyB2b2lkIGFtZGdwdV90dG1fdnJhbV9tbV9hY2Nlc3Moc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXYsIGxvZmZfdCBwb3MsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
