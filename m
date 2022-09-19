Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEC95BCAE5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Sep 2022 13:38:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFEF648A26
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Sep 2022 11:38:32 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2074.outbound.protection.outlook.com [40.107.93.74])
	by lists.linaro.org (Postfix) with ESMTPS id 4F2193F1E0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Sep 2022 11:38:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogSB8xAFNDwpQ0jsmReVlhEpv0sYFMBQ4e8RJwe17FV7sSK8RPMuOMGvfcrlFLopUhk6Y3NChPJka/+gbKEjyuMmy6kbMaxInbIvbTfNExKPjejTlCxKEyMwmKCLjPSoO1rEwzxAjZgp30Mnjq7BWoePdooaT71AoqW1/3CxYcp9TiySA25NCSIPrSMPwgI67auzjBxZSSvF395G3D9CXV7ida1BFFTtLhR27YiH3VqfCemiqcmOYSBjP65+58JhELrgq6R5pwURA0sorF7rLvIo2blJyluaR4LtJAeRS+QCelkKBAtK9V5EQe+2oJcgLN255OQoq9/YdfuqSTxBKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PQ0fpdEo3TbDm3eiH2vl6Dp3W9+I1FS2MadZHkVyTY=;
 b=BwIgC4UaG+Oet6f8/LV1wdQSuDn3qn4aH6uDRifdaq7E6rtnsn48/XcOdNSuvZHq9zuKUqQDLHva1ByABFeFWgIU3A/9YbteDoYuYVxYZjzRPrGeIOUtg0770p16l8CRpNhR1ZUdR7Hm89Isq000XwboMGxXgE2nQndWraYEFokPURL2gnYRHWwRnVGLBJoNicRJ2Yd89PzWn7O7OC+HXifh1DZS0uEr4698sXV301T0Q6pezFSoGkFnHes9rym4LnpFpJ+y37hHPBlQvN4krqpKJ7fqCCnqzUeL06w3NOwM4ni34fpeHsLYKYMVbbwsCnRnSFlASSGWDo7JV1i19w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6PQ0fpdEo3TbDm3eiH2vl6Dp3W9+I1FS2MadZHkVyTY=;
 b=jqTQ2uQ6DDTzVKWW8kPG1yXv4OD3AWEuSj6MiZGGRdpnUTmmwKRCcMApDZwG1kNUWE+HfvKJHKkoQJWxUp5ZR1qUR8CaSLSBf6al6Vf3PChzQI9uy0+uWNBwGpGrgghYUkRf4SahH++8O/vcKa0HDUd+3Xef3cRRxzlHyG2HT3s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BY5PR12MB4227.namprd12.prod.outlook.com (2603:10b6:a03:206::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 11:38:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed%6]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 11:38:24 +0000
Message-ID: <063eb521-3296-e604-5a5e-1382aabbefba@amd.com>
Date: Mon, 19 Sep 2022 13:38:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <d2d81ffd-2269-bdc6-0daa-8f3a99306e46@amd.com>
 <33a16b15-3d3c-7485-d021-ee2a727e5391@amd.com>
 <691c421f-1297-cd08-ea70-6750099275b1@amd.com> <YyVmYXGCfTuYUsNb@intel.com>
 <c958d871-9a89-3490-f5e3-3a2441926074@gmail.com> <YyhR9OGjWVwm31Rp@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YyhR9OGjWVwm31Rp@intel.com>
