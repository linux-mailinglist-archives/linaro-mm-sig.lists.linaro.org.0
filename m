Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 131665FB33D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Oct 2022 15:21:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28A6A43F22
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Oct 2022 13:21:23 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2049.outbound.protection.outlook.com [40.107.92.49])
	by lists.linaro.org (Postfix) with ESMTPS id 76B5B410A6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 23:12:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMuCRCMuT6p/FKulXWO8gbB38MYXhfsuOmjGiuepKm6nUWGqmRpuoN5NVk0W3vcR93JHIDuikx8N1GLflkKz29Wg5nMq8tV19/im69xfxrbRHaS955fiVL/V5hcGRuvLzIydc6Umi9aobBPHSAPxehysrg1lchsskSsvYHflEMzy4CmySgn3XLdnomMKT3jz/GBmovD7drzvBiUD7hr9ZDO0y5KaLa2WicA6J31BuCsXm8LwV1KWn6jyl98Q+dX+enxJsk6dHe3aZ3w9nbWPK3wcwS8KOJkfyb1Phi5VSjHxzuM3gnlRtfWudHrOR1vpM9DupNRc/s6IYWew0CHbpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZhg0vFUSkiUQYS7H1fY0vREXOHo5YKAPQOLbz46IC8=;
 b=dO/sQJCsWuf/vCofk9HB9IU2sdDJ1GfJrErXOvDN76YlIL27TOXVAzRYGdBvT5bmJFsBzrJp810Bx5X84xlyKTJVVOuhRLzIycgf2d3Is0qeaiIXaINrKBdPAIg9HPP1nZsCiiK0+h45sOv4Lhm6fkQDgO2+oyEbmZNYqYv92aJn97SBiVgO06HBjYHTErY/zpMSqyLDxVzmr70xJ7K2VE7pHRvwMBEYzQFkWw4h1/6uGICboJAHgm3X52ftLEtibWD8h4F9qzCgPWNDglwnRZu6VHNmyz5YtXMGMuk/9Y+vGMvD+U2Ojkh/YmYUtfVSXsnjO73ADMue3STtatYgXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZhg0vFUSkiUQYS7H1fY0vREXOHo5YKAPQOLbz46IC8=;
 b=jvch4Shf9Gg2FulnRc0PvVqeJ6rQxRvYfKRazQhYlyU7jLH31Hkg2yCkqkkJRzJi8F641RY20BVQt3tQBEVTZI8wgMsS7+M1bGmb9qHxlHcYi3bTDqTHGDG7rGg14N1Idr6At2uaQQ13XritM6u4iMBQ/gVUdcAG8qJgcCKuWnU6kZtnVDL2uhyTVzvSzPvUX6mmA/FZLPxAz3Moc/3ct1S6URBQLsdZTcphT+tANjl3/hyeTpbqkuO/0CE60nPFTwihGRnepMzmPP6ezFU37zWeriT6yeEq0MICfSURlNKQlAAB70U/Lkw+N35Z3KzgIumj4aupOgmkz3+5srguCg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by MW5PR12MB5650.namprd12.prod.outlook.com (2603:10b6:303:19e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Wed, 31 Aug
 2022 23:12:47 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%7]) with mapi id 15.20.5588.010; Wed, 31 Aug 2022
 23:12:47 +0000
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex.williamson@redhat.com>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Cornelia Huck <cohuck@redhat.com>,
	dri-devel@lists.freedesktop.org,
	kvm@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 31 Aug 2022 20:12:40 -0300
