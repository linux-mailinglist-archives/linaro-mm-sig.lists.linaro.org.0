Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B12849DF1E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 11:21:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61D6B3ECC6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 10:21:38 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam08on2067.outbound.protection.outlook.com [40.107.101.67])
	by lists.linaro.org (Postfix) with ESMTPS id EADB63EE01
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 10:21:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqBcK05wFQuXHTCaaDEWielaG/dlgOK4JRMkCr7INIwUlbodbN1YeeojYu9xmJi/V3bdysWlzkCKxtgPUUJ16wNpHs+I8CbDwPonTVBuxUMyRp5xPY6GbxffUl/82cpoGvRo9HfV5OaEvvhor7RgAJbguAVEJaxsH5f2tRLIa5/XJ5a9Ii7Rilin414jhHoKH621wq49wIUYx4myJk/LXC/C+DilsGcGAHTFcRebO9npB6vF5iQlVZH1hE9/utYyORtNHod8VySVGPKnIkeEUuEnBSJ+xNjZpuyU4Axd+IY2efYmhVqXR+p/I0rPNoX/j2n8IhnBzxbjislCkvIjcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SCdIfOO789rzOSsB4ZGDEKz+L9VoHHN4lXQypsJrq8=;
 b=Lmtcb8HrscRs/nsOt7Uncvs4LC9gEGpC97ySVjUyngktAfzsCxkYd96iu+XUEixvnqQc4SqjYlXjS5RB9IiooKto6MYTYXVVxQd/hOhqfQdoXE8q9SCJaexoyPuR00Vhu/SCWpGmwy7o1oc9hfAwo9bKxxAJ4TrE+IdokLKjVZH396vNC5hq5SOMJ9CyaaOMgmlRb8ujatCYUxulrtvSGxrDTcgSbu7/2nviojFZ9A6bB0FgJxUSHJqr1Srmp6eRhcvB1X8siDnuWLzZrWbNeFg4Q8Zpe1uAyM8hMzZ9g/6ghJzFyw+ZXwItc7TQsdG1MxhH/1Nj3kmP8T6cSQz1CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SCdIfOO789rzOSsB4ZGDEKz+L9VoHHN4lXQypsJrq8=;
 b=d4saxqYuEq/8NQQJyp4oGLLRL3by0rfCbOgk3QJtPb4MKwkI3GrONYYvVqDTTv2Aigax/7+o3WUIbVRYDpeovxm0OzozupHiCDllWBeJr7qXQ3AIHWn9HRLlel8N74NH9dbbGQHT4p8OcOBtF2zFiH7hyY4VBxPUpe0ygHAivHw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB2730.namprd12.prod.outlook.com (2603:10b6:5:41::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Thu, 27 Jan
 2022 10:21:26 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21%5]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 10:21:26 +0000
Message-ID: <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
Date: Thu, 27 Jan 2022 11:21:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <YfJedaoeJjE3grum@phenom.ffwll.local>
 <20220127093332.wnkd2qy4tvwg5i5l@ldmartin-desk2>
 <YfJtLkdkh4yde20f@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YfJtLkdkh4yde20f@phenom.ffwll.local>
X-ClientProxiedBy: AS9PR0301CA0011.eurprd03.prod.outlook.com
 (2603:10a6:20b:468::32) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d856c0d3-5431-4084-696c-08d9e17ec660
