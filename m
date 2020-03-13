Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BCD184837
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2020 14:34:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB7E466008
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2020 13:34:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9F97D6600B; Fri, 13 Mar 2020 13:34:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D04D66009;
	Fri, 13 Mar 2020 13:33:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D7F665FF2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2020 13:33:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5270366009; Fri, 13 Mar 2020 13:33:49 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680050.outbound.protection.outlook.com [40.107.68.50])
 by lists.linaro.org (Postfix) with ESMTPS id A5CE765FF2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2020 13:33:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bN1HYwEwvBONBC1rO5l1W2hoAVFWuzwKiLyEmlolj1l79ujTAH0jA/BNAgjV7/oH7jP2Qfg5x/aoIoMp+6vjCBXIkCdrDqmE7GkvQJDDX8B1tLex4kMTEn3sAMUu9g4PtoylhxA3b/JPkm5xLDpO+TcPLGvQ5NOM+ZrbBt/wHU63VetRrO8lml4GcJwKfXub3kd9J41qAAEx7GoCpg+bAddihVLKyAVnmqLrNOQ/9iwpxcI7RDeu8L5GwEPVQ8AKCOyyrMPA8ijfuEvHLt5WFgFqCSmLH0ilPBeb4zD4Ql2W0ieejHOvAUm+ZCM6ADbYLrvtXbpD5870C21b30txdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ylnX//eralmqw1boCGRLSksDrlq2UQuXz9e91UJT+oY=;
 b=UXGKmZN1OuZAZ4oTaHN3KE8tM6hu/Rra1J9KMhsAgCg4iTvAGN+R+AePqKq5NBiqMeFsM62hTrVYUYYcySIU2AzgtxCR+6QdrGASZiFxpdpkxIkWtWNZFwBpmsj8uvLNtwhHY9bYI1bEeBbg00DL78g6sSbu2IegB3jQK6vGcXASPjXs5cr7JM82PKX0RwPZAJmNYpzhmKkKR65veW2mPGXddSQRPqMhv46/MGKG5xYVCeFWNMNFw486jz6etUFg5je6CWCBOK3d0+lwWihaZ2zsn47ik1kqhU/w+MWoHMEoppY30l/gSbwwOYeVUkVy8NIR6JLK4I7NkJbRqdicKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1578.namprd12.prod.outlook.com (2603:10b6:4:e::7) by
 DM5PR12MB1658.namprd12.prod.outlook.com (2603:10b6:4:5::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 13:33:43 +0000
Received: from DM5PR12MB1578.namprd12.prod.outlook.com
 ([fe80::113e:3059:1470:c73c]) by DM5PR12MB1578.namprd12.prod.outlook.com
 ([fe80::113e:3059:1470:c73c%7]) with mapi id 15.20.2793.021; Fri, 13 Mar 2020
 13:33:43 +0000
To: Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org> <20200312141928.GK31668@ziepe.ca>
 <20200313112139.GA4913@infradead.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <0beef7ca-dd77-b442-5f45-f3a496189731@amd.com>
Date: Fri, 13 Mar 2020 14:33:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200313112139.GA4913@infradead.org>
Content-Language: en-US
X-ClientProxiedBy: AM0PR0102CA0048.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::25) To DM5PR12MB1578.namprd12.prod.outlook.com
 (2603:10b6:4:e::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR0102CA0048.eurprd01.prod.exchangelabs.com (2603:10a6:208::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.16 via Frontend
 Transport; Fri, 13 Mar 2020 13:33:42 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d48c0ca7-2d79-4639-9cdf-08d7c753264f
X-MS-TrafficTypeDiagnostic: DM5PR12MB1658:|DM5PR12MB1658:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB165803FB9A82F627DD983FCE83FA0@DM5PR12MB1658.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(199004)(86362001)(52116002)(81166006)(31696002)(81156014)(5660300002)(4326008)(6486002)(6666004)(478600001)(8676002)(31686004)(186003)(16526019)(2906002)(110136005)(66476007)(66556008)(66946007)(316002)(36756003)(8936002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1658;
 H:DM5PR12MB1578.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dJ9wANfwoC5IJZfK5WDR+HflR2ng8AnvtFdsxslPFfMtcD95MUALMMZabUQn6VxVZUhL1pYu6vIiqAPN0l9736Kej/eCxxSJUC/Xx2wzaU2nx8J/Fs50ESrBRGOJPW+TFd4ThzfTV65/y8IWu3N4fDXf8hewJCqv/5AI935yGgP33CO1W4B+N7e5xWLiwfdivkEWkruNEEPKVR2WgLFqDRHKjjQnnK35k11YsI/4+rdT9ohddKKGqkux2lnjbfJZFE95y35EqscUj98dEqEEnBouAh5CLhh6kW6MkihwuxP3YLjDKkd4V5K9JOJGqRxvAIXHiR3hLhdxdNIoMlxaNhBNMg2uoRX3K3On59uhqo49Y4ftZegievLw5fZuD0Rish6VDunmziz0k+bpXLBvKfOvT6ftJTlhzY5LXAnb+/Be5Wjzg5M7hltpGMo9M1w7
X-MS-Exchange-AntiSpam-MessageData: NtjCa5SSqEVsxmcYVtUkH8+wkp2hrqH2Zq+Hg/U0ojM9GZxxw3VCHcJsTbYVf8IlF387/tfIxIFLTgO63Sy/6Q3BKrjRONPDuZtjg+zAxI6kPwjh7Vn8luGR0IB2vtO7gQfWr1D96kyrXIWLvD2xwqLmj31dCJvBIO+2BpEpMYcxZ3uxGY9jE4TmhwRQ2AwrRsF9MO6nKoo5IMSemvqpRw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d48c0ca7-2d79-4639-9cdf-08d7c753264f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 13:33:43.7288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mDCkjTFhm2hZt5VrICpYq/KI3LGzl0xiMPooaR0XY9LpxHJwdFR4Yk4CUdMEdPY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1658
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 daniel@ffwll.ch, Logan Gunthorpe <logang@deltatee.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add
	sg_set_dma_addr() function
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

QW0gMTMuMDMuMjAgdW0gMTI6MjEgc2NocmllYiBDaHJpc3RvcGggSGVsbHdpZzoKPiBPbiBUaHUs
IE1hciAxMiwgMjAyMCBhdCAxMToxOToyOEFNIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
Cj4+IFRoZSBub24tcGFnZSBzY2F0dGVybGlzdCBpcyBhbHNvIGEgYmlnIGNvbmNlcm4gZm9yIFJE
TUEgYXMgd2UgaGF2ZQo+PiBkcml2ZXJzIHRoYXQgd2FudCB0aGUgcGFnZSBsaXN0LCBzbyBldmVu
IGlmIHdlIGRpZCBhcyB0aGlzIHNlcmllcwo+PiBjb250ZW1wbGF0ZXMgSSdkIGhhdmUgc3RpbGwg
aGF2ZSB0byBzcGxpdCB0aGUgZHJpdmVycyBhbmQgY3JlYXRlIHRoZQo+PiBub3Rpb24gb2YgYSBk
bWEtb25seSBTR0wuCj4gVGhlIGRyaXZlcnMgSSBsb29rZWQgYXQgd2FudCBhIGxpc3Qgb2YgSU9W
QSBhZGRyZXNzLCBhbGlnbmVkIHRvIHRoZQo+IGRldmljZSAicGFnZSBzaXplIi4gIFdoYXQgb3Ro
ZXIgZGF0YSBkbyBkcml2ZXJzIHdhbnQ/CgpXZWxsIGZvciBHUFVzIEkgaGF2ZSB0aGUgcmVxdWly
ZW1lbnQgdGhhdCB0aG9zZSBJT1ZBIGFkZHJlc3NlcyBhbGxvdyAKcmFuZG9tIGFjY2Vzcy4KClRo
YXQncyB0aGUgcmVhc29uIHdoeSB3ZSBjdXJyZW50bHkgY29udmVydCB0aGUgc2dfdGFibGUgaW50
byBhIGxpbmVhciAKYXJyYXlzIG9mIGFkZHJlc3NlcyBhbmQgcGFnZXMuIFRvIHNvbHZlIHRoYXQg
a2VlcGluZyB0aGUgbGVuZ3RoIGluIApzZXBhcmF0ZSBvcHRpb25hbCBhcnJheSB3b3VsZCBiZSBp
ZGVhbCBmb3IgdXMuCgpCdXQgdGhpcyBpcyBzbyBhIHNwZWNpYWwgdXNlIGNhc2UgdGhhdCBJJ20g
bm90IHN1cmUgaWYgd2Ugd2FudCB0byAKc3VwcG9ydCB0aGlzIGluIHRoZSBjb21tb24gZnJhbWV3
b3JrIG9yIG5vdC4KCj4gRXhlY2VwdCBmb3IgdGhlIHNvZnR3YXJlIHByb3RvY29sIHN0YWNrIGRy
aXZlcnMsIHdoaWNoIG9mIGNvdXNlIG5lZWQgcGFnZXMgZm9yIHRoZQo+IHN0YWNrIGZ1dGhlciBk
b3duLgoKWWVzIGNvbXBsZXRlbHkgYWdyZWUuCgpGb3IgdGhlIEdQVXMgSSB3aWxsIHByb3Bvc2Ug
YSBwYXRjaCB0byBzdG9wIGNvcHlpbmcgdGhlIHBhZ2UgZnJvbSB0aGUgCnNnX3RhYmxlIG92ZXIg
aW50byBvdXIgbGluZWFyIGFycmF5cyBhbmQgc2VlIGlmIGFueWJvZHkgc3RhcnRzIHRvIHNjcmVh
bS4KCkkgZG9uJ3QgdGhpbmsgc28sIGJ1dCBwcm9iYWJseSBiZXR0ZXIgdG8gZG91YmxlIGNoZWNr
LgoKVGhhbmtzLApDaHJpc3RpYW4uCgo+Cj4+IEkgaGF2ZW4ndCB1c2VkIGJpb192ZWNzIGJlZm9y
ZSwgZG8gdGhleSBzdXBwb3J0IGNoYWluaW5nIGxpa2UgU0dMIHNvCj4+IHRoZXkgY2FuIGJlIHZl
cnkgYmlnPyBSRE1BIGRtYSBtYXBzIGdpZ2FieXRlcyBvZiBtZW1vcnkKPiBiaW9fdmVjcyBpdHNl
bGYgZG9uJ3QgaGF2ZSB0aGUgY2hhaW5pbmcsIGJ1dCB0aGUgYmlvcyBidWlsZCBhcm91bmQgdGhl
bQo+IGRvLiAgQnV0IGVhY2ggZW50cnkgY2FuIG1hcCBhIGh1Z2UgcGlsZS4gIElmIG5lZWRlZCB3
ZSBjb3VsZCB1c2UgdGhlCj4gc2FtZSBjaGFpbmluZyBzY2hlbWUgd2UgdXNlIGZvciBzY2F0dGVy
bGlzdHMgZm9yIGJpb192ZWNzIGFzIHdlbGwsIGJ1dAo+IGxldHMgc2VlIGlmIHdlIHJlYWxseSBl
bmQgdXAgbmVlZGluZyB0aGF0Lgo+Cj4+IFNvIEknbSBndWVzc2luZyB0aGUgcGF0aCBmb3J3YXJk
IGlzIHNvbWV0aGluZyBsaWtlCj4+Cj4+ICAgLSBBZGQgc29tZSBnZW5lcmljIGRtYV9zZyBkYXRh
IHN0cnVjdHVyZSBhbmQgaGVscGVyCj4+ICAgLSBBZGQgZG1hIG1hcHBpbmcgY29kZSB0byBnbyBm
cm9tIHBhZ2VzIHRvIGRtYV9zZwo+IFRoYXQgaGFzIGJlZW4gb24gbXkgdG9kbyBsaXN0IGZvciBh
IHdoaWxlLiAgQWxsIHRoZSBETUEgY29uc29saWRhdGF0aW9uCj4gaXMgdG8gcHJlcGFyZSBmb3Ig
dGhhdCBhbmQgd2UncmUgZmluYWxseSBnZXR0aW5nIGNsb3NlLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
