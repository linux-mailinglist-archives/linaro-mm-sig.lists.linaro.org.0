Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3B53F04C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 15:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 426F26055D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 13:28:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8DEC5611B2; Wed, 18 Aug 2021 13:28:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6728860D70;
	Wed, 18 Aug 2021 13:28:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ADB326055D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 13:28:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9EA0560D70; Wed, 18 Aug 2021 13:28:28 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2057.outbound.protection.outlook.com [40.107.237.57])
 by lists.linaro.org (Postfix) with ESMTPS id 92E386055D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 13:28:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fatnMxYZXGPePtsKp16BZe1SJNukM4je1Git6db6sw5/evWtcAV4+l3QnIH/tSqZTLkoeprM6xk4ZS5rXyOWyX3HUAVCHulkon7apiAp+zLjaHSDo5UCEDAV2OCJBLCMdYjevEKGWKnZBDBbsX1B/xDwaMX3lCC0wZZejdzKNyjOWx2XC4GyLms70MXrgQMgLlJdMqvDP/M8sChnFCPqK1eST8Y4WyYMBpeS82AZwzUjB5FMph4zDraJBjRQUFQRu62VCtSmfCP59LBw7bw9HZSPNpUiAFSxjPtqGOJrFwV083hLzxJXl8VrJnucv171ocNIkU7az0mWouaE49EQzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3SqWGiBXzv/mSubuXPn5ffUgr2OrrExZ4thuxey+BoM=;
 b=KpBFW0j574zhe2jMsM6KSDXaxQkGLRV3I3k2eIvRdUB+zBS1R9+B4N/xSUDbpuiOOppzrbkYkIbZ5WmRLckHNq9nDVsdQa5YONTAOyGK/6N9w4yxUKAX2ZgcCsVwZhZLyEJitWIymIhbnK7U9KCgEFwGAnGj6pdxz7ovevhC9/Jl+GBUXvpLmvXAGSzhCL6InoVpySjCvIkGh8uKWMhJ9ObwbWtTs/BnfHpYF1tMMGOylXexalx3omfF2eZ7i62hmwwEWstaZFAPuJVBbYkJxk8GYT5g8ObdxRaOPmK65QCNtr1TB5208VlXzUAEc9WC3K7/6ywe3c6JmUuvT1YM+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3SqWGiBXzv/mSubuXPn5ffUgr2OrrExZ4thuxey+BoM=;
 b=ZFL5JVL4IQwA0pOiBwL1o/AwL1OGMTCzhegT5Z/3znKj+2Dcolb9gYh5xeBbfTLr8yj0SHTK1eE+nawfQRUM+CJ+X86PyjEq1+E42kaif4yfzMn5mBUgqmu5xPIL2pMm5ZAteNpRNfZVvftdfgIRNVaakZKLRdMB0OSdkKE69cc=
