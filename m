Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 439704701A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 14:29:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31FDC61A57
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 13:29:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 29FC261A46; Fri, 10 Dec 2021 13:29:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 080F060591;
	Fri, 10 Dec 2021 13:29:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8786260498
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 13:29:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 787EA604ED; Fri, 10 Dec 2021 13:29:11 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2061.outbound.protection.outlook.com [40.107.237.61])
 by lists.linaro.org (Postfix) with ESMTPS id 0FDD061B43
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 13:29:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=El8PBOmxOXC3UW30XW8D7oWgEc6NpfqM9rLkuD8puOcb8XR+1k6RdMZRZUHmTmdPR7lF5KMtG7II/T8R+gJd06nnCeLc4yAsdACbAkB63npxnhoV54zlBwBXr4NF/Cq8mQxdCpPIAlwB70Fh91eczP74dh5EDSB4L01gI46FXu31qLXLv4wkfrSvzhW8haCsEPaR+/LMqBe9+gqMqLW9xxyNwV+iyAX2pRA5mxPOhqbQhjktRtKjXLXPNlOcLK6ki88vF2jK8CCWBb/aAvgo/vNI3HfH5cD7CF+IBiyn1FLUWUNZjaGfjM1a5JcrFOWvsdRMnuPl/0QCt94ZOCuVzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ed4XKMmoN/Q85E8p3Djd4G4KfV8Of7d5gFGbWZMdCkY=;
 b=YDeIEJLR/UV7O77Rj1RJn9ChH6TXnozvNuJL0dXq4jCDLNdDzOhwUHkb6WTOlacIhE853k7WG7TfbOQQgYDwvkSPgcvunNVoQJ77udKES6g15xP1Ay2F4V3RZHWqkrtwyY3w/tXnO8hJBRGABq81GLcwkDAMVgXHiVJMzTZYQ2mNyt5yEEnl+dOcWJbKAAeL0LA01/QGxoGUPT8h5bhZNhztkfX6QTVVoX1nxke3SkKBhkrxpL/LnZlBYYMFm0c8S143z9f3Le6uTEkDT8G6kHyGcz4/dx2vS5pnvlNSGM25DcNidcCe13c6WO69CBmVLePParHI9IJ93H1K/UTEmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ed4XKMmoN/Q85E8p3Djd4G4KfV8Of7d5gFGbWZMdCkY=;
 b=5dfb6lJhezWBRMWcEWav3m8uT3hhHZKVo3RuA2AEnEGaBLSidYh+SR6+s6nQ87IRD7H+q3qMs3Rr/WwoyPYGFyMHDZ2ac/ONQtsUOwHHeS4e17BoDimD4WAsgiKoLW1EY8TZoKSfYEGIJppd2LtJG2ndtdmdvMibxFbp6RZ/MXo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1453.namprd12.prod.outlook.com
 (2603:10b6:301:e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Fri, 10 Dec
 2021 13:29:00 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4%12]) with mapi id 15.20.4755.027; Fri, 10 Dec
 2021 13:29:00 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20211122110817.33319-1-mie@igel.co.jp>
 <CANXvt5oB8_2sDGccSiTMqeLYGi3Vuo-6NnHJ9PGgZZMv=fnUVw@mail.gmail.com>
 <20211207171447.GA6467@ziepe.ca>
 <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
 <20211210124204.GG6467@ziepe.ca>
 <880e25ad-4fe9-eacd-a971-993eaea37fc4@amd.com>
 <20211210132656.GH6467@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <d25b2895-63b6-158d-ff73-f05e437e0f91@amd.com>
