Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D1356FD99
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jul 2022 11:57:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C047E4794E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jul 2022 09:57:46 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2070.outbound.protection.outlook.com [40.107.94.70])
	by lists.linaro.org (Postfix) with ESMTPS id D256F3F1E4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jul 2022 09:57:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5ZVs3UiLZBBLECwYlllWQWTHAnHuQtAbDsAawcdoCe4Av8hcgX9mvcWXfNaLD8twsntmUaqy3q7zNoBblgK9UmEUgTihZDGz1+thYtcq7W6gKMLg+ku7nUm/TCQsz3ytYx6QNO/Ig4UxnD1lxKwJjwQw5HY0nzxs1YMRsEkubBBqp/JLE6fnFI8NH9MCUOOc3pKFVIJj86WTEMkby23ZMWhe0lYbhUuMCCVrEtM0uk92VYf/v6t4F0hq0BeBi5K8JHOC6psE4hSQvUk31bJhDfafPFvnew9/nSrDhQcKyXZUvhFwhM8ZZ0wiR9KXLPjw+Y995Ty4SiOzOHRxo1o/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8HzPb9jLZgm6sgjgq3xC/p2rHa1k86Fkd3q0LpfM6uE=;
 b=Q9KfHvHVMefdYMDVAHg/vYxeKW0wUQaoQaK1LdcnNXmY2C/oHz2xcDLOE9AuR8mI8iGwj2BcBk6pdgxNRjp3csFe8DqZCLSZnW32e2CF7efAtzwuB65epryv+AJYXceCMW+/d3Bd0dPpWtYk9Imm1/Y+bA/SaDKyxmfmc8YcMVJgVcGUrSsQLPU5pr8k22gyvt27uYxTIhBE5UlWhgX097skZ78ETKOFOk+AzTr3rIL9j73igI7PlF8pqurTT1rYmXQhoJvUq9FXCmk9Zc4E39zebeABhPlbwVzs0W0NPj0deI9niABU5XGfITE6jmjau2B73D++OC9Gmkn2xiQ2yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8HzPb9jLZgm6sgjgq3xC/p2rHa1k86Fkd3q0LpfM6uE=;
 b=5OX+uwjKw9MjbmO1BL5jAve6aIQaEyWdj/UGs1lsD2O/v5GneXEU2Vg0t9XP2BajiZ/cGuFs1qP8lcAS14eUdUXf1fzMHzqGkMdEQpFWbVRb5K6lvt6R2XK3GDZqYy9BIumucQjmLKxw/eyXpL98AaPDcyEaxdIaUJH0RJQTtjk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB3900.namprd12.prod.outlook.com (2603:10b6:5:1c9::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 09:57:37 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 09:57:37 +0000
Message-ID: <4c9598f0-4ba7-c18e-2ccd-f508769a72e9@amd.com>
Date: Mon, 11 Jul 2022 11:57:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Karolina Drobnik <karolina.drobnik@intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
 <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
X-ClientProxiedBy: FR0P281CA0141.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aede7385-5df9-4d94-760e-08da6323c8c9
X-MS-TrafficTypeDiagnostic: DM6PR12MB3900:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GAOT+uUnDMY6E1anmM88imCW3bMJqvibp3tddXnbZILkKRl1MjU0Yw2PHyhfUSTS7l6qpg8nh2e69gKVQfdQOiISyuxlbF4r1Bq4827akXgmSDogvmqsZkiIhmpL2QI8Z+/O67Rhs6uZ3hCKNkmQx6DGJLhxF1KLgEzWwdNVGZ7A+lgiFgdfLCosUFlak9JEMTsRQaDxY48VgFIZAAVt7T9t9yRkrNc4l86g5AlxB9Qp3dFXphsbMSBbiXrF6fxRiRB0V8qw1VqT35HHld4t/uWNOHcJaSHm7zgbvxUS/CUoVVYDZ3Enrl5yitnsZc8xeatwur3EuZCjeBqD5yKK/x4RTVzuZ3gOeX7+aoAqVoxtrbBx0M+CuOMLMjgRpDcaRhLXRX1nNNhPDKG7uJuBfKHtvl2dbW7VSgLitVkU5jbfkmhIdLByRCABHg5D/jLBNTzMv4w5ZcnYAYii+oLWztp2QK397JyZhpvfnYoshDPeGGeTeZlUB2vImkdLDsGAP8PDAZp8jdVZD60m/8/qGQ4SshLRCxBNoeBHnR2FrVjsCQYm9mJQozo7jNoUQNYf9B40RxrpXnY5V6czYzbvFERTzVy4O3c+7/eZnCjcpeDAfQgduMtH6GbiFsfvs2fyRz/5j6JUxILl2ybutOz5elGN6eDaPnvzxI06qEIL5n2k2KCh0gWjvbXZN0jha6CSB28MEWEqW2rq9FA/YOxLbcfR1JEx8iR9+d8XOXnV4HKkmAtiu35xlXiWODSpyGD4uw3zB6dI3t4DZ7Y2Xl13b5ZsHpVVqXwtnZ8DAMO+anKmDAgd5B6IZAl+QmMD94dbwIdYzsGc4Se3itaA8LyZKwG/IxdAHGeXNdXshD3wvIz6OfuhtduQdSS0Ngxb1S5B
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(36756003)(86362001)(31686004)(38100700002)(2616005)(186003)(83380400001)(66574015)(6512007)(31696002)(26005)(2906002)(6666004)(478600001)(6486002)(966005)(316002)(110136005)(41300700001)(45080400002)(53546011)(6506007)(8936002)(5660300002)(4326008)(8676002)(66476007)(66946007)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ajB1WmVsRjNxeThQdlBiSVFCRndzemszMjNKZHYza3lncStZRGxaaDQydWZn?=
 =?utf-8?B?UTg4OUZLNjJrZ3kreElKUEg5Q3pvb09hdnRiYzlSc005Z0FnV2xiRERENkV5?=
 =?utf-8?B?ak9pMkp6YlZIUWl2d2tveHc4ZE0wYTNOclBpUCtCZks4UURSQWFUSVB1WE9T?=
 =?utf-8?B?bnJzcDBKN3ByajdabnZubWR0M280R1VFclI4eVNZYmtIdlNKVXlQVEM5dTdQ?=
 =?utf-8?B?QnRqM3BZVGZneHNuN0g3TFJDOVdyRjl2UzFra2lYeWQ4UDhVRXN5RXZrMVA0?=
 =?utf-8?B?UFZtaUtvUkZoN2JGbWdlcnpNMWdXVTJ1SExUMER2UGlOc3U5YzlVTWhsajZr?=
 =?utf-8?B?OFJ1SGtETUxZa3lVQ05UOXRaVVdMS2lDa3dQS1Z5eGdGVlMyYzlRcEI0U2JD?=
 =?utf-8?B?OVpjVmVNNFQwNFlPZUFHN2xjUG5rVDFieG96RGtoSDJmb1J5WENQZFI2c2wx?=
 =?utf-8?B?ZjRGTWhZb1BtNG5qZnFsQ2hUQk9NR3V1SjBLdEtEelZ3eGZSeWl6WHBkNGlt?=
 =?utf-8?B?VFhBV3JFWU41VklOYnMwNW1sZEdFWmxpWlliODVBK2tnM3YxbmtMTmJ5Z3Bl?=
 =?utf-8?B?cW55OXAxbUhyNm1EblB6cDZEeE9wMkVoZnE3ckVDQ3c3QUlSQUxpUmtIdmJm?=
 =?utf-8?B?elJTdHpDWHh5ckFUdGJiRlBwMHZLTG15NmxQUG85SC85STZUbmdtcUgvcDVi?=
 =?utf-8?B?UGdCRTZQMk9DNU5XVkVQNHhnbHFVaUpPY2JtNXVPbEQvQU9xdmhocnljd2NV?=
 =?utf-8?B?Z3kxa2FwaGxBenAxOEFCYXpsYVhyY1ZJenRnSTJUUCtTQTVTbUdUek1Fa2h2?=
 =?utf-8?B?Nkw4U2dhOTF4bEQ0N3dSQThMTFRqSWJYd0pVRnJIN25KdVNxNFJjdnFWaWY5?=
 =?utf-8?B?QTZBUEkraWI2OEZHU1ZiZGtxeHk3RDFCZDV1clNyUlY3KzB3WjcyZzlJT2Z2?=
 =?utf-8?B?dUJDN2xSNGVNSWxjY09YeGRiMi9RZnhpV1k3djMva2pUZXN3Q3BqTnQ1bzFP?=
 =?utf-8?B?SHdNYk93bGxDMExVQkowaXAxbkJVbkwybTZRRVYzMkdhSDN3Yy9qYjNkalNN?=
 =?utf-8?B?eXVlRlc5aCs3TkNGOWlQVEw5YmNPMGxCbTEzNmI2M3lJTUt6NmhMVUh3RUVv?=
 =?utf-8?B?ZjZqcW4wY0NjQVczdnZvVXNhRk13UW90cXhJelNGRHp5bTFMaTkxOVp3VG9H?=
 =?utf-8?B?K3Y3L1NacGxwTUYxTHpISHZlWW81aTl2UEJoOUVObzFUM3lkSkZCdDBXYUow?=
 =?utf-8?B?YWY5Y1FFb3FhTjdzQzNnbEk0anFROWwwdkhkYjhQNEk0aWdPN1RxNlBUUGVB?=
 =?utf-8?B?dC9tQ2wxUzFuQlAvZmdLWUxjZFh1TDEyMVBBaHBrUENiY3R4K2x3d2VONktC?=
 =?utf-8?B?dlNxdUR0c3FhTk9jOE1sVis3Z2dwM3hXc2h0SFhYbGdyRVRjVnJYdmdDb1Yz?=
 =?utf-8?B?N0Eyakg3bTJrRDlsYk52TXM0UFQ5b3JlNEdDRndQcU5FK25BVklKQ1EzeWov?=
 =?utf-8?B?amswUy9sNzFPc2ltVWtYcTREKzFOZ1crengzWHdET3IrbzNKMjNqdkEvWkFV?=
 =?utf-8?B?c1VRamZ6MWs5azJIOHBKSDB1dWU0TStYSUFvOFpKVkN5S3lhQm5OaEsrK0lD?=
 =?utf-8?B?SXZLU0drTStOelJaRVJ0UXlTOWFjcjk2eGRPSDVrM0ZXbkR1cVlWSERmYkE4?=
 =?utf-8?B?QVQ5SEFENjFkWGtyZ0ZtaHY4eTVMUGJWOWV5Q1kyQ3dyTnQ3cGhpdlpsTmlh?=
 =?utf-8?B?dWJkU0JWTklEZGQrNjFGMEtDQWpaSU5qeU1wU1JDbU9ESTdLNFZ6VmllSDk0?=
 =?utf-8?B?VFg1Qi9SbDhIaGpHdUEwYTk1aVFZNTJhNFV2Y0IwVk1hOW5iWjd2UHI1Rm5Z?=
 =?utf-8?B?MzluMnF6WS8xYmRUNHVjWWhjY3g3L2k5dmNETTgzSEFFVnU4VGRJL0ovbTVh?=
 =?utf-8?B?TVhIcDJKYXdLMVVFeG0zTlZHL3h5M1BOQTJ1YW1LQU1nejRGRDNuQ3ZqbGxF?=
 =?utf-8?B?MU9kYUk1T21iVzZNOWdxa1RQekJEUDA2WXJtUjdDdWZCcWNyNkJ1YXNUZWtQ?=
 =?utf-8?B?NmJGWEsxV09LMW9iUUg0bkJoNnJ0UVo5QTVtVnZ2Z2t4Y0lrak16YnEyeG12?=
 =?utf-8?Q?yL1dCL/UKb9FInd2WmP8b7KzH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aede7385-5df9-4d94-760e-08da6323c8c9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 09:57:37.2341
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8mD7rwyH8O5Eop7Wo6OoTeWzkq+OoX4PGwBpip0kpZt9d9JvOixNJk38n+zJREkn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3900
Message-ID-Hash: QCDJYHZOZACPT7E3EGLFNWQ6B7L32SZU
X-Message-ID-Hash: QCDJYHZOZACPT7E3EGLFNWQ6B7L32SZU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QCDJYHZOZACPT7E3EGLFNWQ6B7L32SZU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgS2Fyb2xpbmEsDQoNCkFtIDExLjA3LjIyIHVtIDExOjQ0IHNjaHJpZWIgS2Fyb2xpbmEgRHJv
Ym5pazoNCj4gSGkgQ2hyaXN0aWFuLA0KPg0KPiBJJ20gc29ycnkgZm9yIGRpZ2dpbmcgdGhpcyBv
bmUgb3V0IHNvIGxhdGUuDQo+DQo+IE9uIDA2LjA1LjIwMjIgMTY6MTAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+PiBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVycyBjbGVhbnVwIHNpZ25hbGVk
IGZlbmNlcyBhdXRvbWF0aWNhbGx5LCBzbw0KPj4gZmlsdGVyIHRob3NlIG91dCBmcm9tIGFycmF5
cyBhcyB3ZWxsLg0KPj4NCj4+IHYyOiBmaXggbWlzc2luZyB3YWxrIG92ZXIgdGhlIGFycmF5DQo+
PiB2MzogbWFzc2l2ZWx5IHNpbXBsaWZ5IHRoZSBwYXRjaCBhbmQgYWN0dWFsbHkgdXBkYXRlIHRo
ZSBkZXNjcmlwdGlvbi4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGluY2x1ZGUvbGludXgvZG1h
LWZlbmNlLXVud3JhcC5oIHwgNiArKysrKy0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UtdW53cmFwLmggDQo+PiBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3Jh
cC5oDQo+PiBpbmRleCBlN2MyMTlkYTRlZDcuLmE0ZDM0MmZlZjhlMCAxMDA2NDQNCj4+IC0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+PiArKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS11bndyYXAuaA0KPj4gQEAgLTQzLDkgKzQzLDEzIEBAIHN0cnVjdCBkbWFfZmVu
Y2UgKmRtYV9mZW5jZV91bndyYXBfbmV4dChzdHJ1Y3QgDQo+PiBkbWFfZmVuY2VfdW53cmFwICpj
dXJzb3IpOw0KPj4gwqDCoCAqIFVud3JhcCBkbWFfZmVuY2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9h
cnJheSBjb250YWluZXJzIGFuZCBkZWVwIA0KPj4gZGl2ZSBpbnRvIGFsbA0KPj4gwqDCoCAqIHBv
dGVudGlhbCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVzdCBhIG5vcm1hbCBmZW5jZSBv
bmx5IA0KPj4gdGhhdCBvbmUgaXMNCj4+IMKgwqAgKiByZXR1cm5lZC4NCj4+ICsgKg0KPj4gKyAq
IE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGljYWxseSBmaWx0ZXJl
ZCBvdXQsIHdoaWNoDQo+PiArICogbWVhbnMgdGhlIGl0ZXJhdGlvbiBpcyBwb3RlbnRpYWxseSBv
dmVyIG5vIGZlbmNlIGF0IGFsbC4NCj4+IMKgwqAgKi8NCj4+IMKgICNkZWZpbmUgZG1hX2ZlbmNl
X3Vud3JhcF9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgXA0KPj4gwqDCoMKgwqDCoCBmb3IgKGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdCho
ZWFkLCBjdXJzb3IpOyBmZW5jZTvCoMKgwqAgXA0KPj4gLcKgwqDCoMKgwqDCoMKgwqAgZmVuY2Ug
PSBkbWFfZmVuY2VfdW53cmFwX25leHQoY3Vyc29yKSkNCj4+ICvCoMKgwqDCoMKgwqDCoMKgIGZl
bmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBcDQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2Up
KQ0KPj4gwqAgwqAgI2VuZGlmDQo+DQo+IEl0IGxvb2tzIGxpa2UgdGhpcyBwYXJ0aWN1bGFyIHBh
dGNoIGFmZmVjdHMgbWVyZ2luZyBTeW5jIEZlbmNlcywgd2hpY2ggDQo+IGlzIHJlZmxlY3RlZCBi
eSBmYWlsaW5nIElHVCB0ZXN0IChpZ3RAc3dfc3luYylbMV0uIFRoZSBmYWlsaW5nIA0KPiBzdWJ0
ZXN0cyBhcmU6DQo+IMKgIC0gc3luY19tZXJnZSAtIG1lcmdpbmcgZGlmZmVyZW50IGZlbmNlcyBv
biB0aGUgc2FtZSB0aW1lbGluZSwgbmVpdGhlcg0KPiDCoMKgwqDCoMKgwqDCoMKgIHNpbmdsZSBu
b3IgbWVyZ2VkIGZlbmNlcyBhcmUgc2lnbmFsZWQNCj4NCj4gwqAgLSBzeW5jX21lcmdlX3NhbWUg
LSBtZXJnaW5nIHRoZSBmZW5jZSB3aXRoIGl0c2VsZiBvbiB0aGUgc2FtZQ0KPiDCoMKgwqDCoMKg
wqDCoMKgIHRpbWVsaW5lLCB0aGUgZmVuY2UgZGlkbid0IHNpZ25hbCBhdCBhbGwNCj4NCj4gwqAg
LSBzeW5jX211bHRpX3RpbWVsaW5lX3dhaXQgLSBtZXJnaW5nIGRpZmZlcmVudCBmZW5jZXMgb24g
ZGlmZmVyZW50DQo+IMKgwqDCoMKgwqDCoMKgwqAgdGltZWxpbmVzOyB0aGUgc3VidGVzdCBjaGVj
a3MgaWYgY291bnRpbmcgZmVuY2VzIG9mDQo+IMKgwqDCoMKgwqDCoMKgwqAgdmFyaW91cyBzdGF0
ZXMgd29ya3MuIEN1cnJlbnRseSwgaXQgY2FuIG9ubHkgc2VlIDINCj4gwqDCoMKgwqDCoMKgwqDC
oCBhY3RpdmUgZmVuY2VzLCAwIHNpZ25hbGluZyAoc2hvdWxkIGJlIDIgYWN0aXZlLA0KPiDCoMKg
wqDCoMKgwqDCoMKgIDEgc2lnbmFsaW5nKQ0KPg0KPiBSZXZlcnRpbmcgdGhpcyBjb21taXQgb24g
dGhlIHRvcCBvZiBkcm0tdGlwIGZpeGVzIHRoZSBpc3N1ZSwgYnV0IEknbSANCj4gbm90IHN1cmUg
aWYgaXQgd291bGRuJ3QgaW1wYWN0IG90aGVyIHBsYWNlcyBpbiB0aGUgY29kZS4gUGxlYXNlIGxl
dCBtZSANCj4ga25vdyBpZiBJIGNhbiBiZSBvZiBhbnkgaGVscC4NCg0KDQpUaGFua3MgZm9yIGxl
dHRpbmcgbWUga25vdy4gTm90IHN1cmUgd2hhdCdzIGdvaW5nIG9uIGhlcmUsIGJ1dCBJIGNhbiAN
CnRha2UgYSBsb29rIHRvZGF5IGlmIHRpbWUgcGVybWl0cy4NCg0KRG8geW91IGhhdmUgYSBkZXNj
cmlwdGlvbiBob3cgdG8gZWFzeSByZXByb2R1Y2UgdGhpcz8gRS5nLiBob3cgdG8gcnVuIA0KanVz
dCB0aG9zZSBzcGVjaWZpYyBpZ3RzPw0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQWxs
IHRoZSBiZXN0LA0KPiBLYXJvbGluYQ0KPg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gWzFd
IC0gcmVwcm9kdWNpYmxlIGxvY2FsbHksIGJ1dCBjYW4gYmUgYWxzbyBzZWVuIGluIHRoZSBDSToN
Cj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHBzJTNBJTJGJTJGaW50ZWwtZ2Z4LWNpLjAxLm9yZyUyRnRyZWUlMkZkcm0tdGlwJTJGaW5kZXgu
aHRtbCUzRnRlc3RmaWx0ZXIlM0RpZ3QlNDBzd19zeW5jJmFtcDtkYXRhPTA1JTdDMDElN0NjaHJp
c3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzJhZjU5YzgwOGY2NjRmMGNmMDQ5MDhkYTYzMjFlNzA4
JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzkzMTI5NDUw
NzczNjgzMSU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJ
am9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdD
JmFtcDtzZGF0YT1OVEkwNE9wUDdrTXNDdSUyQkRXc0owJTJGUklWSkdKYnh5MzZ0SkJJbUQyTVFE
VSUzRCZhbXA7cmVzZXJ2ZWQ9MCANCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
