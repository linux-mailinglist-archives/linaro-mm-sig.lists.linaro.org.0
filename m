Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD4948ACDD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jan 2022 12:43:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76CD83ED8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jan 2022 11:43:25 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2063.outbound.protection.outlook.com [40.107.220.63])
	by lists.linaro.org (Postfix) with ESMTPS id 174AC3ED30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Jan 2022 11:43:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYkrnvHVD5I5DruQdgzzUAwgxHJzxdGAACSJgIb92wIzKGnBHXhZBzP6JwcSm9DAJwvcRzsn7ZL7/j381yDZUSjPd4dPWZSnH5LR/vNSo+HAkgj9DNi8N55FFpc0YoImRHxNPSHgPAvs0eFqHNYfZ9e56q+fgN8sCFOSpmUXhPKjhyaDChxWPyBtMYgxAU+iODCQ3jEBznzTVtxZCn72AjOtk7g3y49anh0MdP77d3ApVmHpVTP1PtqVmPB4+sQnfJmSl0zOBoLkXYTVRZnb9nybi6Dz/h42gtmHIk6k3R7rKIT/sHkfRCmOEA74FVX9pNhUCM0kRWq/dPCMa/aOuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QxGPko7UnPmilmnuM61Yuq3Ei9UFqJd0hk/o+Ydc0S8=;
 b=esKMGA1D//mWEKCxysB6xUQvX/FRFjtMClkkjjhw5FCHDhfXVOD5O60UGjl9pj3P9UhueNXdM7Spjh6zS4F63WKDC8CPVNzLoDJV9HfES9aiETKXzjEsF8sxMR2QYukewCB7ih05065hgKm7NN6e30ZW0scWmg/fAmgNnVpg53FsVtA2vOgunrCxFjujQqq44uHkfNHCMg/kjD5s1l6BNk3EkKFJ7gBYs/j2EtsKcL86Uxpu32uSRGoyi3XNIP7l3dTvRA92AusKjRv3QRf2EMZQrMMDTh6mBgxgWV+mGGRqIzjgNPd8dRzsO2zxjUqDZS75Okw7XZUdgRA7xzPGiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QxGPko7UnPmilmnuM61Yuq3Ei9UFqJd0hk/o+Ydc0S8=;
 b=ebOxXROe4ZE5NCMcXB6+my6vHrpxf+1HbfF6mTk9ibor1U1ySGrgCwdSFFQOIqYdH2p6iOkfgmg2lY4Mo1KDiKDmgp5zVSg8LgAnZ+HLPc1d7Hg83B2091UGCutbAJ7kjXZ4Ct9jdd4yjdEsHVv9GnP/ssd1YH6Ya5rUW7CLU8o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1407.namprd12.prod.outlook.com
 (2603:10b6:300:15::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Tue, 11 Jan
 2022 11:43:15 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::b4d6:f148:3798:6246]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::b4d6:f148:3798:6246%7]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 11:43:15 +0000
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220104235148.21320-1-hridya@google.com>
 <49b29081-42df-ffcd-8fea-bd819499ff1b@amd.com>
 <CA+wgaPMWT0s0KNo_wM7jU+bH626OAVtn77f7_WX=E1wyU8aBzg@mail.gmail.com>
 <3a29914d-0c7b-1f10-49cb-dbc1cc6e52b0@amd.com>
 <CA+wgaPOmRTAuXiSRRmj-s=3d2W6ny=EMFtroOShYKrp0u+xF+g@mail.gmail.com>
 <CA+wgaPO81R+NckRt0nzZazxs9fqSC_V_wyChU=kcMqJ01WxXNw@mail.gmail.com>
 <5a6bd742-10ca-2e88-afaa-3744731c2c0c@amd.com>
 <CA+wgaPPdCMPi1t+ObyO4+cqsk7Xx3E=K5BOPM37=QAviQDAfmw@mail.gmail.com>
 <CAKMK7uGRUrP+0PcY-yxTweb_K_QacHJchgPoa0K9K_kwGO+K3g@mail.gmail.com>
 <934ac18c-d53e-beeb-48c1-015a5936e713@amd.com> <Yd1nJqmHXULnccNF@kroah.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3610ecd0-03c7-2cae-8f36-f8fd555757b0@amd.com>