Date: Fri, 10 Dec 2021 14:28:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211210132656.GH6467@ziepe.ca>
Content-Language: en-US
X-ClientProxiedBy: AM0PR04CA0068.eurprd04.prod.outlook.com
 (2603:10a6:208:1::45) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (87.176.191.248) by
 AM0PR04CA0068.eurprd04.prod.outlook.com (2603:10a6:208:1::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Fri, 10 Dec 2021 13:28:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce5a0807-81ec-4c11-c06c-08d9bbe10659
X-MS-TrafficTypeDiagnostic: MWHPR12MB1453:EE_
X-Microsoft-Antispam-PRVS: <MWHPR12MB1453AAB6017B424E3A7FA13A83719@MWHPR12MB1453.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wSbKDZifX0+R3H4cS4B0J3P6HcdF6TVJZEc1DH6jFp7bFjLgcFWVQQOuwdroxKSCE79czzvlWioHdsZlfnuw8WzdPcbUyiYXeVyyQyGScI1FaxpuXVlwYf/QtcbIxq3ibdg/IViXHffC+xBB5sG5tYI+XKT2VIeXmanB3dCftL+7296lr/EiYrCg3HYAGjrZ+IAv/9cMk2t8hTBrl4GjC+rQBv6Sj4WgVY3QM07dFhBZv/VuIQrkoQmQMIefLxlBtGLeeSCBCxAMHfyhUlHDkWRuBRamq624xge1ZYGq2FwtOoTMxEs8fkuA4HGLh3OdyLYpk0sOu2CxljKhh1fT28G2v8iZhWtv/r4IHwlejETbGuDTyU4Yh+iEHLheZe6D3eJbMkBTZ/oSLrNLeGatkL7Pxwn5FcoTOq2A3vLdtqw6a5Bfwig1BDUl16Ck53gZWGgdxoy6gNObraek2M/Ep7hZBuXYKmojBL120nXmEQm/SV0DROgpPOmz8wbnlKrb/X4wzqjR8Kt0OEMDijaubWRcK3j6w8ss7z77CSMX0N4Eux6vuYpb+nrQYBOgS4h0aWZXzeJGwYnk38i/OG0J3TtQvvttSe3JTYfdaCsKuk/BiOMR4xIm2LkJUvuRkh0qH4AzPOnVmntoFdtfHy4gExN24YdOSIeityANaInTaYjJZ5Vs/VRzhsinnZDncGRWuuk8lHlCmMfMS6rfwI6qlsJJNTlFidcmqWccSYtLg3CAkvOEVHcthRYlaytUsdlg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(83380400001)(86362001)(8936002)(66476007)(66556008)(66946007)(508600001)(6486002)(6916009)(2906002)(31696002)(66574015)(26005)(54906003)(5660300002)(36756003)(8676002)(7416002)(956004)(31686004)(16576012)(38100700002)(2616005)(4326008)(6666004)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STZhK0pLRzQxOHphT1RBQzRLZGZLKzJHbU92UkpMNFJSOWhQQUx0UVNmRVRS?=
 =?utf-8?B?MHZRaktIT1FGRW5jM0lESHpLbVhOK01KZDBVRlZwSFZoVGV6K0lCTmp1L2dE?=
 =?utf-8?B?bGNHNWdZWEdrbXZ6eFJTZmtLMzE4SDdWS0tKZmg5KytBMEVzbzlPeTRZM05R?=
 =?utf-8?B?TlB1R3hwYUVUSEY3S1FZK0NOdXZwUU9EMCt3R3ozSlVSWGdHQlFvLzNueFE4?=
 =?utf-8?B?WnZBMXJnOCtqZWNnb0E1a2p0a2pYTXoxdmtGM04wZXN4UHd6aTdOaFhzVUZq?=
 =?utf-8?B?WUpmbG51WkViR2FaZk9pOENnSXBkVy9zM3NCZU5CZ0lJTEpFTEhiRnlHMm5V?=
 =?utf-8?B?NzhVRlA5cDZ0ZVRZcFNEc0JnSHlqdU1HdWpYaE1PbTRiZndLQ2pVQ2I1Ujlu?=
 =?utf-8?B?b21jbUlkM0JIQUorVGkrNzFyRDh0ck91WXFEbjlVSTFxSzQ2MVZaaUROOFY2?=
 =?utf-8?B?a3RVeDQvVXdzNElHdDBNWWFrMHgwUC9Ib2xJem1ZWksxdlpVUG0zUDE3cTdB?=
 =?utf-8?B?ZVNhQmdBR09uN1lVSWh5WlNJRkhFYXUwbDJ1SExhZkpvbVBqR1VjcnpTS3VS?=
 =?utf-8?B?MVFRTXg3NTdIRUEwYWhoWWxDa28vRzJZSWF1MEw5TjlmK1V4cGEwcktsSlkw?=
 =?utf-8?B?Um52cERwM0s4eHI2bGg0MDlPQW9ESmNwK0JMTWJ2MjVncDFYbWd1YmVBYnhz?=
 =?utf-8?B?R1kzbUx3bXM4OWJGQjREM3N1bWFFa3lndVMyajZWSzJzZzB1VTljcVluRExi?=
 =?utf-8?B?NFp0cDlWRzNmczFoZXAraTZYWGtwWGlhTWNGeXQybXh1c2dDS3ZRSE9ndmFo?=
 =?utf-8?B?OCtIZkxGMEdtejRaVDdKakx6ZTNjTFMzdTNWN1YyaHl1YldJVmthSFZYOVN1?=
 =?utf-8?B?Y3BITkRxdk03dFpmRnVyZTNSQlpGSUxOaVRrOW1NU01PWjNNelZYYTIwT1lG?=
 =?utf-8?B?SW5pczBEdjFmN0FGRE43dG84SnluOUJDaVduNFh2dFQwT0RQSkRtVUtCc3Na?=
 =?utf-8?B?OUc5WEw5cXV3L3NyYzI3ZVZRVkRBTExXWU01bVdPblRzS3NSZHJPckh5Wis0?=
 =?utf-8?B?c1hTWTZWNUNFYkdQMHNtWUlCcytVY2tDcGlWaG5vREJ0M1QzWnJLbm5jcXI1?=
 =?utf-8?B?SmxmaGdmWGRpL0tFS0lNckdsdlJYVDk1aXhiV1U4SE0wY2VnWngzT2VGM0pQ?=
 =?utf-8?B?Y3FUbkd3TWV5VEUwVU9yVGplcVZIYm5BTmpuYy85Z01mWFB6b211T2ZCRWJM?=
 =?utf-8?B?WlNxZis3ajkyQVFhcWtKSHFLUkVtalZOUkJ4bFFaYm9lRGltandkV2drMkFS?=
 =?utf-8?B?T2R2U1ZHQWNyUzFCd2RzZTlqQk8wcFlxN01rSk1mMk9UVmErczh3Tzk4d2sy?=
 =?utf-8?B?UXVBOGFaRi9Va055NXdabmtuM3o4aDdZLzBJNm9ObHFSVlRnWHhSdFozRTlW?=
 =?utf-8?B?ZHd0NTF4UzR0ckFkdkh4dnpiRWRGeFNUZmJtZ0V1SWNIWnFac3ZZQlBNQnlX?=
 =?utf-8?B?RVRxZHJkRjNEOGp0WlF6cmRFZk9rK3FMdjNDRzc1cmVoQ0dScEtKdEp0cUxv?=
 =?utf-8?B?RGRHYmUySTRBalhVUVBiTGlSalNOdHdDZ0Mxd0xmTGxNaTVnVjJmZE40ZVFC?=
 =?utf-8?B?Q3owZnQ4dGJOZnNFclVwSmtSZEJDdzVZSzlJMW5DQlJEdkR1RzYxY2dBN1hL?=
 =?utf-8?B?NFJPdUM1YVVnRXFmcTZQYkN4RWF3d1JIUWozTXBRUm42eHFUWDRYdmFVVXYw?=
 =?utf-8?B?M0sxSDFSSHpkeE5SYldDZnZmb2hLZnB5UEFmZXZ0MFBIVThwN1dackxqM3Za?=
 =?utf-8?B?Z2ZLeXNXNG1pZm5zbnUxeHQrUi9MbmtPVjMxQzJOTnJPdHBhY2FvaEx3bUNP?=
 =?utf-8?B?MFEreDlMSHRsQmp0Y1BneFdBdERvTVREcjNDQjVsVzdFUG9DWkVxMnl3Wk1E?=
 =?utf-8?B?Q3FNSyt0d1dmdkVna0taQUR5cnV6UVM3aDE2UjJVdkpyK3VLZDdYOGVlRDIw?=
 =?utf-8?B?ZUpCZ08vb2VhcjFha0VCdk1DTFQ1a2poWlhGQVB2akp0b0N0NUdwUE5NekVV?=
 =?utf-8?B?WUhwOXBlV290bno2WUY0UWs1Q3VIVERReU1JMFVpRXArSFNHTmxhSWFsSy9Z?=
 =?utf-8?Q?62pM=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5a0807-81ec-4c11-c06c-08d9bbe10659
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 13:29:00.0115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1NxZbcorJG8kg59IHpcHok0oppB6cJPSruZk/VGZYV5iaElLheYfpGlFA1WNCkk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1453
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
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
Cc: Damian Hobson-Garcia <dhobsong@igel.co.jp>,
 Takanari Hayama <taki@igel.co.jp>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Tomohito Esaki <etom@igel.co.jp>,
 linaro-mm-sig@lists.linaro.org, Doug Ledford <dledford@redhat.com>,
 Zhu Yanjun <zyjzyj2000@gmail.com>, Shunsuke Mie <mie@igel.co.jp>,
 Alex Deucher <alexander.deucher@amd.com>, Sean Hefty <sean.hefty@intel.com>,
 Maor Gottlieb <maorg@nvidia.com>, Jianxin Xiong <jianxin.xiong@intel.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTAuMTIuMjEgdW0gMTQ6MjYgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gRnJpLCBE
ZWMgMTAsIDIwMjEgYXQgMDE6NDc6MzdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTAuMTIuMjEgdW0gMTM6NDIgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4+PiBPbiBG
cmksIERlYyAxMCwgMjAyMSBhdCAwODoyOToyNFBNICswOTAwLCBTaHVuc3VrZSBNaWUgd3JvdGU6
Cj4+Pj4gSGkgSmFzb24sCj4+Pj4gVGhhbmsgeW91IGZvciByZXBseWluZy4KPj4+Pgo+Pj4+IDIw
MjHlubQxMuaciDjml6Uo5rC0KSAyOjE0IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPjoK
Pj4+Pj4gT24gRnJpLCBEZWMgMDMsIDIwMjEgYXQgMTI6NTE6NDRQTSArMDkwMCwgU2h1bnN1a2Ug
TWllIHdyb3RlOgo+Pj4+Pj4gSGkgbWFpbnRhaW5lcnMsCj4+Pj4+Pgo+Pj4+Pj4gQ291bGQgeW91
IHBsZWFzZSByZXZpZXcgdGhpcyBwYXRjaCBzZXJpZXM/Cj4+Pj4+IFdoeSBpcyBpdCBSRkM/Cj4+
Pj4+Cj4+Pj4+IEknbSBjb25mdXNlZCB3aHkgdGhpcyBpcyB1c2VmdWw/Cj4+Pj4+Cj4+Pj4+IFRo
aXMgY2FuJ3QgZG8gY29weSBmcm9tIE1NSU8gbWVtb3J5LCBzbyBpdCBzaG91bGRuJ3QgYmUgY29t
cGF0aWJsZQo+Pj4+PiB3aXRoIHRoaW5ncyBsaWtlIEdhdWRpIC0gZG9lcyBzb21ldGhpbmcgcHJl
dmVudCB0aGlzPwo+Pj4+IEkgdGhpbmsgaWYgYW4gZXhwb3J0IG9mIHRoZSBkbWEtYnVmIHN1cHBv
cnRzIHZtYXAsIENQVSBpcyBhYmxlIHRvIGFjY2VzcyB0aGUKPj4+PiBtbWlvIG1lbW9yeS4KPj4+
Pgo+Pj4+IElzIGl0IHdyb25nPyBJZiB0aGlzIGlzIHdyb25nLCB0aGVyZSBpcyBubyBhZHZhbnRh
Z2VzIHRoaXMgY2hhbmdlcy4uCj4+PiBJIGRvbid0IGtub3cgd2hhdCB0aGUgZG1hYnVmIGZvbGtz
IGRpZCwgYnV0IHllcywgaXQgaXMgd3JvbmcuCj4+Pgo+Pj4gSU9NRU0gbXVzdCBiZSB0b3VjaGVk
IHVzaW5nIG9ubHkgc3BlY2lhbCBhY2Nlc3NvcnMsIHNvbWUgcGxhdGZvcm1zCj4+PiBjcmFzaCBp
ZiB5b3UgZG9uJ3QgZG8gdGhpcy4gRXZlbiB4ODYgd2lsbCBjcmFzaCBpZiB5b3UgdG91Y2ggaXQg
d2l0aAo+Pj4gc29tZXRoaW5nIGxpa2UgYW4gWE1NIG9wdGltaXplZCBtZW1jcHkuCj4+Pgo+Pj4g
Q2hyaXN0aWFuPyBJZiB0aGUgdm1hcCBzdWNjZWVkcyB3aGF0IHJ1bGVzIG11c3QgdGhlIGNhbGxl
ciB1c2UgdG8KPj4+IGFjY2VzcyB0aGUgbWVtb3J5Pwo+PiBTZWUgZG1hLWJ1Zi1tYXAuaCBhbmQg
ZXNwZWNpYWxseSBzdHJ1Y3QgZG1hX2J1Zl9tYXAuCj4+Cj4+IE1NSU8gbWVtb3J5IGlzIHBlcmZl
Y3RseSBzdXBwb3J0ZWQgaGVyZSBhbmQgYWN0dWFsbHkgdGhlIG1vc3QgY29tbW9uIGNhc2UuCj4g
T2theSB0aGF0IGxvb2tzIHNhbmUsIGJ1dCB0aGlzIHJ4ZSBSRkMgc2VlbXMgdG8gaWdub3JlIHRo
aXMKPiBjb21wbGV0ZWx5LiBJdCBzdHVmZnMgdGhlIHZhZGRyIGRpcmVjdGx5IGludG8gYSB1bWVt
IHdoaWNoIGdvZXMgdG8gYWxsCj4gbWFubmVyIG9mIHBsYWNlcyBpbiB0aGUgZHJpdmVyLgo+Cj4g
Pz8KCldlbGwsIHllcyB0aGF0IGNhbiBnbyBib29tIHByZXR0eSBxdWlja2x5LgoKTm90IHN1cmUg
d2hhdCB0aGV5IHdhbnQgdG8gdXNlIHRoaXMgZm9yLgoKQ2hyaXN0aWFuLgoKPgo+IEphc29uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
