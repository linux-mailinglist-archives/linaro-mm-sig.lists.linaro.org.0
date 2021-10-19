Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B57433C3B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 18:30:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB4D0609E0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 16:30:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9180F6073D; Tue, 19 Oct 2021 16:30:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E1B16064E;
	Tue, 19 Oct 2021 16:30:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA42C605F9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 16:30:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A4EA46064E; Tue, 19 Oct 2021 16:30:47 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2050.outbound.protection.outlook.com [40.107.93.50])
 by lists.linaro.org (Postfix) with ESMTPS id 8DA83605FE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 16:30:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELBwGwY6UzaeXepfjnkVhmxK5K9HkRqPB17jAUjlhLvk/Sq+sacqzz8/qI162rcbMFu3amyWrodaNWEuHxV1RbXvzmG61uqLkGWwf2Es4vHLtTQg5NSBtoTPgoReozDJg1kA77n/WhZ+5OuyukXMlGZINvZnqMiyqvyaExREBTgrW3b+LXzluubQLdjacY0W3YjtMuUbB5oH60C5/ws/JWaI46PcaLFtGFwsyvcO2sO+uNlzajHDrTf9TqqKwg4Xo1M2FsA2iDAXOejlT25ET5b1XubmCYYlb+XhbUyoeRRCWo5VSFe7yZ7gcMEQgA8+ynCxZUIYhQZyZ3zCi2FKrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxJ4PM3w+2xOxLtg73UaRmKeFxYV4e0IiJ1Ne9ariCY=;
 b=Mim6sYmx+E1WrVrJDCDxXm2+YEXqoe+gUAE7aC15Hsl5uAzNaYFTKy/XvIbRHgEejm/bQjhcbtIq3OHeujoiz0DDRykHZcFVtwKLph30hFTGNG4o87ooi5co/WTTgCEe9gnK+5ent51ecyePlC32mxazqOJs77Q+8MVEENE2d8YvzBS9105M4R3gZEYe+w3y/xPJMkt32Huy/itgQ03aqqu7kyfA9w8iz9F0Hb6NQ7Yk2v694/1y7jyPb99GVfl7MUcNVnnIFaE7u8vfIIDHjbfkEAn0rxLEqARxRZTOq/uZ6eSK+z41hwPy48Jsehp282YTQR9hsQZu2R0shSlRxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxJ4PM3w+2xOxLtg73UaRmKeFxYV4e0IiJ1Ne9ariCY=;
 b=vd0+fyga9CKYRU5tZG0ZYx6S9OJO627G1TuZi6R/SJfY+oqzRUewwQWfZQO1+qOikVWsABvWGuPo1Ri/G/V/jwlI2GPDXM/Jh0d5g5Kxi0ClL6B0eM2Y0vDMUXtK695kBrHM1L4ML2v0gQBeblE9+AytVZovKsCswhlFS4N3rVc=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=amd.com;
