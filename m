Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18528887C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 14:16:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7D84664F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 12:16:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C72C06650A; Fri,  9 Oct 2020 12:16:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5757766518;
	Fri,  9 Oct 2020 12:15:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 368E5664FE
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 12:15:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1A5BA66518; Fri,  9 Oct 2020 12:15:28 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2085.outbound.protection.outlook.com [40.107.236.85])
 by lists.linaro.org (Postfix) with ESMTPS id 545DD664FE
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 12:15:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yh2fI35e3f5w9txpBZWQkOQTICG/lZFBQ8whthE+vjOU2vs8LHsszXBwq9sMFgz85pM8FQFD8WEOaSxXXdw/UYId/hlduSlGiddwHGz0rNIsN2pmFBLYEIqZTGeQuCfLU12E+90WkahsI2xa8tJrgO73u5AK2aKMkqAnGB9qMWxtekfvHffoLGnfwGaGh0fNx1yrDOPQmJJB6zhHk6joOUA1EKmt3gK+8CCYOy1vYQMeCvjFtJWm+uec6sJPEJF6Bs3HOrBxM7w4s+FB0BaEW9OVS1cVChKXARuguOMVuSSsNJUZC35aYxbItgOup47v7rzX7ypfmXCsX6ymYfKWiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+qVcC/axReaN9Ip09XBb3yKiJC2FhtpFWzzjw2kts4=;
 b=EVAIFdkljH9EadJUzT+S+5B8ldnoJuZGBnanIV4bi/Y/0JqbFyXp8tiWnjP2Tjg9FSmo6Y8HbuTjpMfBNgFXVb/BSff/Q/PgC4v71ThbnXOthDbSjyaJJRX3BoMqEzP3vSty8mTfgYiJMdwvqXAVOhbH6RRtLIeeSgy1hakQ58YIbP+4ti+blp4b4fxjsit+pkwPydPVotPndkkpDrScE3CTq9bsu8NtfN8+1lk9g70nIGjmjYXOFvOlkZAv5/Z3midD/jD0Njaotdv9cdnpBrGDhlDi7sw+vt+fsEzmsua5CNdL1eqK96wvsPxRGvcvK9REH8zePwAavYH/0nxeRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB2545.namprd12.prod.outlook.com (2603:10b6:207:4e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.26; Fri, 9 Oct
 2020 12:15:22 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3455.027; Fri, 9 Oct 2020
 12:15:22 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk, airlied@redhat.com, akpm@linux-foundation.org,
 sumit.semwal@linaro.org
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008141211.GG438822@phenom.ffwll.local>
 <8fc28dfa-4bae-bee1-5aca-4e3c6e88b994@gmail.com>
 <20201009073900.GL438822@phenom.ffwll.local> <20201009121220.GM5177@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <db073cdb-db29-0a3c-4295-4205c6ddfadc@amd.com>
Date: Fri, 9 Oct 2020 14:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201009121220.GM5177@ziepe.ca>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR08CA0024.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::37) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR08CA0024.eurprd08.prod.outlook.com (2603:10a6:208:d2::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21 via Frontend Transport; Fri, 9 Oct 2020 12:15:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1dfe88c0-0b3a-4929-cfcc-08d86c4cfec2
X-MS-TrafficTypeDiagnostic: BL0PR12MB2545:
X-Microsoft-Antispam-PRVS: <BL0PR12MB2545A76ECD1CEA577837042683080@BL0PR12MB2545.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yDgKiMauZeDugPyLrs7NmsISFm0BZnJ8jq7N2GjOheVv3sQrmMN765vlzN6JjzJY0tm8m/R5brmzQsXD7/jFZMS/2AqqRj81lYTD6SaOncrqaRjWDn7HuddiUqGFrJ3yEd6jG+ruzi6ityaiic5x8hcXvL2ZaIGIrDU8DGAlIxEHe4BJ1eWJ9dNFml9ArJSKTaX6dsnP1iD7DNL4ikZ265V9vYq5odarWT6ge7t7cP41g1En24w8eb+8ger5Tp2bAHni7lTQaQ9T71m7fmPoIGz+B7f4roVpahKARFYKSvBNglicR53/kuI0bLlnMMiggVD6LmZL+yDKKv7esJALAKO2lia+aEiAwpVLg2pSr+ttgPWYB7/kB+SQCoioQi+vYi/owrQsqWwuvvRx557wRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(66476007)(66556008)(6666004)(66946007)(2906002)(5660300002)(52116002)(316002)(478600001)(7416002)(16526019)(6486002)(31696002)(186003)(86362001)(36756003)(8676002)(31686004)(8936002)(2616005)(83380400001)(921003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Y6J49I1B1KLPXdyQEkgAghCRDAfhrP2tR//JqPF2e11iiaYJvrvp4NCArB6myWnkNdxL/Bzc1AIGMp/ch5fnGwKE+VgDyG07ZChH1alKnU4vU2J4hhSEFZ5NUwOmO/HjENwVHdQTVeATBa4qD3pukCNU4272T3LECgJkXuL/cGf/TaS9wonk4tjGbrf47zQ0fHuof+doZcBZSjIMwjd23G8fRzk3UD75eDhkUjLFel8gpHOQTRHEa5+vCecF+FxLWBsoWgfqQ4L79QUbl2i8Ax2Iv2RxdfaaAGgUk1c96YE7dd0h4SkvNQWLfg/5dUFUfwN6d1hben/ZC5L8N7x70VDe0jTAquTURy9ca8NljLHC8pKXzCzGiTyvhvdD26Ssc7CGgYkzJUj7+wvjbZODYVRDViRMF7GP9Hyt6XE71pas87SNZq5cpbNGkPyAV4IqSZHFcALs5SpY+Iaro+UAUkJEks6ksMyuerZG9DCfvtVGUcS88dqosP8Nlo0+Xeel3h2gUMA+1LR1QZoTNTWaM3ygqUjYqymDnbDDWz9yniFBhrhnA/VNPLiT9NuRSQPHuiM8XtxzoYrCAgb5IGwq70P4qj31MuwiHq6N/kz5uc0Uh59ufchunfIkqEFVopryd5GqZwEGWNitXtso29+NxacY681VqdMlqDbdOKlHUjHBCtZRvLFnJQey8onyxPssOAOUIZY43oe6pYGX8Jj+iw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dfe88c0-0b3a-4929-cfcc-08d86c4cfec2
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 12:15:22.3807 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0c3VChSHEZGkcxa28wQgdcF2P0EDXEwRHqhhfcU/yb6CSBZDCsIsYtNAmdbw6TiA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2545
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] mm: introduce vma_set_file function
	v2
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

QW0gMDkuMTAuMjAgdW0gMTQ6MTIgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gRnJpLCBP
Y3QgMDksIDIwMjAgYXQgMDk6Mzk6MDBBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4g
SSBqdXN0IG5vdGljZWQgdGhpcyBoZXJlIGluIHRoZSBwYXRjaCBiZWNhdXNlIGV2ZXJ5b25lIGVs
c2UgZG9lcyBub3QgZG8KPj4gdGhpcy4gQnV0IGxvb2tpbmcgYXQgdGhlIG1tYXBfcmVnaW9uKCkg
Y29kZSBpbiBtbWFwLmMgd2Ugc2VlbSB0byBpbmRlZWQKPj4gaGF2ZSB0aGlzIHByb2JsZW0gZm9y
IHRoZSBlcnJvciBwYXRoOgo+Pgo+PiB1bm1hcF9hbmRfZnJlZV92bWE6Cj4+IAl2bWEtPnZtX2Zp
bGUgPSBOVUxMOwo+PiAJZnB1dChmaWxlKTsKPj4KPj4gTm90ZSB0aGF0IHRoZSBzdWNjZXNzIHBh
dGggZG9lcyB0aGluZ3MgY29ycmVjdGx5IChhIGJpdCBhYm92ZSk6Cj4+Cj4+IAlmaWxlID0gdm1h
LT52bV9maWxlOwo+PiBvdXQ6Cj4+Cj4+IFNvIGl0IGluZGVlZCBsb29rcyBsaWtlIGRtYS1idWYg
aXMgdGhlIG9ubHkgb25lIHRoYXQgZG9lcyB0aGlzIGZ1bGx5Cj4+IGNvcnJlY3RseS4gU28gbWF5
YmUgd2Ugc2hvdWxkIGRvIGEgZm9sbG93LXVwIHBhdGNoIHRvIGNoYW5nZSB0aGUKPj4gbW1hcF9y
ZWdpb24gZXhpdCBjb2RlIHRvIHBpY2sgdXAgd2hhdGV2ZXIgdm1hLT52bV9maWxlIHdhcyBzZXQg
aW5zdGVhZCwKPj4gYW5kIGZwdXQgdGhhdD8KPiBHaXZlbiB0aGF0IHRoaXMgbmV3IHZtYV9zZXRf
ZmlsZSgpIHNob3VsZCBiZSB0aGUgb25seSB3YXkgdG8KPiBtYW5pcHVsYXRlIHZtX2ZpbGUgZnJv
bSB0aGUgbW1hcCBvcCwgSSB0aGluayB0aGlzIHJlZmxlY3RzIGEgYnVnIGluCj4gbW0vbW1hcC5j
Li4gU2hvdWxkIGJlOgo+Cj4gdW5tYXBfYW5kX2ZyZWVfdm1hOgo+ICAgICAgICAgIGZwdXQodm1h
LT52bV9maWxlKTsKPiAgICAgICAgICB2bWEtPnZtX2ZpbGUgPSBOVUxMOwo+Cj4gVGhlbiBldmVy
eXRoaW5nIHdvcmtzIHRoZSB3YXkgeW91J2QgZXhwZWN0IHdpdGhvdXQgdHJpY2t5IGVycm9yCj4g
aGFuZGxpbmcKClRoYXQncyB3aGF0IERhbmllbCBzdWdnZXN0ZWQgYXMgd2VsbCwgeWVzLgoKR29p
bmcgdG8gY3JhZnQgYSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhpcy4KClRoYW5rcywKQ2hyaXN0aWFu
LgoKPgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