Date: Tue, 11 Jan 2022 12:43:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <Yd1nJqmHXULnccNF@kroah.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR03CA0096.eurprd03.prod.outlook.com
 (2603:10a6:208:69::37) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64bb33f6-e7de-4d59-2549-08d9d4f78e13
X-MS-TrafficTypeDiagnostic: MWHPR12MB1407:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR12MB140770221D3641E5EEE39EF383519@MWHPR12MB1407.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AWqGUKkTPqbmiAdp66eQBNcPZQRmYiJ48ZzJUdI/UsrBQ+XeTt2Vwk9DLN3Ly2dAVsxd4tbFdLFO+Yw8vHYU7MJpaA3FQqITdUPVCo1Q2Et/PHPmIYD0KqiiF9n87QQYW+u2Zo4/TUAEaV4RVyz0SXGI1yglkBIhha8a0ICYPEQmj+Dzds+T5EWQd3Ze+nRlKQyx7u978GMvEetSy4XbXiyxrRej7eU3WYZmh8PEJ0JVrSkfcWH/tqQLWwY7f1qmczg4blx6i4JEDx8GDR5fpEmyCcW/Jzk6NGvzB8IeGVrmnzOdxUaw8PSksMqOT0PVikYt5xwJo2mD5CsTSNV9m/zQ4kQx1io4nmug3NTWtZzxc0TD4DzXlN09cGNMR4bjOzxP9MFBjPBg5thHK5Jp0AGyI+iRyc5OiM9Psh4Ka8ves72U9NXRImFT9vSyiMdy6zQkeKX03SV2fl5PJR/syi/s61lXwiM8PEpIGaDcoWu9waRZKfr35uT3vEAkj/TDoOOjsCZXFFP5Ytoyfj0WhbIEYqysmccNNRBJpCUkcuUyMlNjTLDyyLTIjYZBAlosIM3w97sGlHq12re8NnQ7iQJKdqGNdq61cAe33jXwV+8kZdanPTGDReQN1Ih5jT0DkEyYnQGp5Z/Gyf8PHRMuXjR7iKo/ZY92a/Zcp9qDj67VEst0tJVbskHZ3G5gKR2ZRP+JzI5JDBTnNfxciSUHyDrmxdB3WcdRgzbELBnYxYX+SQaGhvdnlU7oL7zqBh2T
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1201MB0192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6666004)(5660300002)(2616005)(2906002)(83380400001)(508600001)(31696002)(6916009)(7416002)(31686004)(8676002)(38100700002)(66476007)(8936002)(66946007)(6512007)(6486002)(316002)(186003)(66574015)(86362001)(6506007)(54906003)(4326008)(26005)(66556008)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?anZ5SGVZb01RKzRwMEJwaWJML1lMUEVoRWg5V3RQWWpmcWxsQVE3Q1pvQlJJ?=
 =?utf-8?B?a3BtUXZLbHMyWTNIMVc2NDRodHhyMVZrSUpkMCtRaGJSQnFoTDN4eTdseG5Y?=
 =?utf-8?B?QmdUbDBVM3VpWEpEaU14cUo5bHVPQmhXVms5ejRELzMxcldSaXllckZQcHRC?=
 =?utf-8?B?Ty9rd0FtcHZkbW1kb0dESEtUWFYwWXpHT3F4dWxMSFdHcHU1SFZTYW14L1Uw?=
 =?utf-8?B?eXNvM3VpZ3lQdXRLREhvQVFYaUUxcEdKQ2JUbFZ1Z1RpK1VESjJQeUp2c29a?=
 =?utf-8?B?bGpmMEVYMU9BSG44Uzg1cGdZRWZUOEJmUkE2dmNIeDJPUHc4bUY0M21rMUZI?=
 =?utf-8?B?RTdRTFVXZzVhQkdpenBSd3JKYnY4SUI4Qys5R3V1RGVFWEMxWlMrZGk1a0Ux?=
 =?utf-8?B?Q3pRdU9xczUvSGJJcEx1QlBiSHRqTWVLWmw1eFF1citUTUVscFBRNytsNkhQ?=
 =?utf-8?B?Mm1CNUFEblJDK1ZMdzJJczdJckFKQ0syc2JXRmZXcHVSTWlpZ0U3dWZ0UUlX?=
 =?utf-8?B?dEZxS1Y4Q2FkSkxrc3lYLzVwZlpVTGxNc2xURHlSejNKSWlISHNhTWE1ekV5?=
 =?utf-8?B?K2F4Z1dEM2FiV1oraEs1YTlQTUcyajI1V0trOFNnbU9EQ3FFU1ZGZ25meFBi?=
 =?utf-8?B?R2YxRVh3NHFwNWNhVzY3dGkwekJaWUt3cmVMQXlPdFJtYVo5V3YxaFBaSUpE?=
 =?utf-8?B?cE92M2VENm4yNUtRaUxBbG84WUt0WnhURlJUVElkT0kyYkJsNzVWL1R5Q3dl?=
 =?utf-8?B?OGtuc2JjR1M4LzRnT3h1TzNvMFBxUGVia2JFOWVqMlM0VWJ1SkdxYW80b2hM?=
 =?utf-8?B?RFgzR0JFamdsWkgveTl6MUt5UEVJQU1US3pzRXlMRGJNbjl4ZjNqdmlOdzJi?=
 =?utf-8?B?cjIxdzlMZmY1eSszSkU4MENZeVlOZWduUk5YNXB4MnA2U2xnbDFIMFN5SmpM?=
 =?utf-8?B?UjY5c0ZrNmhIbS9DM2VMZEdKTnF4NVVWYWtOUUtRNmIwREp1c0hPWmVxVnNC?=
 =?utf-8?B?M0xMcmZTOFF5WmlFV2owaWF1NXFnMjRId21uMytmMXNRUkgzb3dqSC9lUHk3?=
 =?utf-8?B?YTVCaEpVWG5jeEFLODJockRxYmw2ZEVmODgrdEVIMU9MQ0VLTzFVeS96RGQw?=
 =?utf-8?B?UDNxVUpSOFpWak01YjA2a3FqRU1Gd0hselk2RHZnVkdiVTVoOXRqb2pkNFNV?=
 =?utf-8?B?REt4Y1Axb2U0WS9DTStwdmxaU2R5N0hvdmVVemR0bTZua0ZNOGdZSHZGUUZQ?=
 =?utf-8?B?dk5DbEtVQjNsM3dMT1dQQkVGaXhLUTIvNVdVZEtINGhpb1BiTERmWldRamRC?=
 =?utf-8?B?RHAwODVwVlpkZlZRUG1WQkk1N3FoS1JhNlVJUGlYbzZjWlhCekVxcm93elZw?=
 =?utf-8?B?WEs0VitJaEwzS2pHNXhhaEdEbjFKbHArT001SGVvN2E3d2x3Uks0UzB3UnJS?=
 =?utf-8?B?WWhwckhTREhMNUpSWEp0Y3MyeThKMGN0OGkxMTJLY2JMQ2MyY3h3UEpJNkl2?=
 =?utf-8?B?aXlxNGRleEx2M2FRVDFQTVVydDA3ZmRwYXlvOHBSZEN3Y0dmN3BaYTBRYlBx?=
 =?utf-8?B?QWFLcTY1bVJ1WEQyb2RuN0hjMlRvdVFBVXJXRXJ4YitpOTN5VGtqUTB6RXVz?=
 =?utf-8?B?R2wzbG9sT2pzamNZVUZaaDhrR1A3eXU0ai9xeXlSR1JBa2QzOGNydm1qRTh2?=
 =?utf-8?B?Wlg3RU1SYzhCZld6dURoVENZeWZJSzNBVk5ZeXdnWHlSYkZlMlM0eDFOVkVC?=
 =?utf-8?B?Y1BLdkU1N0h4VUZKblQ1MThwZVNjRUFnbjFPY3ZWMERmOTZDV2NFNm8rWHda?=
 =?utf-8?B?N2Exazh2MXFMM0tOWGUxdUtpWGJkbVRJVkpzQXF3eEgxbndXNzlENmtBOHFU?=
 =?utf-8?B?NUUyRkJKTDhCRUlSK1dleS82YXdPTm1weUw1ck1DU3JCZWxwd2M0R2ZSNkNE?=
 =?utf-8?B?SmF4MCtJTHhqRTRLREd3Zm5SVzhZU3ZiakEzRXA2RzJENjJGdEt6MU01bjdB?=
 =?utf-8?B?NXNwQ0R4SVZTcFBYRHFDV1BqUWVNcFNmQTdrTVVKYS9KSHRjMys2ajBVWERJ?=
 =?utf-8?B?QUFkSWVZSmlGY0REOUVWd29wK0hsZWh6MzZCQU93L0lYUGpaWlNiUDhDeWx1?=
 =?utf-8?Q?47gE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64bb33f6-e7de-4d59-2549-08d9d4f78e13
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2022 11:43:15.6828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yx4r9AxXTYaMCw+iCAg2AE1SWKkr7sUlN0f6cUONBdVnnaQVBX99nvvjbnzmx+zC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1407
Message-ID-Hash: QVYOLPNW4FBROWROHMBZMZBH6IM6AM5U
X-Message-ID-Hash: QVYOLPNW4FBROWROHMBZMZBH6IM6AM5U
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hridya Valsaraju <hridya@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, john.stultz@linaro.org, surenb@google.com, kaleshsingh@google.com, tjmercier@google.com, keescook@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Move sysfs work out of DMA-BUF export/release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QVYOLPNW4FBROWROHMBZMZBH6IM6AM5U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpBbSAxMS4wMS4yMiB1bSAxMjoxNiBzY2hyaWViIEdyZWcgS3JvYWgtSGFydG1hbjoNCj4gT24g
VHVlLCBKYW4gMTEsIDIwMjIgYXQgMTE6NTg6MDdBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3
cm90ZToNCj4+Pj4gVGhpcyBpcyBhbHNvIG5vdCBhIHByb2JsZW0gZHVlIHRvIHRoZSBoaWdoIG51
bWJlciBvZiBETUEtQlVGDQo+Pj4+IGV4cG9ydHMgZHVyaW5nIGxhdW5jaCB0aW1lLCBhcyBldmVu
IGEgc2luZ2xlIGV4cG9ydCBjYW4gYmUgZGVsYXllZCBmb3INCj4+Pj4gYW4gdW5wcmVkaWN0YWJs
ZSBhbW91bnQgb2YgdGltZS4gV2UgY2Fubm90IGVsaW1pbmF0ZSBETUEtQlVGIGV4cG9ydHMNCj4+
Pj4gY29tcGxldGVseSBkdXJpbmcgYXBwLWxhdW5jaGVzIGFuZCB3ZSBhcmUgdW5mb3J0dW5hdGVs
eSBzZWVpbmcgcmVwb3J0cw0KPj4+PiBvZiB0aGUgZXhwb3J0aW5nIHByb2Nlc3Mgb2NjYXNpb25h
bGx5IHNsZWVwaW5nIGxvbmcgZW5vdWdoIHRvIGNhdXNlDQo+Pj4+IHVzZXItdmlzaWJsZSBqYW5r
aW5lc3MgOigNCj4+Pj4NCj4+Pj4gV2UgYWxzbyBsb29rZWQgYXQgd2hldGhlciBhbnkgb3B0aW1p
emF0aW9ucyBhcmUgcG9zc2libGUgZnJvbSB0aGUNCj4+Pj4ga2VybmZzIGltcGxlbWVudGF0aW9u
IHNpZGVbMV0gYnV0IHRoZSBzZW1hcGhvcmUgaXMgdXNlZCBxdWl0ZSBleHRlbnNpdmVseQ0KPj4+
PiBhbmQgaXQgbG9va3MgbGlrZSB0aGUgYmVzdCB3YXkgZm9yd2FyZCB3b3VsZCBiZSB0byByZW1v
dmUgc3lzZnMNCj4+Pj4gY3JlYXRpb24vdGVhcmRvd24gZnJvbSB0aGUgRE1BLUJVRiBleHBvcnQv
cmVsZWFzZSBwYXRoIGFsdG9nZXRoZXIuIFdlDQo+Pj4+IGhhdmUgc29tZSBpZGVhcyBvbiBob3cg
d2UgY2FuIHJlZHVjZSB0aGUgY29kZS1jb21wbGV4aXR5IGluIHRoZQ0KPj4+PiBjdXJyZW50IHBh
dGNoLiBJZiB3ZSBtYW5hZ2UgdG8NCj4+Pj4gc2ltcGxpZnkgaXQgY29uc2lkZXJhYmx5LCB3b3Vs
ZCB0aGUgYXBwcm9hY2ggb2Ygb2ZmbG9hZGluZyBzeXNmcw0KPj4+PiBjcmVhdGlvbiBhbmQgdGVh
cmRvd24gaW50byBhIHNlcGFyYXRlIHRocmVhZCBiZSBhY2NlcHRhYmxlIENocmlzdGlhbj8NCj4+
IEF0IGJhcmUgbWluaW11bSBJIHN1Z2dlc3QgdG8gdXNlIGEgd29ya19zdHJ1Y3QgaW5zdGVhZCBv
ZiByZS1pbnZlbnRpbmcgdGhhdA0KPj4gd2l0aCBrdGhyZWFkLg0KPj4NCj4+IEFuZCB0aGVuIG9u
bHkgcHV0IHRoZSBleHBvcnRpbmcgb2YgYnVmZmVycyBpbnRvIHRoZSBiYWNrZ3JvdW5kIGFuZCBu
b3QgdGhlDQo+PiB0ZWFyZG93bi4NCj4+DQo+Pj4+IFRoYW5rIHlvdSBmb3IgdGhlIGd1aWRhbmNl
IQ0KPj4+IE9uZSB3b3JyeSBJIGhhdmUgaGVyZSB3aXRoIGRvaW5nIHRoaXMgYXN5bmMgdGhhdCBu
b3cgdXNlcnNwYWNlIG1pZ2h0DQo+Pj4gaGF2ZSBhIGRtYS1idWYsIGJ1dCB0aGUgc3lzZnMgZW50
cnkgZG9lcyBub3QgeWV0IGV4aXN0LCBvciB0aGUgZG1hLWJ1Zg0KPj4+IGlzIGdvbmUsIGJ1dCB0
aGUgc3lzZnMgZW50cnkgc3RpbGwgZXhpc3RzLiBUaGF0J3MgYSBiaXQgYXdrd2FyZCB3cnQNCj4+
PiBzZW1hbnRpY3MuDQo+Pj4NCj4+PiBBbHNvIEknbSBwcmV0dHkgc3VyZSB0aGF0IGlmIHdlIGNh
biBoaXQgdGhpcywgdGhlbiBvdGhlciBzdWJzeXN0ZW1zDQo+Pj4gdXNpbmcga2VybmZzIGhhdmUg
c2ltaWxhciBwcm9ibGVtcywgc28gdHJ5aW5nIHRvIGZpeCB0aGlzIGluIGtlcm5mcw0KPj4+IHdp
dGggc2xpZ2h0bHkgbW9yZSBmaW5lLWdyYWluZWQgbG9ja2luZyBzb3VuZHMgbGlrZSBhIG11Y2gg
bW9yZSBzb2xpZA0KPj4+IGFwcHJvYWNoLiBUaGUgbGlua2VkIHBhdGNoIHRhbGtzIGFib3V0IGhv
dyB0aGUgYmlnIGRlbGF5cyBoYXBwZW4gZHVlDQo+Pj4gdG8gZGlyZWN0IHJlY2xhaW0sIGFuZCB0
aGF0IG1pZ2h0IGJlIGxpbWl0ZWQgdG8gc3BlY2lmaWMgY29kZSBwYXRocw0KPj4+IHRoYXQgd2Ug
bmVlZCB0byBsb29rIGF0PyBBcy1pcyB0aGlzIGZlZWxzIGEgYml0IG11Y2ggbGlrZSBwYXBlcmlu
Zw0KPj4+IG92ZXIga2VybmZzIGlzc3VlcyBpbiBoYWNraXNoIHdheXMgaW4gc3lzZnMgdXNlcnMs
IGluc3RlYWQgb2YgdGFja2xpbmcNCj4+PiB0aGUgcHJvYmxlbSBhdCBpdHMgcm9vdC4NCj4+IFdo
aWNoIGlzIGV4YWN0bHkgbXkgZmVlbGluZyBhcyB3ZWxsLCB5ZXMuDQo+IE1vcmUgYW5kIG1vcmUg
cGVvcGxlIGFyZSB1c2luZyBzeXNmcy9rZXJuZnMgbm93IGZvciB0aGluZ3MgdGhhdCBpdCB3YXMN
Cj4gbmV2ZXIgZGVzaWduZWQgZm9yIChpLmUuIGhpZ2gtc3BlZWQgc3RhdGlzdGljIGdhdGhlcmlu
ZykuICBUaGF0J3Mgbm90DQo+IHRoZSBmYXVsdCBvZiBrZXJuZnMsIGl0J3MgdGhlIGZhdWx0IG9m
IHBlb3BsZSB0aGlua2luZyBpdCBjYW4gYmUgdXNlZA0KPiBmb3Igc3R1ZmYgbGlrZSB0aGF0IDop
DQoNCkknbSBzdGFydGluZyB0byBnZXQgdGhlIGZlZWxpbmcgdGhhdCB3ZSBzaG91bGQgbWF5YmUg
aGF2ZSBxdWVzdGlvbmVkIA0KYWRkaW5nIHN5c2ZzIGZpbGVzIGZvciBlYWNoIGV4cG9ydGVkIERN
QS1idWYgYSBiaXQgbW9yZS4gQW55d2F5LCB0byBsYXRlIA0KZm9yIHRoYXQuIFdlIGhhdmUgdG8g
bGl2ZSB3aXRoIHRoZSBjb25zZXF1ZW5jZXMuDQoNCj4gQnV0IGRlbGF5cyBsaWtlIHRoaXMgaXMg
b2RkLCB0ZWFyaW5nIGRvd24gc3lzZnMgYXR0cmlidXRlcyBzaG91bGQNCj4gbm9ybWFsbHkgX25l
dmVyXyBiZSBhIGZhc3QtcGF0aCB0aGF0IG1hdHRlcnMgdG8gc3lzdGVtIHRocm91Z2hwdXQuICBT
bw0KPiBvZmZsb2FkaW5nIGl0IHRvIGEgd29ya3F1ZXVlIG1ha2VzIHNlbnNlIGFzIHRoZSBhdHRy
aWJ1dGVzIGhlcmUgYXJlIGZvcg0KPiBvYmplY3RzIHRoYXQgYXJlIG9uIHRoZSBmYXN0LXBhdGgu
DQoNClRoYXQncyB3aGF0IGlzIHB1enpsaW5nIG1lIGFzIHdlbGwuIEFzIGZhciBhcyBJIHVuZGVy
c3Rvb2QgSHJpZHlhIA0KdGVhcmluZyBkb3duIHRoaW5ncyBpcyBub3QgdGhlIHByb2JsZW0sIGJl
Y2F1c2UgZHVyaW5nIHRlYXJkb3duIHdlIA0KdXN1YWxseSBoYXZlIGEgZHlpbmcgdGFzayB3aGVy
ZSBpdCdzIHVzdWFsbHkgbm90IG11Y2ggb2YgYSBwcm9ibGVtIGlmIA0KdGhlIGNvcnBzZSBpcyBh
cm91bmQgZm9yIGFub3RoZXIgZmV3IG1pbGxpc2Vjb25kcyB1bnRpbCBldmVyeXRoaW5nIGlzIA0K
Y2xlYW5lZCB1cC4NCg0KVGhlIGlzc3VlIGhhcHBlbnMgZHVyaW5nIGNyZWF0aW9uIG9mIHRoZSBz
eXNmcyBhdHRyaWJ1dGUgYW5kIHRoYXQncyANCmV4dHJlbWVseSBvZGQgYmVjYXVzZSBpZiB0aGlz
IHdhaXRzIGZvciByZWNsYWltIHRoZW4gZHJpdmVycyB3aWxsIA0KY2VydGFpbmx5IHdhaXQgZm9y
IHJlY2xhaW0gYXMgd2VsbC4gU2VlIHdlIG5lZWQgYSBmZXcgYnl0ZXMgZm9yIHRoZSANCnN5c2Zz
IGF0dHJpYnV0ZSwgYnV0IGRyaXZlcnMgdXN1YWxseSBuZWVkIGEgZmV3IG1lZ2FieXRlcyBmb3Ig
dGhlIA0KRE1BLWJ1ZiBiYWNraW5nIHN0b3JlIGJlZm9yZSB0aGV5IGNhbiBldmVuIGV4cG9ydCB0
aGUgRE1BLWJ1Zi4NCg0KU28gc29tZXRoaW5nIGRvZXNuJ3QgYWRkIHVwIGluIHRoZSByYXRpb25h
bCBmb3IgdGhpcyBwcm9ibGVtLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IHRoYW5r
cywNCj4NCj4gZ3JlZyBrLWgNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