Received: from DM5PR1201MB2491.namprd12.prod.outlook.com (2603:10b6:3:eb::23)
 by DM6PR12MB4265.namprd12.prod.outlook.com (2603:10b6:5:211::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Tue, 19 Oct
 2021 16:30:43 +0000
Received: from DM5PR1201MB2491.namprd12.prod.outlook.com
 ([fe80::d153:3aa6:4677:e29]) by DM5PR1201MB2491.namprd12.prod.outlook.com
 ([fe80::d153:3aa6:4677:e29%7]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 16:30:43 +0000
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-13-christian.koenig@amd.com>
 <YWboMfLOIjl1l7tF@phenom.ffwll.local>
 <a0a926a7-13d0-b996-5f32-36aa6d74165e@gmail.com>
From: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <c18a4c91-93b4-79ed-0907-84adb29761d8@amd.com>
Date: Tue, 19 Oct 2021 12:30:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <a0a926a7-13d0-b996-5f32-36aa6d74165e@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0099.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::8) To DM5PR1201MB2491.namprd12.prod.outlook.com
 (2603:10b6:3:eb::23)
MIME-Version: 1.0
Received: from [192.168.2.100] (142.118.126.231) by
 YT1PR01CA0099.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.15 via Frontend Transport; Tue, 19 Oct 2021 16:30:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b716448e-00af-488b-8bf8-08d9931dcb8d
X-MS-TrafficTypeDiagnostic: DM6PR12MB4265:
X-Microsoft-Antispam-PRVS: <DM6PR12MB4265ED10CED6FB0F5484D24692BD9@DM6PR12MB4265.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u30dx3u18H3GfMtKoF1R5Ooc19TD9tCCaNh7s+I2awPPs2nzg7yYjWuyAOjjKW/roSq65I/E3L0o7Yutqc9T9hGJZnRZTLuWI2iIDRGOFXWN5SBfEiICTgdmyuGyvkLj7eD4WbkKauTPdNNlM9qWmGJN4giVXVC0pZSyIDGsbARCWay8kXur+J08k/8UUgMVtNLOe0K+KtQtHWONVSkpzFiO6Rmd58j6MEtIXBqiqYtaDc3zySyjtHxsjUzFjnZS9E9+azB/NqIvghs1rTSDrUbiZghxVwtku/Y0kEFmowIuE0/oqLuYP5G/rzHUhozxncysVzCF4vQh5jlHygt6VoYyDsJtpfZDgCBPv8DiZS19HeFORvrK8tgoIg+72cCqL7r3kjGkocnF//sZOEGVLskiK6F9YN+bi3CE369mntZxEqwnN7zsNZbZ2B8rqxCRbKNWxoqw3/VPXx6+iIf1VizZo/Hbh78t0fb7hGRS2XralVk8JHVCBqdIpV/yhzWJZiZqjogVInrtXpL+tpJGsoNVfInb5osueY1VHVpijU7HpYwY/TcPV3EqpjV6cunm8kstc+KE3ZD+opSunLDmQpWgoHbUoeZB0MNZDaca1AeDoEx4zjoG2AXvTGkvCot4ix5sqWMKddWSYeBwYQYFCdOusVgQzIX8fLE3TBAwUXA1L7ViOH5yyiA7UMrrjXemPy/GskGM5DRoKFknK8CQHDou8LTKDbAp6kGvbVzQ8F0MZ2hRYEm02ZD1xIKiTV3t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1201MB2491.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(4001150100001)(66946007)(31686004)(4326008)(38100700002)(26005)(44832011)(6486002)(83380400001)(66476007)(66556008)(86362001)(8676002)(2616005)(31696002)(16576012)(316002)(8936002)(36756003)(508600001)(956004)(186003)(110136005)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ri9aaFpkZC9ZLzlDOTlOMlh6ZFRTL2JWcUtHM3VIWkh4UFRpRmlOdDRnVmk4?=
 =?utf-8?B?eWU1M0NlN3AxaU44UlQ3VGZJdWJLcXBmbTlRVmFETGVjbVh4aU9kYXQycTVq?=
 =?utf-8?B?QUYzQmJpRldUbnVSVENpYjg1djZmTDAwU05Gd0Q2UWQ1eGZkRkVKTnRrZCtx?=
 =?utf-8?B?dUpHcDdkNDYxKzFkR2ZqWDIra1dKMmFRSzE1ZlVUYTR3L0diQythQjdKVlpZ?=
 =?utf-8?B?UEcvN1U4akNtb2g3dndHMlV4OVQ3cHZiQ2ZIRjN4ODhqV1B2RVovRythTVpL?=
 =?utf-8?B?djlBUmZkQkZGVzFscDZ1bDhJS3VYMHhkZVlHYmZ4WmJudUZsUURVcGViQU1w?=
 =?utf-8?B?TjdYT3YzemZlRXZ6OFNlRmMrNDk2NlZVZVE1OFZYRHNGbkF1cC9qOWZocGdn?=
 =?utf-8?B?ZlRRYzFRbVMrS3hYSUNyNG9yYVROY2tWTGdZRnpGNU9Xcmo1N3gzNmlleUZS?=
 =?utf-8?B?azRwRFhlYnNGZjgzVTBNcTJPeEQ4THdlNThYZEk1eGJxaUF0SklXYVBPSnVC?=
 =?utf-8?B?NkFTbDR2TlVnSXZ6aWJ1WERKZ3dxM09Kd0FCTUYzZGRrM3FkRkFSQW9TQmI0?=
 =?utf-8?B?NlZhRmxmRC9kdDlwRUpLOTRyYVdTa0V5aC9uamVmeGlabGx3c2VUOXhiQ1dm?=
 =?utf-8?B?QUxPMmFlMUtzbFA0WDRVU0g2QmJLT0dGbDlEYTFVaGN1NnF3c1hhaGtiaEc0?=
 =?utf-8?B?WXhFd1dkVHBWYm1ENlVBMEU2R0F0UmJLcHhtNmpVRjEyY0FUaFk4Q2FTc1lm?=
 =?utf-8?B?VzdUSUFyOXhoc0ljbDdWMGx6c3dQSmlpQlUrRWJUT000Qmg3T1oweEoySko0?=
 =?utf-8?B?SFNXaVRyNzFQNUx0a0lWc2ZRYVNIMzZZWHdlaE1yYXcvWWd2WXZiWEY1WlJp?=
 =?utf-8?B?TUFHZStaMWFaL0RlcWJWQVF1TXhUdEdqSlNjM0FKelhZc0Z6VUZtMzE5QjRM?=
 =?utf-8?B?REpjOHBWdlNWd3ZORTdPSEh3Q1l2M2hTSFRZRGplVFpUbzBZWG5jQ1dJK2Ju?=
 =?utf-8?B?TmlOdmlpZHRHMEFiWGFiZXFhOEJ3YXJuazA5Z2hrOXhtMTZ2Y3lONjlCUDVm?=
 =?utf-8?B?SXlvNURqc1JMVEJLV3ZlK1dkbENHVmw3cWQ0anVKL24wbjFMNDFZMnNkcHNv?=
 =?utf-8?B?NUFnWUhPT2Ewb1Zxdk1xUVhXR3RpQWd0cmRjelFxLy9NNDR5eE8ydTdKMkhj?=
 =?utf-8?B?aTZkTi8zZ0JqUFN0Ymd0SHF1RWtXR1JBcXFvNlJ4elF2Um5ZTWhLQTJKT2p0?=
 =?utf-8?B?SkNyWjZSUlg3dXhnRWdyVU83ckN4MWpIUlFJZUhRSzVCOTlleTdpQ1pCYUNG?=
 =?utf-8?B?dnhuMXE4TkZvR3dhMXZoM0JXemd6MldLOERCbWJDMTFzNFU4enltbXNPaFhY?=
 =?utf-8?B?WmlrUjI4a09WNjFzTmVsQXE0WXVlZ3BuWnBDcWlseFpWR2E0c1lmY2c5RWRC?=
 =?utf-8?B?TzcvSmdJUUhwNFFWTDFib0R2VWRZckxnTWRpWis5Uk0yNUxQaFdKZytTeVBp?=
 =?utf-8?B?SmJqaDNaMXZHTHZWclk3OSswTG5vTVFSd0JrZi9uWG1KeDlwVzlhM3ZvRk0x?=
 =?utf-8?B?ajFac25tS3pJQ00zN3dkZm1NZkI4ajBCYzBhYWpuRzFnR2lKTHZoM1JFczVF?=
 =?utf-8?B?OEpMa2t5dUNGdjJtZ21kSlZvQ3FnVDZwSUdiOVRCdkRwYUhiRHlsbDVFbTBQ?=
 =?utf-8?B?VGQrS1Q2c2p3ZGJ6TjFBUmE3dUVJOXJ4T1hXemFzZW51SEtkM3AxRmM2UHZY?=
 =?utf-8?B?QmU0MjhMWCtReTVXMVhYenRlRmFjZkY0cWc3Z1ZSWjhVTEdhVVVGSGUzOC9o?=
 =?utf-8?B?Nk92TGs1dHZBQU9ab1FmQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b716448e-00af-488b-8bf8-08d9931dcb8d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1201MB2491.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 16:30:43.1380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3ftIQZ1VCKMHPMjp1yvaOElHNdUCAU6NFligJGhdmEb4DTDuUtuskRnjtdgVT07kKMMa8FpZViLR2gmJ28CWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4265
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjAyMS0xMC0xOSB1bSA3OjM2IGEubS4gc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IEFt
IDEzLjEwLjIxIHVtIDE2OjA3IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4gT24gVHVlLCBPY3Qg
MDUsIDIwMjEgYXQgMDE6Mzc6MjZQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+
IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRt
LmMKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCj4+PiBpbmRl
eCBlOGQ3MGI2ZTY3MzcuLjcyMmUzYzllODg4MiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5jCj4+PiBAQCAtMTM0NSwxMCArMTM0NSw5IEBAIHN0YXRpYyBi
b29sCj4+PiBhbWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVy
X29iamVjdCAqYm8sCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSkKPj4+IMKgIHsKPj4+IMKg
wqDCoMKgwqAgdW5zaWduZWQgbG9uZyBudW1fcGFnZXMgPSBiby0+cmVzb3VyY2UtPm51bV9wYWdl
czsKPj4+ICvCoMKgwqAgc3RydWN0IGRtYV9yZXN2X2l0ZXIgcmVzdl9jdXJzb3I7Cj4+PiDCoMKg
wqDCoMKgIHN0cnVjdCBhbWRncHVfcmVzX2N1cnNvciBjdXJzb3I7Cj4+PiAtwqDCoMKgIHN0cnVj
dCBkbWFfcmVzdl9saXN0ICpmbGlzdDsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAq
ZjsKPj4+IC3CoMKgwqAgaW50IGk7Cj4+PiDCoCDCoMKgwqDCoMKgIC8qIFN3YXBvdXQ/ICovCj4+
PiDCoMKgwqDCoMKgIGlmIChiby0+cmVzb3VyY2UtPm1lbV90eXBlID09IFRUTV9QTF9TWVNURU0p
Cj4+PiBAQCAtMTM2MiwxNCArMTM2MSw5IEBAIHN0YXRpYyBib29sCj4+PiBhbWRncHVfdHRtX2Jv
X2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+PiDCoMKg
wqDCoMKgwqAgKiBJZiB0cnVlLCB0aGVuIHJldHVybiBmYWxzZSBhcyBhbnkgS0ZEIHByb2Nlc3Mg
bmVlZHMgYWxsIGl0cwo+Pj4gQk9zIHRvCj4+PiDCoMKgwqDCoMKgwqAgKiBiZSByZXNpZGVudCB0
byBydW4gc3VjY2Vzc2Z1bGx5Cj4+PiDCoMKgwqDCoMKgwqAgKi8KPj4+IC3CoMKgwqAgZmxpc3Qg
PSBkbWFfcmVzdl9zaGFyZWRfbGlzdChiby0+YmFzZS5yZXN2KTsKPj4+IC3CoMKgwqAgaWYgKGZs
aXN0KSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRf
Y291bnQ7ICsraSkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZiA9IHJjdV9kZXJlZmVy
ZW5jZV9wcm90ZWN0ZWQoZmxpc3QtPnNoYXJlZFtpXSwKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZG1hX3Jlc3ZfaGVsZChiby0+YmFzZS5yZXN2KSk7Cj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkK
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+Pj4gLcKg
wqDCoMKgwqDCoMKgIH0KPj4+ICvCoMKgwqAgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJnJlc3Zf
Y3Vyc29yLCBiby0+YmFzZS5yZXN2LCB0cnVlLCBmKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5mYWxzZT8KPj4KPj4g
QXQgbGVhc3QgSSdtIG5vdCBzZWVpbmcgdGhlIGNvZGUgbG9vayBhdCB0aGUgZXhjbHVzaXZlIGZl
bmNlIGhlcmUuCj4KPiBZZXMsIGJ1dCB0aGF0J3MgY29ycmVjdC4gV2UgbmVlZCB0byBsb29rIGF0
IGFsbCBwb3RlbnRpYWwgZmVuY2VzLgoKYW1ka2ZkX2ZlbmNlX2NoZWNrX21tIGlzIG9ubHkgbWVh
bmluZ2Z1bCBmb3IgS0ZEIGV2aWN0aW9uIGZlbmNlcywgYW5kCnRoZXkgYXJlIGFsd2F5cyBhZGRl
ZCBhcyBzaGFyZWQgZmVuY2VzLiBJIHRoaW5rIHNldHRpbmcgYWxsX2ZlbmNlcyA9CmZhbHNlIHdv
dWxkIHJldHVybiBvbmx5IHRoZSBleGNsdXNpdmUgZmVuY2UuCgpSZWdhcmRzLArCoCBGZWxpeAoK
Cj4KPiBJdCdzIGEgZGVzaWduIHByb2JsZW0gaW4gS0ZEIGlmIHlvdSBhc2sgbWUsIGJ1dCB0aGF0
IGlzIGEgY29tcGxldGVseQo+IGRpZmZlcmVudCB0b3BpYy4KPgo+IENocmlzdGlhbi4KPgo+PiAt
RGFuaWVsCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGFtZGtmZF9mZW5jZV9jaGVja19tbShm
LCBjdXJyZW50LT5tbSkpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7
Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKgwqAgc3dpdGNoIChiby0+cmVzb3VyY2Ut
Pm1lbV90eXBlKSB7Cj4+PiAtLcKgCj4+PiAyLjI1LjEKPj4+Cj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