Message-Id: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
X-ClientProxiedBy: BLAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:208:36e::8) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c41f172-9517-4621-990b-08da8ba650b0
X-MS-TrafficTypeDiagnostic: MW5PR12MB5650:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EdA9knTyDyxcoVGacDHJ6fj74BWMGqUm5GCli3jb5dsHvnABIlMhNhVXwoBI1NQTHy5RpgF8G+dMdtmlR8LfK2P/A9nAkc+rQM3dTLRwQAKJzvo67oWqeh3AcfeIXFk+rY4+LKDg7Y3diIFv9hcuDIUU+DsqMyobk7r3TQZ3V4JWgM6eakeH/+izVenkmgGfn75fGlHx4ibSUy4h31kE8SXU8caiWQQdsQ0mBK2eq5sl6LXAAZXwjIsvVuRlhdB/ukcT2/XIA9E23bYKbJvtVHQTfFfKVgzdGLv8lJ2JF0beLNmzsgTLweiQaf3DlAudNr6FWAnsTXqRpG5ngSzQg3IdXp8pYLyX8xhKR6CCTb64PYzlSG1zA2q2GCI5kM30wLiDEsnb0Feh2EY/q1m8ONykSTh0RyD6b2Qj2gBbytHqca58DrCem2hj2IfZm0pHeI+vnXsbcnWrx2V9U+9JOOp9w9otm+HWb1R/ht8fR7wotYvnEccRlGGgffohR8c4W7T/T0M0IfNDb92KeIYJcHOGtE/TaXfy3Irc5j60qAf9b80grdOKegsa8ep22ZAoBZex0N0grS4X44UYbzOMoODwR8hN+31w7ZwUMVnJR+M107Ke5EJRyFzUdCClEeaquIpJRh3p0NCM5FYosxNtsvCrOWfj2C7CojQ6iB5fKL2GKXxswqSKEZ7zZn0fjPO9BvjAD6fNi34ZqkTJFAuOF+iO3ctyfhPli/F/rx5/TiA15U4SMnM33ITt4Z0svZHCLjXUSybRcQaqXNEOuUlswBw4TvC0kfIAuqh6fvjBejLaJcUXWJK0KQWvkwb43TrwAmVAhA6XIc7gUW+S+bMrU6pw8jakOFrNDWlwE1jhLOQPJmiepkHSaZbDsJDmzgBV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(6506007)(66476007)(66556008)(8676002)(4326008)(316002)(8936002)(6512007)(26005)(6666004)(86362001)(110136005)(478600001)(6486002)(966005)(38100700002)(54906003)(41300700001)(186003)(2906002)(66946007)(7416002)(2616005)(36756003)(83380400001)(66574015)(5660300002)(4216001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TzcyM2hORWIrMWxsdmxrQ2RjRzMvYzhmWEttdmk3eEo2NkpFUXhwSWNRRTJj?=
 =?utf-8?B?YVFUVHBQdWU1NHdwNmVaTnBjWHlTa2J0bkpSQjNEOHV6YitMN1lTbkVmTkIy?=
 =?utf-8?B?OEFHeDVaNmx4UHFwMml6NTY0OGF4Z2tncVM1SUgwTndnTEJtYWM4V2NxZTBt?=
 =?utf-8?B?MTgxZnluSmU4MlZ3VFk3TmtyNHpuVDZaUkRkSUp6aEpKRC9ZMnFPT0NVUDFx?=
 =?utf-8?B?VzlHYWVGZzNpaS83OUYzaWRjM1VJVzdONkQ1WmRBenlYY254Qys2cXl6N0dH?=
 =?utf-8?B?V2hqayttZytlckhiUnltTnNKWXNpYVBzYjdONy9IVGxFZVdrcGpESEw3TkE2?=
 =?utf-8?B?TERWeVF6T2g2UDdGL3FlTDFJd3ltZmtsckpMWlRjUkFtOGU4czRZd041OHQv?=
 =?utf-8?B?MmJwWjRvVmFEVFBXajlrNUxGN2FLaFo0L2d5YlFsaE44ZnlERmdxMS9mSGpy?=
 =?utf-8?B?SWpRRFdzS1FJM1JFUjdPYnVZMHByNUUrdmViZHV1V0xwbnQvL1UyQUk2RUxB?=
 =?utf-8?B?TUV4ZFBtMC9xYk9FeEhha0dvUjlNNFJVc0ZzcTNFYk5udWUwdXRGazZCOUZr?=
 =?utf-8?B?N21sdVNzVWR1RnhxelZ6TzlrT3UxZ3ltSzVxc1h2WnJROTF1NTNIRDA3SDFJ?=
 =?utf-8?B?L2tvd2ZFalZmSXlXcENlMG5YQSt5UVlwT3JNOXF0QUQyY2U4SWZoR1gxVGFz?=
 =?utf-8?B?UktHZzNDc1luMzFKejVYSmFwTFlwTDBCaEx4MVEwRTM1NG1oT0QxMXdjL3R6?=
 =?utf-8?B?RlA5Qk5seXI0RXVNeHJMdjZKS1hzQkhYQ05WbjQ4cFcvZUlRc2wzdW5hNEpo?=
 =?utf-8?B?TUZDOVZZQW9EeDJaeFdONXI2OEpYblRZbnJObExnRlVPcjFLOXBLM0xZMVl3?=
 =?utf-8?B?dDlaa0xKdEtWZmVEN0tsSFVTVk4vS2E0dDAyUHhrelRDd28vM0tycWt2ajVz?=
 =?utf-8?B?SlpHQVFmbUxNeEdZVmwvdEp1eXdlSWlDaHNGN2E5M1VQQ2I1MkZocW9RZ1lp?=
 =?utf-8?B?TjFBRUpiUjl4NEpXdC9XcEFMQUtFTmpQTWVMdXNFNXFxd3NMcm9LRjgxQUZM?=
 =?utf-8?B?RlJ5aTcwOUFGTk5MMTFuQUU0Wkx4SzFoUjJqelo4SzRsYzJmV0Z0bXZyN2RY?=
 =?utf-8?B?UDJ6aWsyWkJPN2l5Z0Z1L1RuVzdLZWZHWFVPeVJ4RlgwTEVSOWdXczRQNWpT?=
 =?utf-8?B?bDI0L3JKbis5emJqL2ZoUlI5N3FEVW4zL2NudVgyTTg1dTNKVGp5S0JUMWtz?=
 =?utf-8?B?S1Q5dVYzYlFPMnNEYUVUNDM4aVJBWklGTUo2OFZDMlNxcFowY1NQcXNvRjhH?=
 =?utf-8?B?VTVOZWxOcWxOMy9icFZkSExlaXBzaEdjSUZCL3UwMXE2M0cvQTFIQllQbWdi?=
 =?utf-8?B?NzhGa1RGTklYQ3RoUXU2RjltOHJHMDk4UFV1UVZhalBwbnlNMlRSUlJrKzZ6?=
 =?utf-8?B?U0d4VjhVQmZLME5PKzNjT25idlNFS21xVnoyNGFsSTJhV0RnZ0kzWSsxb1ll?=
 =?utf-8?B?eUg0b2xXYUwxU3JBOW5iR0s2NlowN09LaDF3enkzbzBKaVpVUGI3OUdoSU94?=
 =?utf-8?B?Y3hLbTI1clplT2F2T2VhY0N4TXBUc2x0YjRVSHZ2WWR2TnBkUWg4RnIyZkpP?=
 =?utf-8?B?Y0hTLzJRYytyT0VuRUtLdzhkMjdSemVabmVpWm4valk3ODJmTWNHc01Zakgx?=
 =?utf-8?B?dGVJVm4yOTVvNlFQcWRSUGREdlN0MXZ3ZE1MaWh6eGo2QXNKeXJBWmJlTU9D?=
 =?utf-8?B?RGdjaXlrSHV4RTZtSStQOURiV3FkRHpGWUcySzJLbndjUmVHZDRJMlM5UGRD?=
 =?utf-8?B?aHlLUUxRUkJMM3R0cW5ZbkVnYjlJZEhsc3JKSjRIQThwMldtbUhBa2d2WFpz?=
 =?utf-8?B?U1AxaTNpMFJuZ1NFWVk5QkR6Rk9acm1hMyswUlVZUjNoeTJETzREOU14N2dK?=
 =?utf-8?B?VG5XcnU3Qm53d21Pb1I2V3F6QWUvanJ1QnFRNEY2NG12S1IxQzIvemZHaGpp?=
 =?utf-8?B?Q2JEL0RIaUFDcHFNemRaZXhIWWxCS0lIZzJtMmUrZkFibUJxejVzK0RqYUZD?=
 =?utf-8?B?WXo4WG9hcVk0elI0TVZ5NjliTGpzSnBIS25JMGt1U3RySzh2Mlg2cDBXTVFj?=
 =?utf-8?Q?orkgMcw55w/u6iY077VuJ1Xdy?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c41f172-9517-4621-990b-08da8ba650b0
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 23:12:46.1879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mab9YO5WahAspTBsnF1oePGcZCJIffhNF6kcJjnNb0GjJl9OHMaHV1lI7B9Rmtlh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5650
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NT554TZ4JIVYNKNVDEXPOB2IPUTJC7EN
X-Message-ID-Hash: NT554TZ4JIVYNKNVDEXPOB2IPUTJC7EN
X-Mailman-Approved-At: Tue, 11 Oct 2022 13:18:45 +0000
CC: Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NT554TZ4JIVYNKNVDEXPOB2IPUTJC7EN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZG1hLWJ1ZiBoYXMgYmVjb21lIGEgd2F5IHRvIHNhZmVseSBhY3F1aXJlIGEgaGFuZGxlIHRvIG5v
bi1zdHJ1Y3QgcGFnZQ0KbWVtb3J5IHRoYXQgY2FuIHN0aWxsIGhhdmUgbGlmZXRpbWUgY29udHJv
bGxlZCBieSB0aGUgZXhwb3J0ZXIuIE5vdGFibHkNClJETUEgY2FuIG5vdyBpbXBvcnQgZG1hLWJ1
ZiBGRHMgYW5kIGJ1aWxkIHRoZW0gaW50byBNUnMgd2hpY2ggYWxsb3dzIGZvcg0KUENJIFAyUCBv
cGVyYXRpb25zLiBFeHRlbmQgdGhpcyB0byBhbGxvdyB2ZmlvLXBjaSB0byBleHBvcnQgTU1JTyBt
ZW1vcnkNCmZyb20gUENJIGRldmljZSBCQVJzLg0KDQpUaGlzIHNlcmllcyBzdXBwb3J0cyBhIHVz
ZSBjYXNlIGZvciBTUERLIHdoZXJlIGEgTlZNZSBkZXZpY2Ugd2lsbCBiZSBvd25lZA0KYnkgU1BE
SyB0aHJvdWdoIFZGSU8gYnV0IGludGVyYWN0aW5nIHdpdGggYSBSRE1BIGRldmljZS4gVGhlIFJE
TUEgZGV2aWNlDQptYXkgZGlyZWN0bHkgYWNjZXNzIHRoZSBOVk1lIENNQiBvciBkaXJlY3RseSBt
YW5pcHVsYXRlIHRoZSBOVk1lIGRldmljZSdzDQpkb29yYmVsbCB1c2luZyBQQ0kgUDJQLg0KDQpI
b3dldmVyLCBhcyBhIGdlbmVyYWwgbWVjaGFuaXNtLCBpdCBjYW4gc3VwcG9ydCBtYW55IG90aGVy
IHNjZW5hcmlvcyB3aXRoDQpWRklPLiBJIGltYWdpbmUgdGhpcyBkbWFidWYgYXBwcm9hY2ggdG8g
YmUgdXNhYmxlIGJ5IGlvbW11ZmQgYXMgd2VsbCBmb3INCmdlbmVyaWMgYW5kIHNhZmUgUDJQIG1h
cHBpbmdzLg0KDQpUaGlzIHNlcmllcyBnb2VzIGFmdGVyIHRoZSAiQnJlYWsgdXAgaW9jdGwgZGlz
cGF0Y2ggZnVuY3Rpb25zIHRvIG9uZQ0KZnVuY3Rpb24gcGVyIGlvY3RsIiBzZXJpZXMuDQoNClRo
aXMgaXMgb24gZ2l0aHViOiBodHRwczovL2dpdGh1Yi5jb20vamd1bnRob3JwZS9saW51eC9jb21t
aXRzL3ZmaW9fZG1hX2J1Zg0KDQp2MjoNCiAtIE5hbWUgdGhlIG5ldyBmaWxlIGRtYV9idWYuYw0K
IC0gUmVzdG9yZSBvcmlnX25lbnRzIGJlZm9yZSBmcmVlaW5nDQogLSBGaXggcmV2ZXJzZWQgbG9n
aWMgYXJvdW5kIHByaXYtPnJldm9rZWQNCiAtIFNldCBwcml2LT5pbmRleA0KIC0gUmViYXNlZCBv
biB2MiAiQnJlYWsgdXAgaW9jdGwgZGlzcGF0Y2ggZnVuY3Rpb25zIg0KdjE6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMC12MS05ZTZlMTczOWVkOTUrNWZhLXZmaW9fZG1hX2J1Zl9qZ2dAbnZp
ZGlhLmNvbQ0KDQpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBPZGVkIEdhYmJh
eSA8b2dhYmJheUBrZXJuZWwub3JnPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
Pg0KQ2M6IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPg0KQ2M6IE1hb3IgR290dGxp
ZWIgPG1hb3JnQG52aWRpYS5jb20+DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KU2lnbmVkLW9mZi1ieTogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4NCg0KSmFz
b24gR3VudGhvcnBlICg0KToNCiAgZG1hLWJ1ZjogQWRkIGRtYV9idWZfdHJ5X2dldCgpDQogIHZm
aW86IEFkZCB2ZmlvX2RldmljZV9nZXQoKQ0KICB2ZmlvX3BjaTogRG8gbm90IG9wZW4gY29kZSBw
Y2lfdHJ5X3Jlc2V0X2Z1bmN0aW9uKCkNCiAgdmZpby9wY2k6IEFsbG93IE1NSU8gcmVnaW9ucyB0
byBiZSBleHBvcnRlZCB0aHJvdWdoIGRtYS1idWYNCg0KIGRyaXZlcnMvdmZpby9wY2kvTWFrZWZp
bGUgICAgICAgICAgfCAgIDEgKw0KIGRyaXZlcnMvdmZpby9wY2kvZG1hX2J1Zi5jICAgICAgICAg
fCAyNjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBkcml2ZXJzL3ZmaW8vcGNpL3Zm
aW9fcGNpX2NvbmZpZy5jIHwgIDIyICsrLQ0KIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfY29y
ZS5jICAgfCAgMzMgKysrLQ0KIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfcHJpdi5oICAgfCAg
MjQgKysrDQogZHJpdmVycy92ZmlvL3ZmaW9fbWFpbi5jICAgICAgICAgICB8ICAgMyArLQ0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgfCAgMTMgKysNCiBpbmNsdWRlL2xpbnV4
L3ZmaW8uaCAgICAgICAgICAgICAgIHwgICA2ICsNCiBpbmNsdWRlL2xpbnV4L3ZmaW9fcGNpX2Nv
cmUuaCAgICAgIHwgICAxICsNCiBpbmNsdWRlL3VhcGkvbGludXgvdmZpby5oICAgICAgICAgIHwg
IDE4ICsrDQogMTAgZmlsZXMgY2hhbmdlZCwgMzY4IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9u
cygtKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3ZmaW8vcGNpL2RtYV9idWYuYw0KDQoN
CmJhc2UtY29tbWl0OiAyODVmZWYwZmY3ZjFhOTdkOGFjZDM4MDk3MWMwNjE5ODVkOGRhZmI1DQot
LSANCjIuMzcuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