X-ClientProxiedBy: FR3P281CA0152.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|BY5PR12MB4227:EE_
X-MS-Office365-Filtering-Correlation-Id: cde44827-b2de-43fe-b4f6-08da9a337647
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	s0xP6kBMQDdw6En58P6W4J+9Ln4UcYm5bY1Vn+DXUFCRAXV/CEXwZWn07nS3SODs+vYmN89EbvIQHcJr3mB+V1gyFLOQ5cuJ6a9ClB1H2JLRUHU74dAkeTyeBXiV4fwz0LQSKjIoLjz+B/CsB/otBcUghDQ3Q75dfHxkzXYr9LNOVt4V6Hx294hyObQDD1zSFnakEjHUs5jj21xfNF0p/6AbhTTx9DHCWHM9V5ZO0u/aA506qoOp66YBpd4wWRnthOzXhG6jiSwBCbwPWFZRhUHbhQp6NRdsS7YkbJd6XeZtRag/HbVUXVzymx+48O4FArLLi1lBPCz7qZNhae14MqXulybjju8J4B4TnOB7pldGYCmKt5DtvPWIIWYN4IIBb4bfNSBOhU1l0mV3s6JMPNT/Md3xX03a3ywXrMMeMOHaBZ7LZoGeHXwXspyl8PuCPF4DgfVEPF+EZtK5zApq/jDSbDO/jSIR03IZtIl0mSEAl1+FuuD/QpSIYV4gvrPOc/jI27LXHgFNEoQ+mCBw14yofwlmo9kYNDFHPqM0e769hFcMRtItZC2GokvrAHarWH9BTyrG02HFxH9rkj33jj42YlKNHlvb2iNUFeKL6lVTegOCkiEQQZb8AlJ9LLOuQMLfa16lmGZOJPMF0jXjb/XIPE3m9e2SvNY8dE4pV5go4AdmHZWhRKZ7GOB4iuyhiU/sSVWAkkh9IyxcrAI4OD4U7YxlSEuKMX4g9FNjj4sYLmXvY5ol/R4MZ7abcKeiylMI++cd1oTMrH4cL68PtOyufUUn1Wd/nS7/sZmrZgkYTJF2sKwhEhc2KRuB2Nn3
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199015)(66946007)(4326008)(5660300002)(8676002)(66556008)(66476007)(7416002)(54906003)(31696002)(110136005)(86362001)(8936002)(45080400002)(316002)(66574015)(38100700002)(83380400001)(6666004)(53546011)(41300700001)(6486002)(966005)(6506007)(478600001)(2616005)(186003)(26005)(6512007)(2906002)(31686004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UFNzVUxmdTFtRzRnalIzVWljdXdjbWhvcDM4aG5WRUc1Mm9rRENtZklQV1NF?=
 =?utf-8?B?TmdnZXhZRlVmV0Rxamovcncrd0l6dkNwdmxFMFgzdmpPR0g0Q2NWdmdKTVFv?=
 =?utf-8?B?UTFCVGdzYStsQzNTTnIvT1ZpclFmblZhbldiSksxUDkxUDNORmg4RWUvdm5l?=
 =?utf-8?B?YnJhNFhxeUp1WFlIT1BRbzdGbVV4cHEwSzNjbWRvMWprWG9EUGhtRnpGYi95?=
 =?utf-8?B?NmZWL0Fwci8rMVp3cDBSSzJNUGtyYW85MFJlSWJMdjU3VFk0NU10V2NhcW1E?=
 =?utf-8?B?clcvQzkrZWdqSWV3S1VuMzBtbEpHQ0FSWHVMSjVZUExXZmNwSjJTZ3NzVjdI?=
 =?utf-8?B?T1ozZ0FZd2dpS1FPUDNiTFJXdytLck9FdUJERTdjY0didGZhL0FVQWlHc21N?=
 =?utf-8?B?WVpzT3R1bk1UWWhnYWFFYjNmMkt5ampDWmYrNThWWG4zYzI2THdRdTcyOHJk?=
 =?utf-8?B?dFpybWlmWWxwWDNxYUM4Tm5aWXVYSklyMk45RXZvT2hiNHNmMkJEN2dKM2Iv?=
 =?utf-8?B?VUtKYnRsRnhhMmt0WXIrZzhZSENQZnRSNHVsUDE0YzZMZGgvMzYwUkQxUGt4?=
 =?utf-8?B?OC9iREE3VHYvWTNZejVjV3Q5L014V2dhNjdyeTN3U2lGR3ZOWWIzWm5UMHVY?=
 =?utf-8?B?TXoxT3NMa1NsUmVTVElMZTVDTHpudStXcTlRdlNZVUlEQ0RrVUh0b2xXUVli?=
 =?utf-8?B?akFZNEZEYk5IYUZVTi9sUVhvQ3BkN1piRlFhQ0JPV3ZuSVQ1ejczNXI2MEQ2?=
 =?utf-8?B?L3FPMUpPNTdGZTV5bDdMcnNwTmFOWjQ2WkdMNEZIUjJlUjNlNTBIaUE2YnM4?=
 =?utf-8?B?OE4yeTJFY2lKSmZWWFVjM0tzbG8vYXhMQmxtTk1NZkVlU0NjYk5Db1Rnck1D?=
 =?utf-8?B?YTluTGY3TDMweW5rMVQ0QTRyQXErR05aZHY3eHFVVFpjR1RKQU54Q2xWa0FT?=
 =?utf-8?B?WUFlakNuKzJwZ21mcWV2cE9ubm1hazd4aWI1ZFpoVTNnWFo0aENDOXJ2VHUy?=
 =?utf-8?B?d3MxejgvNnpqQkc4Ti9LR1dOOHgyeExxSEVWdzk5MGVtbjNpa0V1cGJaYTVj?=
 =?utf-8?B?RlZUSXVPWFpVbGV0ZDlRR1hoUkFtdkUzdndWNTlCUXVNOFc5WjNoZmROQmxH?=
 =?utf-8?B?dXFaOXpmNUhmbTlFNlp1alJBbFV4RGk0VUYvNXo0WmJhSFB6R3kvczhOaU95?=
 =?utf-8?B?RzRFS210Sy9yMy9mdnpYc1NDdE5nVUlnOGxhL1ZDQjd1N2FHRkYzNUlpbVpi?=
 =?utf-8?B?K0pmVFJ4YnJlT0R3cGgvTysvSFluZm92YUExQUVlVThsSlBsenFhY28xdjFh?=
 =?utf-8?B?aDNhQUhoRzJQQnozUCtOY00zQlQ2dW9pNGNkUjZINW9jeHhDbFJ4QWtxcFlv?=
 =?utf-8?B?OTJVQ1pIVmlYQVphOTZlK2NMMTVDTll1eVlmSytVT1dsQW9zc1pNRDNxeldV?=
 =?utf-8?B?Rit2RUR5WHZpSTJ2WW9FSnk4cW02YXYxMmNQeFdYN1g0RVdLMmxQTzdhRDVy?=
 =?utf-8?B?ZU4rSXFMWEhURjEvL29Ea3MxOHVMRDNXUHhpaDFMd3M5UzZUcnBXUmVmNVd4?=
 =?utf-8?B?dWJBUzZvQWYvS1VrcGlOZ1M4dThpY0VnVElEYi9kOFk5MjBLekVzUHBqbnVu?=
 =?utf-8?B?Yis1b2hZUTQveCtnNlZRRFNaWk1PSm0wQ0pkT2RRVWhXRzU3aTRUb1NWREZC?=
 =?utf-8?B?UENkTHVOajN1TnUvQ0tEVThaZmNwR09JUnBmODlVQTQ0VGdWTjBGcEcwNXEx?=
 =?utf-8?B?RWF0RlhZQ2o2TFZYZmliV3FVZXNjREZ6RmZqL3F6WDVNQXc5anZ1OWx5Zmtm?=
 =?utf-8?B?SHY5ZG85TjFOZmdxWkZQWE9iYk5FSjd6OWk0eDJZT0hDQTNjL0x4Y1NmZEY0?=
 =?utf-8?B?QWdkdnF6TjQxcEgwckZtS1k3WldvdjJTQ2NmOVJZWWI3REs0eUlRVDFQbEpR?=
 =?utf-8?B?Wlo2RVRHcGw1S2swS2ROQXNPTXEwY0hnWlBibi9RTXRYN0tsS1VxeXllc3dK?=
 =?utf-8?B?d3NSdXdBd21qTnI5bWZ2eEJxZWpKVmZqWEM2ZjAyblcrSUl0aEFiZVd1NWN5?=
 =?utf-8?B?allZK0Y1K0tBTzJ2U1NzYW8xOC9GVFlTTUVHdU5WN0lTQkIzZE5OaDl3cjNU?=
 =?utf-8?Q?bHgIvnw8lAucHUWfUFa0SRTK+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cde44827-b2de-43fe-b4f6-08da9a337647
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:38:24.7579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H6H/TaDwGnMZOPjUugIg//IFT7GetfxHvK6Yyt+aqPwYG925/fbPq61iDRrbs/fP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4227
Message-ID-Hash: 46I6GVU67EVIQABJ56JT7JLM372NXSVL
X-Message-ID-Hash: 46I6GVU67EVIQABJ56JT7JLM372NXSVL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Yadav, Arvind" <arvyadav@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com, shashank.sharma@amd.com, amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/46I6GVU67EVIQABJ56JT7JLM372NXSVL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDkuMjIgdW0gMTM6MjYgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6DQo+IE9uIFNhdCwg
U2VwIDE3LCAyMDIyIGF0IDA1OjE4OjQwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAxNy4wOS4yMiB1bSAwODoxNyBzY2hyaWViIFZpbGxlIFN5cmrDpGzDpDoNCj4+PiBP
biBUaHUsIFNlcCAxNSwgMjAyMiBhdCAwNjowNTozMFBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4+PiBBbSAxNS4wOS4yMiB1bSAxNTowMiBzY2hyaWViIFlhZGF2LCBBcnZpbmQ6
DQo+Pj4+PiBPbiA5LzE1LzIwMjIgNTozNyBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
Pj4+PiBJcyB0aGF0IHN1ZmZpY2llbnQgdG8gYWxsb3cgcnVubmluZyBhIGRlc2t0b3Agb24gYW1k
Z3B1IHdpdGggdGhlDQo+Pj4+Pj4gZXh0cmEgY2hlY2sgZW5hYmxlZD8gSWYgeWVzIHRoYXQgd291
bGQgYmUgcXVpdGUgYSBtaWxlc3RvbmUuDQo+Pj4+Pj4NCj4+Pj4+IFllcywgSXQgaXMgcnVubmlu
ZyBvbiBhbWRncHUgd2l0aCBleHRyYSBjb25maWcgZW5hYmxlZC4NCj4+Pj4gSW4gdGhpcyBjYXNl
IEkgd2lsbCBzdGFydCBwdXNoaW5nIHRoZSBwYXRjaGVzIHRvIGRybS1taXNjLW5leHQuIEknbSBq
dXN0DQo+Pj4+IGdvaW5nIHRvIGxlYXZlIG91dCB0aGUgbGFzdCBvbmUgdW50aWwgdGhlIElHVCB0
ZXN0cyBhcmUgd29ya2luZyBhcyB3ZWxsLg0KPj4+IGZmcyBDaHJpc3RpYW4uIGludGVsIENJIGJs
ZXcgdXAgeWV0IGFnYWluOg0KPj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24u
b3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmludGVsLWdmeC1jaS4wMS5vcmclMkZ0cmVl
JTJGZHJtLXRpcCUyRkNJX0RSTV8xMjE0NiUyRnNoYXJkLWdsazclMkZpZ3QlNDBrbXNfcGxhbmVf
bG93cmVzJTQwdGlsaW5nLXklNDBwaXBlLWMtaGRtaS1hLTIuaHRtbCZhbXA7ZGF0YT0wNSU3QzAx
JTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0MzMWE0ZmQ4MjIwNGI0ZWFkYTk3NzA4ZGE5
YTMxZDkyMiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc5
OTE4MzYxNDI0MjM1NDclN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01E
QWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3
QyU3QyU3QyZhbXA7c2RhdGE9VHFQaVg0ODNmRiUyRlVkWkhUamxlOGs1WHBsY0YzRFZhWkJzMEl6
UWxOWWNrJTNEJmFtcDtyZXNlcnZlZD0wDQo+Pj4NCj4+PiBUaGUgbGFzdCB0aW1lIChzb21lIHR0
bSB0aGluZykgd2FzIGp1c3QgYSB3ZWVrIG9yIHR3byBhZ28sDQo+Pj4gc28gaXQncyByZWFsbHkg
Z2V0dGluZyB0aXJlc29tZSB3YXRjaGluZyB5b3UgcHVzaCBlbnRpcmVseQ0KPj4+IHVudGVzdGVk
IHN0dWZmIGFsbCB0aGUgdGltZS4gV291bGQgYmUgcmVhbGx5IGhlbHBmdWwgaWYgeW91DQo+Pj4g
ZmluYWxseSBzdGFydGVkIHRvIGRvL3JlcXVpcmUgcHJlbWVyZ2UgdGVzdGluZy4NCj4+IFdlbGwg
Zmlyc3Qgb2YgYWxsIHNvcnJ5IGZvciBjYXVzaW5nIHRyb3VibGUsIGJ1dCBhcyBJIHdyb3RlIGFi
b3ZlIEkNCj4+IGludGVudGlvbmFsbHkgbGVmdCBvdXQgdGhlIGxhc3Qgb25lIHRvICpub3QqIGJy
ZWFrIHRoZSBJR1QgdGVzdHMuDQo+Pg0KPj4gVGhlIHBhdGNoZXMgcHVzaGVkIHNvIGZhciB3aGVy
ZSBqdXN0IHVwZGF0aW5nIGEgYnVuY2ggb2YgY29ybmVyIGNhc2VzDQo+PiBhbmQgZml4aW5nIHRo
ZSBzZWxmdGVzdHMuDQo+Pg0KPj4gRG8geW91IGhhdmUgYW55IG1vcmUgaW5zaWdodCB3aHkgdGhh
dCBzaG91bGQgYWZmZWN0IHRoZSBJR1QgdGVzdHM/DQo+IEkgaGF2ZSBubyBpZGVhLiBZb3UgaGF2
ZSB0aGUgb29wc2VzIGZyb20gcHN0b3JlIHJpZ2h0IHRoZXJlLg0KPiBEaWQgeW91IGV2ZW4gbG9v
ayBhdCB0aGVtPw0KDQpBaCEgU29ycnksIEkgZGlkbid0IHNlZSB0aGF0IHRoZXJlIHdlcmUgYWRk
aXRpb25hbCBsaW5rcyB0byB0aGUgb29wc2VzLiANClllYWgsIHRoZSBwcm9ibGVtIGlzIG9idmlv
dXMgd2l0aCB0aGVtLg0KDQpUaGUgY2hlY2sgZm9yIHRoZSBzaWduYWxlZCBiaXQgY29tZXMgYmVm
b3JlIGdyYWJiaW5nIHRoZSBsb2NrLiBUaGlzIG9ubHkgDQp3b3JrZWQgYmVmb3JlIGJlY2F1c2Ug
b2YgdGhlIF9fZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoKSBzaG9ydGN1dC4NCg0KR29p
bmcgdG8gc2VuZCBhIGZpeCBmb3IgdGhpcyBpbiBhIG1pbnV0ZS4NCg0KVGhhbmtzLA0KQ2hyaXN0
aWFuLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
