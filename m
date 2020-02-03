Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB5150931
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 16:09:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEDF160607
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 15:09:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A1E24607AE; Mon,  3 Feb 2020 15:09:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B4E160770;
	Mon,  3 Feb 2020 15:09:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF5EF60607
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 15:09:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E27ED60770; Mon,  3 Feb 2020 15:09:04 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2078.outbound.protection.outlook.com [40.107.220.78])
 by lists.linaro.org (Postfix) with ESMTPS id 1B96860607
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 15:09:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFbT42sMFRY7vyR2jsg+vU861J73ShTeCYxIeU7+UOMEX77sOrClFHi9SDo2lfCqCRGe2cnkI9PUrjVOgkxM60kbN0xkW2QJNKGd1Jn4fXtoO72gCnLKaxC+LjGC/2VtQplrm23KjVETjmOL1MsZaH99Fw9XnfeOFRiiEQJmsZ5VfejtQwOZyuwK+N1kdt98nl+u5QXdaXDiHUejF92+Pv1qUjtgSK3nqSuNCXsm0l/g2dEPWW+UNd5mA2DyKwuO2tSmHiuc/W0F2rpykyDZRuMr+HR+FIqDv+Pfk88zoscgGzAPbqvVmMYLq60j8c2pm9j9TW4IesBXvGenzLeb7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mDPxitvLu7tX2qnG6XHJ2l592m0cADpHtKPko8YQ3Bs=;
 b=EhoXJC4wpGIj+FfvX09YRSfw3h5OkN59SeUw99sXtQC346rl8LWJKG7oF6Hpxjr2BqlW93U9KCEvMLZmRFQguB+99tWwHbdiz2sZPsdSe6een6wxsjjw+Vhxv/57otApg9djMq7SfChNEvFx7VVIGTU6myWNp6WL8Po98BcuUiYJ3LOp8NRjrQeJOWzO/c/mhPr/RWNZBeqJViJHNx1BZ0+p7o/h73CXCfhk4bP40weod5bhuBSrrBmeyOA8YZ8dUKoDLA/0p7ZtGaBjIKeYw1ylC4OWgrRToZQ1lnm3NLBnsLaATYCMNdoN5aMdfAOb0WRcmvqrXa2jGJhtgnandw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (10.175.88.22) by
 DM5PR12MB1129.namprd12.prod.outlook.com (10.168.240.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Mon, 3 Feb 2020 15:09:00 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92%11]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 15:09:00 +0000
To: Dan Carpenter <dan.carpenter@oracle.com>, Daniel Vetter <daniel@ffwll.ch>
References: <000000000000ae2f81059d7716b8@google.com>
 <CAKMK7uGivsYzP6h9rg0eN34YuOVbee6gnhdOxiys=M=4phK+kw@mail.gmail.com>
 <20200203090619.GL1778@kadam>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <7ba76c48-a002-12c3-8114-701e399b1190@amd.com>