X-MS-TrafficTypeDiagnostic: DM6PR12MB2730:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR12MB273075A2C6E8FA09EE8ED4D483219@DM6PR12MB2730.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aCd8l9cQJk+5jM+DcUStQneLm2p2IdPf/E84Y4PF36W03k6N7lhmGW3hLKag9kvUNM9JD62d8EaQnXjYkQuGccUo/4KJZR0fYxobrVFjIyt3mENJ+G9V6+m0t5ugIfQNb9xE5JYiZcXjQbcJMooGjfouJRUqwP7reoH4S+LjLtrx05tiN6Hh1+zSUh1BkfRoZGbEwZyZi3+M4yLCxHiveUUg2lLHDOwqfDFe34C5gQPdzWO936kVgHBcDJyQCR3qo1Sk2vRb49gUgOymrM3Vxm8HjbChPNXAAv2AkLG7y3GgTzOSwo7kM2c0On0GSbsoWYK6CSB7hWn1uDL+ecavzDcMZHenmnJqHzToIxTdyX//E2k8s8eiaCjvQvk23n+Ewb/pESOLnVhjRYGI/wzkv9eWmcgk7EmdTyWXw51hrfsdtSH61Py82ZBiLkT+auQS6VWNm5j8431DJ1zJoKoWsj+2vchCZ5vi4ShppHgvmPwXqztmiLa8z1QKvayGUSjRkqDtd+bpvdcS3sF/e+ZDJOO9+1PvNb91HHjNRSJ/mts/jh0pnKqwWIePQheOUMPkNoa2L1GE1hUzLrqRUMbEHwlr+xLAhYidJL+59vA2wIljPULQHmObPRRKCZ4rMMGW+oIo1H1OTCRgwscuY1QZ7L5aASI/iB9wCQYnwGPNQ9BuKJoz3nxUuprYWKpucKvzz64E14JdFIxcRu6hskfm1uE/xHuxPTV6fbCmQ32JqP3hwCRWTNkIehMgeHUsUt1s57l35O2SKTu05nWmZ4Tyz+balO9KpQdKjYTBmqy7kpJbSlOBl1d7L9fPH28s3HZ+8WVb+irTE5HVj9ZQheVoCg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6512007)(66946007)(2906002)(6486002)(2616005)(5660300002)(508600001)(45080400002)(6506007)(6666004)(966005)(66556008)(36756003)(31686004)(83380400001)(26005)(31696002)(316002)(66574015)(38100700002)(8676002)(66476007)(8936002)(186003)(86362001)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NkVrZktUTDJXelBDT2tuSHcrNXZUcW92T2sxQUh1cWU1MGVhcnROYzNtSWxX?=
 =?utf-8?B?ZVJpbUpIejFobG43blV6cWRDUnd1d2dndlpjNkhkVmtnRFliempPWFM1a1FX?=
 =?utf-8?B?WDc1RjlsanJrZ1RvSzVnMWxjRUlBamNjeUUyY2VaeVg0OWExaFBleFRORERE?=
 =?utf-8?B?ODRYRHdJLysxdk5OT3FjQmUyMzU2cHR0cWZRS1ZGc21zWFcwY3NDcVlQU3Rj?=
 =?utf-8?B?dmgvbzc1TnFtcHVxYVdKeWFWMWJNZ0lpVUpHcC9YdnpBbllKKzZhWFFpVUJW?=
 =?utf-8?B?TU82QVI1MUw1VjFIRFpzM1kxY0RLdjZ5WDc0NkhXb2R6d0FoWmhJQUlSdUlJ?=
 =?utf-8?B?dHdrTFlNSTdXcHV4NERUcGFoWDkyczZBY2kxREFLTHNXaWMzdlU5RmlrODYr?=
 =?utf-8?B?MXBTV1ZCenlGNEVaOFhiOVJ1eEFDUkxES3VzMng2aUFNU0hGL1JlNk9FSjhJ?=
 =?utf-8?B?LzhCZzVRaGtVSENyeE9pNSsrcWVENHRvdFdQa0lNS21SWC83Z3UvWWdJT3lj?=
 =?utf-8?B?ZnB2akc2MmUzNkg5UXc4OFNTTC83a3hCc3AyWGFPYk5HRFhYRVp5STBsM2lT?=
 =?utf-8?B?Ri81SkNyb0tpZTQxbmtEeThYdGNzWmo1dTJvN2JWM2RZdlBUdlFjVEZ5VGVs?=
 =?utf-8?B?VXQ0OUcvS2tXTHRrRDZKdU9Za1pyTTQ4cWFJdk9EYzJuTklNcmJrbGM0NkJK?=
 =?utf-8?B?RFdjZERYekh2bkc5Tk82QmM0WVR5aE9OLzJhb2djWEErODlLNnJJVGNCVGRY?=
 =?utf-8?B?QmpVU0lna1hHZFovQVZNUjhjWEpiN1djbG1EdUcvQUlxRGNGMHNSTjJtVTg0?=
 =?utf-8?B?eXc3dmpSazFSRjh3S1dmbXFoYXBWRXI5TUUydkV1M2dySWY5TUY3QVlCeDcr?=
 =?utf-8?B?UW1EWEJvREVyWnpiYVBJSWNScmxGR3ZrVnloVXljRDc1Wm1WZmYxUlFxQk4w?=
 =?utf-8?B?ZWovVzRDZ2diTTZhazlFYlYrdDBsN3FCUStTQnRYcjUwTU1JM2E0MmhDKzkz?=
 =?utf-8?B?KzQ1cFNBYlNCeGRTcXBLa1lLSU8yN2NsczdoU2Jud3ZJbTVpMW9KZlVGS0hG?=
 =?utf-8?B?ZmQrdE0yaHJqMHptMXIwQkdFTnRia2h5Z0t2NmhTb0lpNjNtMWMwUmdyc1Np?=
 =?utf-8?B?K0toeXFBNGFLb1dvQVVnb3pIdVNUNnVndG5ZaTViMGZ6Q2lFbFNTOFJVenhO?=
 =?utf-8?B?T0tZRStRb1IrVXNkbEoyZ2NzUVFLcW12MjFGSkdnbkVNcGlKc0lWUURjZ1lW?=
 =?utf-8?B?SHB0MDhxdjdxaDUxNjhJK3BhZURPWHlHM2dGb1Q5dGQ2N3UvUnp4bU1wS1I4?=
 =?utf-8?B?cU55QnpVMTRRUkJGREc3NXM0V3A3ZldaMzcreVFWV1RTZFNBVE42VEpoQkRF?=
 =?utf-8?B?V2NwOG1jaSs2R1gzSUlWNjRSRElYK1BicUkzY1YvVzRJeGlBR3RZaHQrQlJC?=
 =?utf-8?B?TG1aaFJhNmpUbi9UdFVBd09oRnlJQmRlT3Z0NDRuaXlNWmIzRDQwRVFRVjVu?=
 =?utf-8?B?S2d1WVNtUXQvUTdFZTBoMWZLN0ZITzdQb1ROaGZ4aHp6ZDg5NmR0RU5jUE5p?=
 =?utf-8?B?OXRkR0pBVTZlTWpUUUluY1dCejVyNWlGT25OMW9RaGxBSk1yci9qU0FaZE1K?=
 =?utf-8?B?Q21xdVRIb3FXK001UHNxU2JPcEx3Z1RjSkZrSUkrcXovOFdSOXRIWTFvMlRl?=
 =?utf-8?B?RGVnTXhOem0waWtyUnRKWnpwZVhGbUgwdHNNYk93bkc4VS9uMnJGRXBOc2hI?=
 =?utf-8?B?ZllPckljOWlZVHA2SE9JSHo0YjFiaFY4ZGxqcnZ3TkR4NldTS1A1VXBTZ2hy?=
 =?utf-8?B?Z3dHR2JWTFNmbENESSswa1pMdzh4SkNnelorTFcvNjdBN2UxWFYwcHMyODNz?=
 =?utf-8?B?RDlrLzNjK2ZxT1h1Y1FZTno1bnlVYTRDd2dPUHNmMGR3V0dyaHVVVk53Ulhn?=
 =?utf-8?B?OGhrS1BISmdWcmRLWWgzRUZNQ2Z2SDZ6aVF6T05oNFdVK1ZUMktZZjZ3Y0Fp?=
 =?utf-8?B?b2RwN01iNFBFU3ZGM2xXMDBqQTRGSzVDLzZqdHg3WmcyWHhmR1dhM012NzA1?=
 =?utf-8?B?K254aHU0ZklOejBKd09menp1TWtpSEUveVdXeEUydnZOTStHNmlXSG9MS0Zm?=
 =?utf-8?Q?Cuaw=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d856c0d3-5431-4084-696c-08d9e17ec660
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 10:21:26.3096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: to9H60eyVTeQqU0cj4t8Yq09pzx1tTzpv+wr01i1oRWydByceY681dHZmzxHAo/4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2730
Message-ID-Hash: D6HWSDD3VIWY5LGHGCULCB4YYLH3ZWUJ
X-Message-ID-Hash: D6HWSDD3VIWY5LGHGCULCB4YYLH3ZWUJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6HWSDD3VIWY5LGHGCULCB4YYLH3ZWUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDEuMjIgdW0gMTE6MDAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUaHUsIEph
biAyNywgMjAyMiBhdCAwMTozMzozMkFNIC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6DQo+
PiBPbiBUaHUsIEphbiAyNywgMjAyMiBhdCAwOTo1NzoyNUFNICswMTAwLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOg0KPj4+IE9uIFRodSwgSmFuIDI3LCAyMDIyIGF0IDA5OjAyOjU0QU0gKzAxMDAsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IEFtIDI3LjAxLjIyIHVtIDA4OjU3IHNjaHJpZWIg
THVjYXMgRGUgTWFyY2hpOg0KPj4+Pj4gT24gVGh1LCBKYW4gMjcsIDIwMjIgYXQgMDg6Mjc6MTFB
TSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+PiBBbSAyNi4wMS4yMiB1bSAy
MTozNiBzY2hyaWViIEx1Y2FzIERlIE1hcmNoaToNCj4+Pj4+Pj4gV2hlbiBkbWFfYnVmX21hcCBz
dHJ1Y3QgaXMgcGFzc2VkIGFyb3VuZCwgaXQncyB1c2VmdWwgdG8gYmUgYWJsZSB0bw0KPj4+Pj4+
PiBpbml0aWFsaXplIGEgc2Vjb25kIG1hcCB0aGF0IHRha2VzIGNhcmUgb2YgcmVhZGluZy93cml0
aW5nIHRvIGFuIG9mZnNldA0KPj4+Pj4+PiBvZiB0aGUgb3JpZ2luYWwgbWFwLg0KPj4+Pj4+Pg0K
Pj4+Pj4+PiBBZGQgYSBoZWxwZXIgdGhhdCBjb3BpZXMgdGhlIHN0cnVjdCBhbmQgYWRkIHRoZSBv
ZmZzZXQgdG8gdGhlIHByb3Blcg0KPj4+Pj4+PiBhZGRyZXNzLg0KPj4+Pj4+IFdlbGwgd2hhdCB5
b3UgcHJvcG9zZSBoZXJlIGNhbiBsZWFkIHRvIGFsbCBraW5kIG9mIHByb2JsZW1zIGFuZCBpcw0K
Pj4+Pj4+IHJhdGhlciBiYWQgZGVzaWduIGFzIGZhciBhcyBJIGNhbiBzZWUuDQo+Pj4+Pj4NCj4+
Pj4+PiBUaGUgc3RydWN0IGRtYV9idWZfbWFwIGlzIG9ubHkgdG8gYmUgZmlsbGVkIGluIGJ5IHRo
ZSBleHBvcnRlciBhbmQNCj4+Pj4+PiBzaG91bGQgbm90IGJlIG1vZGlmaWVkIGluIHRoaXMgd2F5
IGJ5IHRoZSBpbXBvcnRlci4NCj4+Pj4+IGh1bW4uLi4gbm90IHN1cmUgaWYgSSB3YXPCoCBjbGVh
ci4gVGhlcmUgaXMgbm8gaW1wb3J0ZXIgYW5kIGV4cG9ydGVyIGhlcmUuDQo+Pj4+IFllYWgsIGFu
ZCBleGFjdGx5IHRoYXQncyB3aGF0IEknbSBwb2ludGluZyBvdXQgYXMgcHJvYmxlbSBoZXJlLg0K
Pj4+Pg0KPj4+PiBZb3UgYXJlIHVzaW5nIHRoZSBpbnRlciBkcml2ZXIgZnJhbWV3b3JrIGZvciBz
b21ldGhpbmcgaW50ZXJuYWwgdG8gdGhlDQo+Pj4+IGRyaXZlci4gVGhhdCBpcyBhbiBhYnNvbHV0
ZWx5IGNsZWFyIE5BSyENCj4+Pj4NCj4+Pj4gV2UgY291bGQgZGlzY3VzcyB0aGF0LCBidXQgeW91
IGd1eXMgYXJlIGp1c3Qgc2VuZGluZyBhcm91bmQgcGF0Y2hlcyB0byBkbw0KPj4+PiB0aGlzIHdp
dGhvdXQgYW55IGNvbnNlbnN1cyB0aGF0IHRoaXMgaXMgYSBnb29kIGlkZWEuDQo+Pj4gVWggSSBz
dWdnZXN0ZWQgdGhpcywgYWxzbyB3ZSdyZSBhbHJlYWR5IHVzaW5nIGRtYV9idWZfbWFwIGFsbCBv
dmVyIHRoZQ0KPj4+IHBsYWNlIGFzIGEgY29udmVuaWVudCBhYnN0cmFjdGlvbi4gU28gaW1vIHRo
YXQncyBhbGwgZmluZSwgaXQgc2hvdWxkIGFsbG93DQo+Pj4gZHJpdmVycyB0byBzaW1wbGlmeSBz
b21lIGNvZGUgd2hlcmUgb24gaWdwdSBpdCdzIGluIG5vcm1hbCBrZXJuZWwgbWVtb3J5DQo+Pj4g
YW5kIG9uIGRncHUgaXQncyBiZWhpbmQgc29tZSBwY2kgYmFyLg0KPj4+DQo+Pj4gTWF5YmUgd2Ug
c2hvdWxkIGhhdmUgYSBiZXR0ZXIgbmFtZSBmb3IgdGhhdCBzdHJ1Y3QgKGFuZCBtYXliZSBhbHNv
IGENCj4+PiBiZXR0ZXIgcGxhY2UpLCBidXQgd2F5IGJhY2sgd2hlbiB3ZSBkaXNjdXNzZWQgdGhh
dCBiaWtlc2hlZCBJIGRpZG4ndCBjb21lDQo+Pj4gdXAgd2l0aCBhbnl0aGluZyBiZXR0ZXIgcmVh
bGx5Lg0KPj4gSSBzdWdnZXN0IGlvc3lzX21hcCBzaW5jZSBpdCBhYnN0cmFjdHMgYWNjZXNzIHRv
IElPIGFuZCBzeXN0ZW0gbWVtb3J5Lg0KPj4NCj4+Pj4+IFRoZXJlIGlzIGEgcm9sZSBkZWxlZ2F0
aW9uIG9uIGZpbGxpbmcgb3V0IGFuZCByZWFkaW5nIGEgYnVmZmVyIHdoZW4NCj4+Pj4+IHRoYXQg
YnVmZmVyIHJlcHJlc2VudHMgYSBzdHJ1Y3QgbGF5b3V0Lg0KPj4+Pj4NCj4+Pj4+IHN0cnVjdCBi
bGEgew0KPj4+Pj4gIMKgwqDCoMKgaW50IGE7DQo+Pj4+PiAgwqDCoMKgwqBpbnQgYjsNCj4+Pj4+
ICDCoMKgwqDCoGludCBjOw0KPj4+Pj4gIMKgwqDCoMKgc3RydWN0IGZvbyBmb287DQo+Pj4+PiAg
wqDCoMKgwqBzdHJ1Y3QgYmFyIGJhcjsNCj4+Pj4+ICDCoMKgwqDCoGludCBkOw0KPj4+Pj4gfQ0K
Pj4+Pj4NCj4+Pj4+DQo+Pj4+PiBUaGlzIGltcGxlbWVudGF0aW9uIGFsbG93cyB5b3UgdG8gaGF2
ZToNCj4+Pj4+DQo+Pj4+PiAgwqDCoMKgwqBmaWxsX2ZvbyhzdHJ1Y3QgZG1hX2J1Zl9tYXAgKmJs
YV9tYXApIHsgLi4uIH0NCj4+Pj4+ICDCoMKgwqDCoGZpbGxfYmFyKHN0cnVjdCBkbWFfYnVmX21h
cCAqYmxhX21hcCkgeyAuLi4gfQ0KPj4+Pj4NCj4+Pj4+IGFuZCB0aGUgZmlyc3QgdGhpbmcgdGhl
c2UgZG8gaXMgdG8gbWFrZSBzdXJlIHRoZSBtYXAgaXQncyBwb2ludGluZyB0bw0KPj4+Pj4gaXMg
cmVsYXRpdmUgdG8gdGhlIHN0cnVjdCBpdCdzIHN1cHBvc2VkIHRvIHdyaXRlL3JlYWQuIE90aGVy
d2lzZSB5b3UncmUNCj4+Pj4+IHN1Z2dlc3RpbmcgZXZlcnl0aGluZyB0byBiZSByZWxhdGl2ZSB0
byBzdHJ1Y3QgYmxhLCBvciB0byBkbyB0aGUgc2FtZQ0KPj4+Pj4gSSdtIGRvaW5nIGl0LCBidXQg
SU1PIG1vcmUgcHJvbmUgdG8gZXJyb3I6DQo+Pj4+Pg0KPj4+Pj4gIMKgwqDCoMKgc3RydWN0IGRt
YV9idWZfbWFwIG1hcCA9ICpibGFfbWFwOw0KPj4+Pj4gIMKgwqDCoMKgZG1hX2J1Zl9tYXBfaW5j
cihtYXAsIG9mZnNldG9mKC4uLikpOw0KPj4+IFdydCB0aGUgaXNzdWUgYXQgaGFuZCBJIHRoaW5r
IHRoZSBhYm92ZSBpcyBwZXJmZWN0bHkgZmluZSBjb2RlLiBUaGUgaWRlYQ0KPj4+IHdpdGggZG1h
X2J1Zl9tYXAgaXMgcmVhbGx5IHRoYXQgaXQncyBqdXN0IGEgc3BlY2lhbCBwb2ludGVyLCBzbyB3
cml0aW5nDQo+Pj4gdGhlIGNvZGUgZXhhY3RseSBhcyBwb2ludGVyIGNvZGUgZmVlbHMgYmVzdC4g
VW5mb3J0dW5hdGVseSB5b3UgY2Fubm90IG1ha2UNCj4+PiB0aGVtIHR5cGVzYWZlIChiZWNhdXNl
IG9mIEMpLCBzbyB0aGUgY29kZSBzb21ldGltZXMgbG9va3MgYSBiaXQgdWdseS4NCj4+PiBPdGhl
cndpc2Ugd2UgY291bGQgZG8gc3R1ZmYgbGlrZSBjb250YWluZXJfb2YgYW5kIGFsbCB0aGF0IHdp
dGgNCj4+PiB0eXBlY2hlY2tpbmcgaW4gdGhlIG1hY3Jvcy4NCj4+IEkgaGFkIGV4YWN0bHkgdGhp
cyBjb2RlIGFib3ZlLCBidXQgYWZ0ZXIgd3JpdHRpbmcgcXVpdGUgYSBmZXcgcGF0Y2hlcw0KPj4g
dXNpbmcgaXQsIHBhcnRpY3VsYXJseSB3aXRoIGZ1bmN0aW9ucyB0aGF0IGhhdmUgdG8gd3JpdGUg
dG8gMiBtYXBzIChzZWUNCj4+IHBhdGNoIDYgZm9yIGV4YW1wbGUpLCBpdCBmZWx0IG11Y2ggYmV0
dGVyIHRvIGhhdmUgc29tZXRoaW5nIHRvDQo+PiBpbml0aWFsaXplIGNvcnJlY3RseSBmcm9tIHRo
ZSBzdGFydA0KPj4NCj4+IAlzdHJ1Y3QgZG1hX2J1Zl9tYXAgb3RoZXJfbWFwID0gKmJsYV9tYXA7
DQo+PiAJLyogcG9vciBMdWNhcyBmb3JnZXR0aW5nIGRtYV9idWZfbWFwX2luY3IobWFwLCBvZmZz
ZXRvZiguLi4pKTsgKi8NCj4+DQo+PiBpcyBlcnJvciBwcm9uZSBhbmQgaGFyZCB0byBkZWJ1ZyBz
aW5jZSB5b3Ugd2lsbCBiZSByZWFkaW5nL3dyaXR0aW5nDQo+PiBmcm9tL3RvIGFub3RoZXIgbG9j
YXRpb24gcmF0aGVyIHRoYW4gZXhwbG9kaW5nDQo+Pg0KPj4gV2hpbGUgd2l0aCB0aGUgY29uc3Ry
dWN0IGJlbG93DQo+Pg0KPj4gCW90aGVyX21hcDsNCj4+IAkuLi4NCj4+IAlvdGhlcl9tYXAgPSBJ
TklUSUFMSVpFUigpDQo+Pg0KPj4gSSBjYW4gcmVseSBvbiB0aGUgY29tcGlsZXIgY29tcGxhaW5p
bmcgYWJvdXQgdW5pbml0aWFsaXplZCB2YXIuIEFuZA0KPj4gaW4gbW9zdCBvZiB0aGUgY2FzZXMg
SSBjYW4ganVzdCBoYXZlIHRoaXMgc2luZ2xlIGxpbmUgaW4gdGhlIGJlZ2dpbmluZyBvZiB0aGUN
Cj4+IGZ1bmN0aW9uIHdoZW4gdGhlIG9mZnNldCBpcyBjb25zdGFudDoNCj4+DQo+PiAJc3RydWN0
IGRtYV9idWZfbWFwIG90aGVyX21hcCA9IElOSVRJQUxJWkVSKGJsYV9tYXAsIG9mZnNldG9mKC4u
KSk7DQo+IEhtIHllYWggdGhhdCdzIGEgZ29vZCBwb2ludCB0aGF0IHRoaXMgYWxsb3dzIHVzIHRv
IHJlbHkgb24gdGhlIGNvbXBpbGVyIHRvDQo+IGNoZWNrIGZvciB1bmluaXRpYWxpemVkIHZhcmlh
Ymxlcy4NCj4NCj4gTWF5YmUgaW5jbHVkZSB0aGUgYWJvdmUgKHdpdGggZWRpdGluZywgYnV0IGtl
ZXBpbmcgdGhlIGV4YW1wbGVzKSBpbiB0aGUNCj4ga2VybmVsZG9jIHRvIGV4cGxhaW4gd2h5L2hv
dyB0byB1c2UgdGhpcz8gV2l0aCB0aGF0IHRoZSBjb25jZXB0IGF0IGxlYXN0DQo+IGhhcyBteQ0K
Pg0KPiBBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4N
Cj4gSSdsbCBsZWF2ZSBpdCB1cCB0byB5b3UgJiBDaHJpc3RpYW4gdG8gZmluZCBhIHByZXR0aWVy
IGNvbG9yIGNob2ljZSBmb3INCj4gdGhlIG5hbWluZyBiaWtlc2hlZC4NCg0KVGhlcmUgaXMgb25l
IG1ham9yIGlzc3VlIHJlbWFpbmluZyB3aXRoIHRoaXMgYW5kIHRoYXQgaXMgZG1hX2J1Zl92dW5t
YXAoKToNCg0Kdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7DQoNCkhlcmUgd2UgZXhwZWN0IHRoZSBvcmlnaW5hbCBwb2lu
dGVyIGFzIHJldHVybmVkIGJ5IGRtYV9idWZfbWFwKCksIA0Kb3RoZXJ3aXNlIHdlIHZ1bm1hcCgp
IHRoZSB3cm9uZyBhcmVhIQ0KDQpGb3IgYWxsIFRUTSBiYXNlZCBkcml2ZXIgdGhpcyBkb2Vzbid0
IG1hdHRlciBzaW5jZSB3ZSBrZWVwIHRoZSB2bWFwIGJhc2UgDQpzZXBhcmF0ZWx5IGluIHRoZSBC
TyBhbnl3YXkgKElJUkMpLCBidXQgd2UgaGFkIGF0IGxlYXN0IG9uZSBjYXNlIHdoZXJlIA0KdGhp
cyBtYWRlIGJvb20gbGFzdCB5ZWFyLg0KDQpDaHJpc3RpYW4uDQoNCj4gLURhbmllbA0KPg0KPj4g
THVjYXMgRGUgTWFyY2hpDQo+Pg0KPj4+IC1EYW5pZWwNCj4+Pg0KPj4+Pj4gSU1PIHRoaXMgY29u
c3RydWN0IGlzIHdvcnNlIGJlY2F1c2UgYXQgYSBwb2ludCBpbiB0aW1lIGluIHRoZSBmdW5jdGlv
bg0KPj4+Pj4gdGhlIG1hcCB3YXMgcG9pbnRpbmcgdG8gdGhlIHdyb25nIHRoaW5nIHRoZSBmdW5j
dGlvbiB3YXMgc3VwcG9zZWQgdG8NCj4+Pj4+IHJlYWQvd3JpdGUuDQo+Pj4+Pg0KPj4+Pj4gSXQn
cyBhbHNvIHVzZWZ1bCB3aGVuIHRoZSBmdW5jdGlvbiBoYXMgZG91YmxlIGR1dHksIHVwZGF0aW5n
IGEgZ2xvYmFsDQo+Pj4+PiBwYXJ0IG9mIHRoZSBzdHJ1Y3QgYW5kIGEgdGFibGUgaW5zaWRlIGl0
IChzZWUgZXhhbXBsZSBpbiBwYXRjaCA2KQ0KPj4+Pj4NCj4+Pj4+IHRoYW5rcw0KPj4+Pj4gTHVj
YXMgRGUgTWFyY2hpDQo+Pj4gLS0gDQo+Pj4gRGFuaWVsIFZldHRlcg0KPj4+IFNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KPj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGYmxvZy5mZndsbC5jaCUyRiZh
bXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0MwNjU0YTE2ZWEz
NDQ0MjcxZDdjMzA4ZDllMTdiZDM1ZCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNk
JTdDMCU3QzAlN0M2Mzc3ODg3NDQyMjY4MDg4NzQlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlK
V0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2
TW4wJTNEJTdDMzAwMCZhbXA7c2RhdGE9UTZzb2x1QmdsYVpMaExzemRhcGFXdVVWc3FNcTVxdkpP
S2lKak8lMkI5QlRnJTNEJmFtcDtyZXNlcnZlZD0wDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