Authentication-Results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4374.namprd12.prod.outlook.com (2603:10b6:208:266::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 18 Aug
 2021 13:28:25 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 13:28:25 +0000
To: "Sa, Nuno" <Nuno.Sa@analog.com>, Daniel Vetter <daniel@ffwll.ch>
References: <20210818115810.274084-1-nuno.sa@analog.com>
 <9a63b45f-6fec-6269-ae16-8604b08514de@amd.com>
 <SJ0PR03MB6359C318092E0CB99D28D85099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
 <ed0bf7fd-de49-f94a-3eda-0c1fac50153a@amd.com>
 <YR0BMCMFcwXLjNAe@phenom.ffwll.local>
 <74802a7d-9105-006f-bcd8-3bbf97035704@amd.com>
 <SJ0PR03MB6359BBEC317B7DD637C9509A99FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <378ced6a-ae1e-259e-7a9f-ee3acb98e9d5@amd.com>
Date: Wed, 18 Aug 2021 15:28:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <SJ0PR03MB6359BBEC317B7DD637C9509A99FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR0101CA0059.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::27) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.31.55.180] (165.204.72.6) by
 AM4PR0101CA0059.eurprd01.prod.exchangelabs.com (2603:10a6:200:41::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Wed, 18 Aug 2021 13:28:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7bd0356e-7c71-44a7-aa01-08d9624c0e57
X-MS-TrafficTypeDiagnostic: MN2PR12MB4374:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4374422FA2BD475ED885ABD283FF9@MN2PR12MB4374.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bodSRKaCE8W4QrxSA7IjhyNz/TGsD3EShIO46DN2ed6clLUWMNIHtahPiev+UXeYAl1HFiPtVHlhV3d8zrxjbjWLvyT0kZC0G/hEAuEBxyWhhRnBhOiSdt6BhhEHCZqj6JkaYEVDL/fJ8+pY1Wwzecr5Zldy9TdPYBSGMmlmpp/j2jnbTONIsjctjaXRpocLkBRuNbVu7Ue3zrS2tseMaO1M+DFiMYCZVVMNhwV185de0INeROElkbAShhrCr/muhz1qP5WWaqDbSu7wUCtlpdxqpvGDzQFosHB+A9vl44g9eColU2Glvlmedt0/vomOrsBy8n/cjdzsCZbKS7UBxvqKOisMsWw/0u7T4xt1dARakmlucGS3Hbdo3geuUbY7Hi1Ki4KWmh9AUAVnvwMyah05VdidmJURrI3NErDEBAeG6WliPcTp9kGNxhikYm+oA5T0nKo2BMX7w+gOhtJDIFVNVlfwzvqOXw3iaDa0jFbaqtR5u5yI2yJwNxxSUV8hRMxToKMwxgv+hlYON7tcWfYbh1J9XDf5sngwKnomUHYsaRZrHAThTnj+EF3lXom/43LuQPO26Hf2SGM9JSj0F/ZRR+w2eiBDt8fNYy2YIS499cRFI4kCTd57bYU0cBKSSOmLLKBVx5if+ipnMnh1wQhdqR2OmQ33amXCz2/0T31Bj66R7Elgl2emh+kLR6KlgqNLjN3NRzF4ZT5+H52Wbg98+RhjIO1OKE4G+GEyLjwMsP3RpehtzbC7iQG/+iLG889f4vbBKPgEs7zyfafOQdR6D+DmgUqsh44n4lrrgMI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(45080400002)(53546011)(5660300002)(6486002)(316002)(8936002)(6666004)(26005)(19627235002)(66574015)(186003)(86362001)(36756003)(478600001)(4326008)(66556008)(54906003)(8676002)(38100700002)(956004)(66476007)(2616005)(31696002)(66946007)(110136005)(16576012)(83380400001)(31686004)(2906002)(966005)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aC8wTlFhR3J0ZTRHVWpEYVpjVTBhV3hDcTVTYitrUjRKNjNqTUpGZGxmSkEy?=
 =?utf-8?B?aVhXWDgzZzhmN3ZIQllVUVh2Z0h1SmY2M3pmeGlkSzVVSWY3d2NjemFEWm5r?=
 =?utf-8?B?V2pUVGx6R2VvK2N4cWdsTkNQSEpvcGk5N1JZQWprNFZ1M2lwcStmbzBNazF6?=
 =?utf-8?B?UXY5dmhWYXMrSFJtQkdpWkRxRmpkRTI4cmJjbnpFOVl3MWxaWlRlMjNSMTBO?=
 =?utf-8?B?cThZbWZzZlR3cGU3SDNHYXdseFk0eCtxc3NmZTJpL2J5ZHRaSFNtamw0bHhy?=
 =?utf-8?B?UlRkTWkxZmVtQWFxUk1qYW5kQ2NsbWhSckw4UUNpQ1ovZDAydTZFUDNERDgz?=
 =?utf-8?B?RndON04wd0N1TkdYYzE2SGdCTGhpN2Nmc3JTcFBUbWlSZW1wcFFvekxNZzk3?=
 =?utf-8?B?OS94ZDNHV2NtMU9kR0FTazZLMkdPKzNCVlFlSUtxbFd6WE5QbzlrM3Jwbms4?=
 =?utf-8?B?cFhMVHZ4dXBsVnA0aGpUNHduQi8rWHlNT0g0ZUo3K3FTMElPbXlscXFmcmp3?=
 =?utf-8?B?TTlhTTRUSVhXRXNaWXFqMXVTeUh1KzNBUndsVUpFUnNvWkxNVWt2eXJyZE0y?=
 =?utf-8?B?TitMMTF2RWlYclJhZGQ3bjUzdFN5SjB4T0c3bzNsYXVnQXhNV3JlSzd5ODgv?=
 =?utf-8?B?SU1QL1drY0FBaS9OVFR4eXJIbFpEVlcwVE5hWDc4OThRSWNSeGdsWjNrYzBt?=
 =?utf-8?B?ODFVNTNnS09kUjFrR3VJQzljYmkybVBYTDlWNGlTZUIzTDEwTjRud0lVaXRD?=
 =?utf-8?B?dkhFRE9ZU0dHcC9wbmQrZjZNL1ZNNDBUNmNXNjE1ZW5VWnhWMjRPZkJTMXZ4?=
 =?utf-8?B?V1lhQi9TSExQU3o3WVdXNG5JWWpqL2dDNlFQVEI0MDRpVGpCRVVCR20yeENt?=
 =?utf-8?B?WjRINURWVnRwMFFtNExUdVZKWVdCeWwrSVVoU2w0VjlWRXlhSE1LUkNGTFRP?=
 =?utf-8?B?R2kvY0ZtVXRCbHVxbjZYMUxXSnZWTksyM1FNYkFuaG40eFZLUDdQbFFlbmRG?=
 =?utf-8?B?bEw1a056MG9tcEg1Z2tDMXk0ZkpuMDJwUFhvR2dUSUNoazVmdU82TUhDdjYx?=
 =?utf-8?B?c0dRcUtGWDdZV0dpK0FRMmxMVktIS3hwSUdOTnpCYUt3Z2lQYm5OQVNvYmU4?=
 =?utf-8?B?YW5OQ2MyWDJUWXhWMTRvaldRRER4ZVB6cFlGR05NL2hjVXh0NlozQXVrL2ZN?=
 =?utf-8?B?bVBlODNZVXlKS01sWlpNK0dYOGg0algwOGRPVnhoT0xYeHQ0SE1PYnlHb1RH?=
 =?utf-8?B?RjhSK2pNV1Z1RXkwaE8zSk9KdDUwVjQvNjAzNkJpSVhpZDNpUkc0aG45SXFw?=
 =?utf-8?B?RWpkVTdsMUlBY2ZJbmtvTzcraEVzRkdjSkRRbTFQRi9XQ2N5T2hSTkVYMjFS?=
 =?utf-8?B?T3ErVlJpbVNUV1lWZlJCT2V3ZUFtTGd6cWNjNi9wRUhrS0Y3ZWR4WE1vVXM4?=
 =?utf-8?B?bFd1ZmN4T2xpUkhLVU1TSWZFOXVNTXd1RFhkQ0JhMzhBMDF1ZTFuTFV2VHEz?=
 =?utf-8?B?MWs0NnArNzJ3R1V6aDRZSFBVUzNiWUlIMnFOQXVKY3J4bzMrNXcxWWVicUQ4?=
 =?utf-8?B?RFpQOVRDTnF3NHdFVThZa0NwL3VUdENLQzNYRmNxU2F1Znp1VFVHS3VCeE5u?=
 =?utf-8?B?dXN6WnRZUmk4bEI0bGFDUEttR09ZTFFES2xCUjF0RUxhMzIyYVB1TjErK3c1?=
 =?utf-8?B?NlpKb1lYeE4zY3I3b05PV0NiR3dlVnhDTjJ1QnZKaCtkNTFyYjk5UFdhRVBo?=
 =?utf-8?Q?C3Bgbhy/zfdAonRk772o6Eb5wyDuQ48xfkpBDvD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bd0356e-7c71-44a7-aa01-08d9624c0e57
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 13:28:24.9207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wqrH7NB/lMP7SEcNq+aGivtxhE7hE/sVb4pkK3fSjruKY1nw3lWkxxMNRYELal3D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4374
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: return -EINVAL if dmabuf
 object is NULL
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
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <rob@ti.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTguMDguMjEgdW0gMTU6MTMgc2NocmllYiBTYSwgTnVubzoKPj4gRnJvbTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+PiBTZW50OiBXZWRuZXNkYXksIEF1
Z3VzdCAxOCwgMjAyMSAyOjU4IFBNCj4+IFRvOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+Cj4+IENjOiBTYSwgTnVubyA8TnVuby5TYUBhbmFsb2cuY29tPjsgbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnOwo+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmc7IFJvYgo+PiBDbGFyayA8cm9iQHRpLmNvbT4KPj4gU3Vi
amVjdDogUmU6IFtMaW5hcm8tbW0tc2lnXSBbUEFUQ0hdIGRtYS1idWY6IHJldHVybiAtRUlOVkFM
IGlmCj4+IGRtYWJ1ZiBvYmplY3QgaXMgTlVMTAo+Pgo+PiBbRXh0ZXJuYWxdCj4+Cj4+IEFtIDE4
LjA4LjIxIHVtIDE0OjQ2IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IE9uIFdlZCwgQXVnIDE4
LCAyMDIxIGF0IDAyOjMxOjM0UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4g
QW0gMTguMDguMjEgdW0gMTQ6MTcgc2NocmllYiBTYSwgTnVubzoKPj4+Pj4+IEZyb206IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+Pj4+IFNlbnQ6IFdlZG5l
c2RheSwgQXVndXN0IDE4LCAyMDIxIDI6MTAgUE0KPj4+Pj4+IFRvOiBTYSwgTnVubyA8TnVuby5T
YUBhbmFsb2cuY29tPjsgbGluYXJvLW1tLQo+PiBzaWdAbGlzdHMubGluYXJvLm9yZzsKPj4+Pj4+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZwo+Pj4+Pj4gQ2M6IFJvYiBDbGFyayA8cm9iQHRpLmNvbT47IFN1bWl0IFNlbXdhbAo+Pj4+
Pj4gPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+Pj4+Pj4gU3ViamVjdDogUmU6IFtQQVRDSF0g
ZG1hLWJ1ZjogcmV0dXJuIC1FSU5WQUwgaWYgZG1hYnVmIG9iamVjdAo+PiBpcwo+Pj4+Pj4gTlVM
TAo+Pj4+Pj4KPj4+Pj4+IFtFeHRlcm5hbF0KPj4+Pj4+Cj4+Pj4+PiBUbyBiZSBob25lc3QgSSB0
aGluayB0aGUgaWYoV0FSTl9PTighZG1hYnVmKSkgcmV0dXJuIC1FSU5WQUwKPj4+Pj4+IGhhbmRs
aW5nCj4+Pj4+PiBoZXJlIGlzIG1pc2xlYWRpbmcgaW4gdGhlIGZpcnN0IHBsYWNlLgo+Pj4+Pj4K
Pj4+Pj4+IFJldHVybmluZyAtRUlOVkFMIG9uIGEgaGFyZCBjb2RpbmcgZXJyb3IgaXMgbm90IGdv
b2QgcHJhY3RpY2UgYW5kCj4+Pj4+PiBzaG91bGQKPj4+Pj4+IHByb2JhYmx5IGJlIHJlbW92ZWQg
ZnJvbSB0aGUgRE1BLWJ1ZiBzdWJzeXN0ZW0gaW4gZ2VuZXJhbC4KPj4+Pj4gV291bGQgeW91IHNh
eSB0byBqdXN0IHJldHVybiAwIHRoZW4/IEkgZG9uJ3QgdGhpbmsgdGhhdCBoYXZpbmcgdGhlCj4+
Pj4+IGRlcmVmZXJlbmNlIGlzIGFsc28gZ29vZC4uCj4+Pj4gTm8sIGp1c3QgcnVuIGludG8gdGhl
IGRlcmVmZXJlbmNlLgo+Pj4+Cj4+Pj4gUGFzc2luZyBOVUxMIGFzIHRoZSBjb3JlIG9iamVjdCB5
b3UgYXJlIHdvcmtpbmcgb24gaXMgYSBoYXJkIGNvZGluZwo+PiBlcnJvcgo+Pj4+IGFuZCBub3Qg
c29tZXRoaW5nIHdlIHNob3VsZCBidWJibGUgdXAgYXMgcmVjb3ZlcmFibGUgZXJyb3IuCj4+Pj4K
Pj4+Pj4gSSB1c2VkIC1FSU5WQUwgdG8gYmUgY29oZXJlbnQgd2l0aCB0aGUgcmVzdCBvZiB0aGUg
Y29kZS4KPj4+PiBJIHJhdGhlciBzdWdnZXN0IHRvIHJlbW92ZSB0aGUgY2hlY2sgZWxzZXdoZXJl
IGFzIHdlbGwuCj4+PiBJdCdzIGEgbG90IG1vcmUgY29tcGxpY2F0ZWQsIGFuZCBXQVJOX09OICsg
YmFpbCBvdXQgaXMgcmF0aGVyCj4+PiB3ZWxsLWVzdGFibGlzaGVkIGNvZGUtcGF0dGVybi4gVGhl
cmUncyBiZWVuIHBsZW50eSBvZiBkaXNjdXNzaW9ucyBpbgo+PiB0aGUKPj4+IHBhc3QgdGhhdCBh
IEJVR19PTiBpcyBoYXJtZnVsIHNpbmNlIGl0IG1ha2VzIGRlYnVnZ2luZyBhIG1ham9yCj4+IHBh
aW4sIGUuZy4KPj4+Cj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9v
ay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnVybGRlZmVuc2UuY29tJTJGdjMlMkZfX2h0dHBzJTNB
JTJGJTJGbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bCZhbXA7ZGF0YT0wNCU3QzAxJTdD
Y2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M2MzU1NjYwZTUyNmI0ZGEyM2ZhNDA4ZDk2MjRh
MDE2MCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2NDg4
OTIyNjEyMDIxMDQlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlM
Q0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7
c2RhdGE9cGtaZzl2RG00UlRnbUFENnZ0dWdzTG1VdUwwZkc5RXhnVFdlZHhPeENXOCUzRCZhbXA7
cmVzZXJ2ZWQ9MAo+PiBvb2suY29tLz91cmw9aHR0cHMqM0EqMkYqMkZsb3JlLmtlcm5lbC5vcmcq
MkZsa21sKjJGQ0EqMkI1NWFGdwo+PiB5TlRMdVpnT1dNVFJ1YWJXb2JGMjd5Z3NrdXh2RmQtUDBu
LQo+PiAzVU5UKjNEME9nKjQwbWFpbC5nbWFpbC5jb20qMkYmYW1wO2RhdGE9MDQqN0MwMSo3Q2No
cmlzdGlhbi5rCj4+IG9lbmlnKjQwYW1kLmNvbSo3QzE5ZjUzZTJhMmQxODQzYjY1YWRjMDhkOTYy
NDYzYjc4KjdDM2RkODk2Cj4+IDFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkKjdDMCo3QzAqN0M2
Mzc2NDg4NzYwNzY2MTMyMzMqN0NVCj4+IG5rbm93bio3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0
d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUwKPj4gQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAq
M0QqN0MxMDAwJmFtcDtzZGF0YT1hanlCbmplUFJhazMKPj4gbzdPYnBCQXVKTmQwOEhna0FOTTlD
KjJCZ3pPQWVIck1rKjNEJmFtcDtyZXNlcnZlZD0wX187Sgo+PiBTVWxKU1VsSlNVbEpTVWxKU1Vs
SlNVbEpTVWxKU1UhIUEzTmk4Q1MweTJZIXFpRGVneDRzdlBVTVpydm56VW8KPj4gWDdWS3Z2RnBE
Y2VkSDlnWWJSQ2lXZmVfTjNmdzR6cG1BNTRxeGVmdk1pUSQKPj4+IFRoZXJlJ3MgYWxzbyBhIGNo
ZWNrcGF0Y2ggY2hlY2sgZm9yIHRoaXMuCj4+Pgo+Pj4gY29tbWl0IDlkM2UzYzcwNWViMzk1NTI4
ZmQ4ZjE3MjA4Yzg3NTgxYjEzNGRhNDgKPj4+IEF1dGhvcjogSm9lIFBlcmNoZXMgPGpvZUBwZXJj
aGVzLmNvbT4KPj4+IERhdGU6ICAgV2VkIFNlcCA5IDE1OjM3OjI3IDIwMTUgLTA3MDAKPj4+Cj4+
PiAgICAgICBjaGVja3BhdGNoOiBhZGQgd2FybmluZyBvbiBCVUcvQlVHX09OIHVzZQo+Pj4KPj4+
IEFueW9uZSB3aG8gaXMgcGFyYW5vaWQgYWJvdXQgc2VjdXJpdHkgY3Jhc2hlcyB0aGVpciBtYWNo
aW5lIG9uIGFueQo+PiBXQVJOSU5HCj4+PiBhbnl3YXkgKGxpa2Ugc3l6a2FsbGVyIGRvZXMpLgo+
Pj4KPj4+IE15IHJ1bGUgb2YgdGh1bWIgaXMgdGhhdCBpZiB0aGUgV0FSTl9PTiArIGJhaWwtb3V0
IGNvZGUgaXMganVzdCBhbiBpZgo+Pj4gKFdBUk5fT04oKSkgcmV0dXJuOyB0aGVuIGl0J3MgZmlu
ZSwgaWYgaXQncyBtb3JlIHRoZW4gQlVHX09OIGlzIHRoZQo+PiBiZXR0ZXIKPj4+IGNob2ljZSBw
ZXJoYXBzLgo+Pj4KPj4+IEkgdGhpbmsgdGhlIHdvcnN0IGNob2ljZSBpcyBqdXN0IHJlbW92aW5n
IGFsbCB0aGVzZSBjaGVja3MsIGJlY2F1c2UgYQo+PiBmZXcKPj4+IGNvZGUgcmVvcmdzIGxhdGVy
IHlvdSBtaWdodCBub3QgT29wcyBpbW1lZGlhdGVseSBhZnRlcndhcmRzCj4+IGFueW1vcmUsIGFu
ZAo+Pj4gdGhlbiB3ZSdsbCBtZXJnZSBwb3RlbnRpYWxseSB2ZXJ5IGJ1c3RlZCBuZXcgY29kZS4g
V2hpY2ggaXMgbm8KPj4gZ29vZC4KPj4KPj4gV2VsbCBCVUdfT04oc29tZV9jb2RpdGlvbikgaXMg
YSBkaWZmZXJlbnQgcHJvYmxlbSB3aGljaCBJIGFncmVlIG9uCj4+IHdpdGgKPj4gTGludXMgdGhh
dCB0aGlzIGlzIHByb2JsZW1hdGljLgo+Pgo+PiBCdXQgImlmIChXQVJOX09OKCFkbWFidWYpKSBy
ZXR1cm4gLUVJTlZBTDsiIGlzIHJlYWxseSBiYWQgY29kaW5nCj4+IHN0eWxlCj4+IGFzIHdlbGwg
c2luY2UgaXQgaGlkZXMgcmVhbCBwcm9ibGVtcyB3aGljaCBhcmUgaGFyZCBlcnJvcnMgYmVoaW5k
Cj4+IHdhcm5pbmdzLgo+IEkgYWdyZWUgdGhhdCBkb2luZyB0aGVzZSBraW5kIG9mIGNoZWNrcyBp
biB0aGUgY29yZSBvYmplY3Qgb2YgYW4gQVBJIGlzCj4gYWJ1c2luZyBwYXJhbWV0ZXIgInZhbGlk
YXRpb24iLiBJIGd1ZXNzIGEgZ29vZCBwYXR0ZXJuIGlzIGhhdmluZyB0aGUKPiB3YXJuaW5nIGFu
ZCBsZXQgdGhlIGNvZGUgZmxvdy4gQnV0IHNpbmNlIHRoZXNlIGNoZWNrcyBhcmUgYWxyZWFkeSBh
bGwKPiBvdmVyIHRoZSBwbGFjZSBJJ20gbm90IHN1cmUgdGhlIHdheSB0byBnby4gSSdtIHZlcnkg
bmV3IHRvIGRtYS1idWYKPiBhbmQgSSB3YXMganVzdCBjaGVja2luZyB0aGUgY29kZSBhbmQgc2F3
IHRoaXMgd2FzIG5vdCBiZSBjb2hlcmVudCB3aXRoCj4gdGhlIHJlc3Qgb2YgdGhlIEFQSSBzbyBJ
IHRob3VnaHQgaXQgd291bGQgYmUgYSBzdHJhaWdodCBlYXN5IHBhdGNoLi4uIFdlbGwsCj4gSSBj
b3VsZCBub3QgYmUgbW9yZSB3cm9uZyA6KQoKV2VsbCB0aGF0IGV4aXN0aW5nIHN0dWZmIG1pZ2h0
IGFjdHVhbGx5IGRlcGVuZCBvbiB0aGlzIGlzIGEgcmVhbGx5IGdvb2QgCmFyZ3VtZW50IHRvIGtl
ZXAgaXQgZm9yIG5vdyBvciBhdCBsZWFzdCB1bnRpbCB3ZSBoYXZlIGEgY29uc2VudCBvbiB3aGF0
IAp0byBkby4KCj4gQW55d2F5cywgZGVwZW5kaW5nIG9uIHdoYXQncyBkZWNpZGVkLCBJIGNhbiBz
ZW5kIGFub3RoZXIgcGF0Y2ggdHJ5aW5nCj4gdG8gbWFrZSB0aGVzZSBzdHVmZiBtb3JlIGNvaGVy
ZW50LiBBdCB0aGlzIHBvaW50LCBteSBmZWVsaW5nIGlzIHRoYXQgdGhpcwo+IHBhdGNoIGlzIHRv
IGJlIGRyb3BwZWQuLi4KCkF0IGxlYXN0IGZvciBub3cgSSB3b3VsZCBob2xkIGl0IGJhY2suCgpU
aGFua3MsCkNocmlzdGlhbi4KCj4KPiAtIE51bm8gU8OhCj4KPj4gUmV0dXJuaW5nIC1FSU5WQUwg
aW5kaWNhdGVzIGEgcmVjb3ZlcmFibGUgZXJyb3Igd2hpY2ggaXMgdXN1YWxseSBjYXVzZWQKPj4g
YnkgdXNlcnNwYWNlIGdpdmluZyBpbnZhbGlkIHBhcmFtZXRlcnMgYW5kIHNob3VsZCBuZXZlciBi
ZSBhYnVzZWQgdG8KPj4gaW5kaWNhdGUgYSBkcml2ZXIgY29kaW5nIGVycm9yLgo+Pgo+PiBGdW5j
dGlvbnMgYXJlIGVpdGhlciBpbnRlbmRlZCB0byB0YWtlIE5VTEwgYXMgdmFsaWQgcGFyYW1ldGVy
LCBlLmcuIGxpa2UKPj4ga2ZyZWUoTlVMTCkuIE9yIHRoZXkgYXJlIGludGVuZGVkIHRvIHdvcmsg
b24gYW4gb2JqZWN0IHdoaWNoIGlzCj4+IG1hbmRhdG9yeSB0byBwcm92aWRlLgo+Pgo+PiBDaHJp
c3RpYW4uCj4+Cj4+PiAtRGFuaWVsCj4+Pgo+Pj4KPj4+Cj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Cj4+
Pj4+IC0gTnVubyBTw6EKPj4+Pj4KPj4+Pj4+IENocmlzdGlhbi4KPj4+Pj4+Cj4+Pj4+PiBBbSAx
OC4wOC4yMSB1bSAxMzo1OCBzY2hyaWViIE51bm8gU8OhOgo+Pj4+Pj4+IE9uIHRvcCBvZiB3YXJu
aW5nIGFib3V0IGEgTlVMTCBvYmplY3QsIHdlIGFsc28gd2FudCB0byByZXR1cm4KPj4gd2l0aCBh
Cj4+Pj4+Pj4gcHJvcGVyIGVycm9yIGNvZGUgKGFzIGRvbmUgaW4gJ2RtYV9idWZfYmVnaW5fY3B1
X2FjY2VzcygpJykuCj4+Pj4+PiBPdGhlcndpc2UsCj4+Pj4+Pj4gd2Ugd2lsbCBnZXQgYSBOVUxM
IHBvaW50ZXIgZGVyZWZlcmVuY2UuCj4+Pj4+Pj4KPj4+Pj4+PiBGaXhlczogZmMxMzAyMGUwODZi
ICgiZG1hLWJ1ZjogYWRkIHN1cHBvcnQgZm9yIGtlcm5lbCBjcHUKPj4gYWNjZXNzIikKPj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+Pj4+Pj4+IC0t
LQo+Pj4+Pj4+ICAgICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDMgKystCj4+Pj4+Pj4g
ICAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+
Pj4KPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZl
cnMvZG1hLQo+PiBidWYvZG1hLQo+Pj4+Pj4gYnVmLmMKPj4+Pj4+PiBpbmRleCA2M2QzMjI2MWI2
M2YuLjhlYzc4NzZkZDUyMyAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+Pj4+Pj4+IEBA
IC0xMjMxLDcgKzEyMzEsOCBAQCBpbnQgZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QKPj4+
Pj4+IGRtYV9idWYgKmRtYWJ1ZiwKPj4+Pj4+PiAgICAgIHsKPj4+Pj4+PiAgICAgIAlpbnQgcmV0
ID0gMDsKPj4+Pj4+Pgo+Pj4+Pj4+IC0JV0FSTl9PTighZG1hYnVmKTsKPj4+Pj4+PiArCWlmIChX
QVJOX09OKCFkbWFidWYpKQo+Pj4+Pj4+ICsJCXJldHVybiAtRUlOVkFMOwo+Pj4+Pj4+Cj4+Pj4+
Pj4gICAgICAJbWlnaHRfbG9jaygmZG1hYnVmLT5yZXN2LT5sb2NrLmJhc2UpOwo+Pj4+Pj4+Cj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdAo+Pj4+IExpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwo+Pj4+Cj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5j
b20vP3VybD1odHRwcyUzQSUyRiUyRnVybGRlZmVuc2UuY29tJTJGdjMlMkZfX2h0dHBzJTNBJTJG
JTJGbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hy
aXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M2MzU1NjYwZTUyNmI0ZGEyM2ZhNDA4ZDk2MjRhMDE2
MCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2NDg4OTIy
NjEyMTIwOTklN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pR
SWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2Rh
dGE9JTJCN09SZzNaTDkzMkdmJTJGUXpaZGdjSlRiMDJkbTVkSUwwWWFBUjZtdEFRMmMlM0QmYW1w
O3Jlc2VydmVkPTAKPj4gb29rLmNvbS8/dXJsPWh0dHBzKjNBKjJGKjJGbGlzdHMubGluYXJvLm9y
ZyoyRm1haWxtYW4qMkZsaXN0aW5mbyoyCj4+IEZsaW5hcm8tbW0tCj4+IHNpZyZhbXA7ZGF0YT0w
NCo3QzAxKjdDY2hyaXN0aWFuLmtvZW5pZyo0MGFtZC5jb20qN0MxOWY1M2UyYTIKPj4gZDE4NDNi
NjVhZGMwOGQ5NjI0NjNiNzgqN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCoKPj4g
N0MwKjdDMCo3QzYzNzY0ODg3NjA3NjYxMzIzMyo3Q1Vua25vd24qN0NUV0ZwYkdac2IzZDhleUoK
Pj4gV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhW
Q0k2TW4wCj4+ICozRCo3QzEwMDAmYW1wO3NkYXRhPTBFNUw0S2lkNVpQZUtUOFV4eDdLNjFmQlht
STRUT3N6KjJGNUlMCj4+IHNGcExCKjJGbyozRCZhbXA7cmVzZXJ2ZWQ9MF9fO0pTVWxKU1VsSlNV
bEpTVWxKU1VsSlNVbEpTVWwhIUEzTgo+PiBpOENTMHkyWSFxaURlZ3g0c3ZQVU1acnZuelVvWDdW
S3Z2RnBEY2VkSDlnWWJSQ2lXZmVfTjNmdzR6Cj4+IHBtQTU0b1FzdHpTTkEkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