Date: Mon, 3 Feb 2020 16:08:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200203090619.GL1778@kadam>
Content-Language: en-US
X-ClientProxiedBy: AM4PR05CA0005.eurprd05.prod.outlook.com (2603:10a6:205::18)
 To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM4PR05CA0005.eurprd05.prod.outlook.com (2603:10a6:205::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27 via Frontend Transport; Mon, 3 Feb 2020 15:08:57 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 365c22ee-84fd-4d7b-d8ba-08d7a8baffc3
X-MS-TrafficTypeDiagnostic: DM5PR12MB1129:|DM5PR12MB1129:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB112930A95A172964ADD1FFD983000@DM5PR12MB1129.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0302D4F392
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(189003)(199004)(45080400002)(478600001)(186003)(16526019)(66946007)(6486002)(966005)(6666004)(53546011)(7416002)(2906002)(54906003)(31696002)(110136005)(86362001)(4326008)(316002)(52116002)(81156014)(31686004)(66556008)(66476007)(81166006)(2616005)(36756003)(8676002)(8936002)(5660300002)(99710200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1129;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tTNPf+FzOYMVATiqEOY3aDFPauPiAn7KMNMGfQ2Z5DvCSYrnWPXHZ/5PmkjfBrpsesgsdDkiW6H3F1v188Ak49K6jXD7csXYXqEoB40TmF2Edt52F56nMjk/IXpmUssloF5hSuSLlJcbZoyGfk1b/QD9WKaO0+Nc3fVuDj0rAWBBSsJLo1yws5YKXgxFgUwfKvtleIsUUagGtdrGu7p+4keDZ78oSxRPUBsJEz2wl0wgfVTIfK3yIUMY97qw3Mov7Rq0PRgwKBbv+TejRSm5QoV04LWlzW0cN4Nn0ODHCaR2wrO/nala6C6Lgvuo+7yohRTqcRfZgHIC0tS0oSAz7QS8NEEgw0oRw4heRf6qoEQSt3fugZC5eRXoU6krBwbKmgCziNedlOoC/A8QxmmQof1LGbyx8wiKe/rGXOTpvEthUvgTDzc/OSwDUcpaN46XXWKYzcVitehx0XeIy865Z4LrN1bZEXFyUJdoQ6AcLa78lV5E/g0EbQOfkDnA8JfwJK+4ajTuGSG3pUrcdYBoaDCSTiSubGFKXOl6T0WW8LEnqUspXDsjvcHApjIOmtZPvfjLQZgn9G0sqWRGgbqM1BznkFMici1Q4c9rY9Aq4BFDgWCFepAEemrVMviKvv8G4BwPrT4Pb/cD8J4fsKATKw==
X-MS-Exchange-AntiSpam-MessageData: BEEKTmWHUNj9YPxqZRt34IaeDjojfLOnibllKiw1hZ7t7HvxZplsXb2CKlaNt44z50sIYKayORMWNYFNnL8YCvREejxF7tzaf6Ot/fC2qKL6nKCgbotLkNVWG3S6ERLyT69WRyxIQ6ds1c299zv2HQI3yL3XkcTBbR41Kd2ky9PN5YFMyJgFGtkni/axItOJh7AG1+2U7uRenS5P3j8/wQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 365c22ee-84fd-4d7b-d8ba-08d7a8baffc3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2020 15:09:00.7031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8284h64pNXNi3WZvQfc60O+idzZPv7ycBZwMJ+q7dFh5AabbkVgJO08MdI8xfYg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1129
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>, Dave Airlie <airlied@linux.ie>,
 netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "Anholt, Eric" <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Emil Velikov <emil.velikov@collabora.com>
Subject: Re: [Linaro-mm-sig] KASAN: use-after-free Read in
	vgem_gem_dumb_create
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDMuMDIuMjAgdW0gMTA6MDYgc2NocmllYiBEYW4gQ2FycGVudGVyOgo+IE9uIFN1biwgRmVi
IDAyLCAyMDIwIGF0IDAyOjE5OjE4UE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IE9u
IEZyaSwgSmFuIDMxLCAyMDIwIGF0IDExOjI4IFBNIHN5emJvdAo+PiA8c3l6Ym90KzBkYzQ0NDQ3
NzRkNDE5ZTkxNmM4QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+IHdyb3RlOgo+Pj4gSGVsbG8s
Cj4+Pgo+Pj4gc3l6Ym90IGZvdW5kIHRoZSBmb2xsb3dpbmcgY3Jhc2ggb246Cj4+Pgo+Pj4gSEVB
RCBjb21taXQ6ICAgIDM5YmVkNDJkIE1lcmdlIHRhZyAnZm9yLWxpbnVzLWhtbScgb2YgZ2l0Oi8v
Z2l0Lmtlcm5lbC5vcmcuLgo+Pj4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4+PiBjb25zb2xl
IG91dHB1dDogaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/
dXJsPWh0dHBzJTNBJTJGJTJGc3l6a2FsbGVyLmFwcHNwb3QuY29tJTJGeCUyRmxvZy50eHQlM0Z4
JTNEMTc5NDY1YmVlMDAwMDAmYW1wO2RhdGE9MDIlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBh
bWQuY29tJTdDNTI5ZjIyNzNiODM3NGYzODU2MDEwOGQ3YTg4ODYyZWIlN0MzZGQ4OTYxZmU0ODg0
ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3MTYzMTc2MDUxMTc3NjI3JmFtcDtzZGF0
YT0zZ29HcUJzNCUyQmprakNlVjJiWDVWVEIlMkYxUFJMRVA1YnpxNUVjJTJCTjdmS0hzJTNEJmFt
cDtyZXNlcnZlZD0wCj4+PiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3Mu
cHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGc3l6a2FsbGVyLmFwcHNw
b3QuY29tJTJGeCUyRi5jb25maWclM0Z4JTNEMjY0NjUzNWY4ODE4YWUyNSZhbXA7ZGF0YT0wMiU3
QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M1MjlmMjI3M2I4Mzc0ZjM4NTYwMTA4
ZDdhODg4NjJlYiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2
MzcxNjMxNzYwNTExNzc2MjcmYW1wO3NkYXRhPVNubEtsbiUyRkFHJTJCVlJWalNyT1NKalVFJTJC
aFNEZjM1d1RxeldMQ0F5R1FWc3MlM0QmYW1wO3Jlc2VydmVkPTAKPj4+IGRhc2hib2FyZCBsaW5r
OiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZzeXprYWxsZXIuYXBwc3BvdC5jb20lMkZidWclM0ZleHRpZCUzRDBkYzQ0NDQ3
NzRkNDE5ZTkxNmM4JmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNv
bSU3QzUyOWYyMjczYjgzNzRmMzg1NjAxMDhkN2E4ODg2MmViJTdDM2RkODk2MWZlNDg4NGU2MDhl
MTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzE2MzE3NjA1MTE3NzYyNyZhbXA7c2RhdGE9MzNF
Sk5BV2pUbTZFZGkxSjBvUEJmczhlcGIlMkJRMmNwQUtsemwxc1Q0MENRJTNEJmFtcDtyZXNlcnZl
ZD0wCj4+PiBjb21waWxlcjogICAgICAgZ2NjIChHQ0MpIDkuMC4wIDIwMTgxMjMxIChleHBlcmlt
ZW50YWwpCj4+PiBzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVj
dGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGc3l6a2FsbGVyLmFwcHNwb3QuY29t
JTJGeCUyRnJlcHJvLnN5eiUzRnglM0QxNjI1MTI3OWUwMDAwMCZhbXA7ZGF0YT0wMiU3QzAxJTdD
Y2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M1MjlmMjI3M2I4Mzc0ZjM4NTYwMTA4ZDdhODg4
NjJlYiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2MzcxNjMx
NzYwNTExNzc2MjcmYW1wO3NkYXRhPXptVXl5cDd6bnFRZkx6ek5aODBiTmdDSUxBamVNZUNWVnI3
eGY3Q0hhV2slM0QmYW1wO3Jlc2VydmVkPTAKPj4+Cj4+PiBUaGUgYnVnIHdhcyBiaXNlY3RlZCB0
bzoKPj4+Cj4+PiBjb21taXQgNzYxMTc1MDc4NDY2NGRiNDZkMGRiOTU2MzFlMzIyYWViMjYzZGRl
Nwo+Pj4gQXV0aG9yOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4+
PiBEYXRlOiAgIFdlZCBKdW4gMjEgMTY6MzE6NDEgMjAxNyArMDAwMAo+Pj4KPj4+ICAgICAgZHJt
L2FtZGdwdTogdXNlIGtlcm5lbCBpc19wb3dlcl9vZl8yIHJhdGhlciB0aGFuIGxvY2FsIHZlcnNp
b24KPj4+Cj4+PiBiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVj
dGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGc3l6a2FsbGVyLmFwcHNwb3QuY29t
JTJGeCUyRmJpc2VjdC50eHQlM0Z4JTNEMTE2MjhkZjFlMDAwMDAmYW1wO2RhdGE9MDIlN0MwMSU3
Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDNTI5ZjIyNzNiODM3NGYzODU2MDEwOGQ3YTg4
ODYyZWIlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3MTYz
MTc2MDUxMTc3NjI3JmFtcDtzZGF0YT01UXBURzRpVSUyRk90MjJMM2p4UmJOeHRWUFpaMkV2QkFj
RkdaZHFWblZDYlUlM0QmYW1wO3Jlc2VydmVkPTAKPj4+IGZpbmFsIGNyYXNoOiAgICBodHRwczov
L25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYl
MkZzeXprYWxsZXIuYXBwc3BvdC5jb20lMkZ4JTJGcmVwb3J0LnR4dCUzRnglM0QxMzYyOGRmMWUw
MDAwMCZhbXA7ZGF0YT0wMiU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M1Mjlm
MjI3M2I4Mzc0ZjM4NTYwMTA4ZDdhODg4NjJlYiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5
NGUxODNkJTdDMCU3QzAlN0M2MzcxNjMxNzYwNTExNzc2MjcmYW1wO3NkYXRhPWhONlVabkZSMm5J
TVBNc3BqSUY3Uzgyb1hzdGFSbCUyQkxBem16NXl1alBhYyUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Pj4g
Y29uc29sZSBvdXRwdXQ6IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9v
ay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnN5emthbGxlci5hcHBzcG90LmNvbSUyRnglMkZsb2cu
dHh0JTNGeCUzRDE1NjI4ZGYxZTAwMDAwJmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29l
bmlnJTQwYW1kLmNvbSU3QzUyOWYyMjczYjgzNzRmMzg1NjAxMDhkN2E4ODg2MmViJTdDM2RkODk2
MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzE2MzE3NjA1MTE3NzYyNyZh
bXA7c2RhdGE9TEhYTUFOT1VSRHYzRXNxVFN2SFNCWm5QRXpHUW9KVTFSYmVxWUV4Q2FHayUzRCZh
bXA7cmVzZXJ2ZWQ9MAo+Pj4KPj4+IElNUE9SVEFOVDogaWYgeW91IGZpeCB0aGUgYnVnLCBwbGVh
c2UgYWRkIHRoZSBmb2xsb3dpbmcgdGFnIHRvIHRoZSBjb21taXQ6Cj4+PiBSZXBvcnRlZC1ieTog
c3l6Ym90KzBkYzQ0NDQ3NzRkNDE5ZTkxNmM4QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPj4+
IEZpeGVzOiA3NjExNzUwNzg0NjYgKCJkcm0vYW1kZ3B1OiB1c2Uga2VybmVsIGlzX3Bvd2VyX29m
XzIgcmF0aGVyIHRoYW4gbG9jYWwgdmVyc2lvbiIpCj4+IEFzaWRlOiBUaGlzIGJpc2VjdCBsaW5l
IGlzIGNvbXBsZXRlIG5vbnNlbnNlIC4uLiBJJ20ga2luZGEgYXQgdGhlCj4+IHBvaW50IHdoZXJl
IEknbSBhc3N1bWluZyB0aGF0IHN5emJvdCBiaXNlY3QgcmVzdWx0cyBhcmUgZ2FyYmFnZSwgd2hp
Y2gKPj4gaXMgbWF5YmUgbm90IHdoYXQgd2Ugd2FudC4gSSBndWVzcyBtdWNoIHN0cmljdGVyIGZp
bHRlcmluZyBmb3Igbm9pc2UKPj4gaXMgbmVlZGVkLCBkdW5uby4KPj4gLURhbmlsZQo+IFdpdGgg
cmFjZSBjb25kaXRpb25zIHRoZSBnaXQgYmlzZWN0IGlzIG9mdGVuIG5vbnNlbnNlLgoKV2hpY2gg
bWFrZXMgc2Vuc2UsIGJ1dCB3ZSBjYW4gc3RpbGwgdHJ5IHRvIHNhbml0aXplIHRoZSByZXN1bHQu
IEknbSBub3QgCmZhbWlsaWFyIHdpdGggdGhlIHRlc3QgY2FzZSwgYnV0IEkgdGhpbmsgaXQgZG9l
c24ndCBldmVuIGNvbXBpbGUgdGhlIAphbWRncHUgZHJpdmVyLgoKU28gc2tpcHBpbmcgYWxsIHBh
dGNoZXMgb2Ygc3R1ZmYgeW91IGRvbid0IGV2ZW4gY29tcGlsZSB3b3VsZCBtYWtlIG5vdCAKb25s
eSB0aGUgcmVzdWx0IG9mIGJpc2VjdGluZyBxdWl0ZSBhIGJpdCBtb3JlIHJlbGlhYmxlLCBidXQg
YWxzbyBzcGVlZCAKdGhlIHByb2Nlc3MgdXAgcXVpdGUgYSBiaXQuCgpCdXQgbm8gZ29vZCBpZGVh
IHRvIGhvdyB0ZWFjaCB0aGF0IHRvIGEgY29tcGlsZSBib3Qgb3IgdGhlIGdpdCBiaXNlY3QgCmNv
bW1hbmQuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gcmVnYXJkcywKPiBkYW4gY2FycGVudGVy
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
