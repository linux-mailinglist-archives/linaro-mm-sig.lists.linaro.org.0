Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C68F16FA77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 10:17:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D15A60EAD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 09:17:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B012618D6; Wed, 26 Feb 2020 09:17:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B96E615AD;
	Wed, 26 Feb 2020 09:16:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1B67E60BEF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 09:16:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F936615AD; Wed, 26 Feb 2020 09:16:20 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2051.outbound.protection.outlook.com [40.107.236.51])
 by lists.linaro.org (Postfix) with ESMTPS id 0FD9660EAD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 09:16:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VxQgYtpReySaNIbskEmp8IP2RpJ7zmUDD0co4oD7VIqiaBDedYNefGnZHpmKAYdtK9IWAY7y8zTxQL0n1dEDM99N6RTgO3+IW1iTiRVj0ixYyqiIiFEqwLI8YQjn6iNIal33fJGokwOk9E3nlU/BVdj0+zZpPbYpB1GfiaIOn5J7XSpy3Kjdr31V+XbtTfoYyzy0ojwtRSorbYleSdAm1RQiV4+ko0bQv7ny0iFEG5MhiYHqMNtIa2hLxI+hgew57QMWCJ49Tk8jrgznVWNrfWFmcXHIZnOk53bTsEblPZiF2VRFaem9+MUk9eT1MyyMc027/rPzqjZ57qwmPjVsUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=phV13SyoWkujoJh1MRguXHI+RpYvMI44zkgV4V7TfFY=;
 b=KVNj3tzMKhTsWoaOBVXWqzq8AXktX2OrG3//5Zi/1daJLW/Wwj9u8o0hd89RDCUnrWJa/CpTEseFzQsOOPFVsyzfivUvql9e1bGrGELTOo1bqD9sHaWEl0TqJNW8icp23j1jJR3usG2kwqvmxrK3WjRixUU8EzohJOyYD2dT/rGvT9z7j/6SuSh84RaD1MRWT0LZ+t0jNhYkW1tSaxobXodPQrXeJTHiMA1655bYOtmr1U1EIV4ufaVoyT7tivGKncDQvFJaiKMjX2Tj1myc0jrCWQTDJalxWhMXobWWGk700Tqwa409oUb2wbWMFBfapvl8A0HL/TEuKPSqqPS+NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (2603:10b6:3:10c::22)
 by DM5PR12MB1660.namprd12.prod.outlook.com (2603:10b6:4:9::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 09:16:14 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92%11]) with mapi id 15.20.2750.021; Wed, 26 Feb
 2020 09:16:14 +0000
To: Jason Ekstrand <jason@jlekstrand.net>
References: <20200225235856.975366-1-jason@jlekstrand.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8066d8b2-dd6a-10ef-a7bb-2c18a0661912@amd.com>
Date: Wed, 26 Feb 2020 10:16:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200225235856.975366-1-jason@jlekstrand.net>
Content-Language: en-US
X-ClientProxiedBy: AM4PR08CA0045.eurprd08.prod.outlook.com
 (2603:10a6:205:2::16) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM4PR08CA0045.eurprd08.prod.outlook.com (2603:10a6:205:2::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 09:16:11 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 92608199-adcf-4fcc-2424-08d7ba9c86c4
X-MS-TrafficTypeDiagnostic: DM5PR12MB1660:
X-Microsoft-Antispam-PRVS: <DM5PR12MB166002845D83D1CED29B7FCE83EA0@DM5PR12MB1660.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(4326008)(2616005)(478600001)(54906003)(6666004)(31686004)(66556008)(7416002)(66946007)(66476007)(6916009)(8936002)(36756003)(2906002)(186003)(16526019)(8676002)(81156014)(81166006)(6486002)(316002)(52116002)(31696002)(5660300002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1660;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q+raHDIhfQbYiDD5qJjXTbM3JX5JN1OoRKraXRT3LPzbMNzuFnDvZKRIqKp8oLFocZwzxkjGSkSd8Mz/tMig4IZbVfwsIaHLpdm/IPqYG3wJt2R1IGifYGzGSwhnJ4Ap5yq2EKpyGzHmu1XrL/LJ7Pr9Z5YqBWCXMpbM4TzqwLQJfND+0235tI1XQtmnTHv2al/k37Qd9b2OltBfwTF7sPAvMCRv1uF24jUqyekf7Oc0T2N1ZChfgcLJBgzabh2XZGGe1gXhtq3YRWVET6ECdCMP1SRg/2NW/JNIg9hnInwAYSV6ddRkl63i587T96NVLW/8pDapGFZfO37a4ewbXKAo+NY4MTTK4Q5hZzAdVTtSgPO9vvFdj5rSJX8Zm0hBs69OPp/tSc6GgyrswXlfoSngCAn1V/ab9osJDMhbhoaffIg6yG1fIMHb6p9I8s5S
X-MS-Exchange-AntiSpam-MessageData: wlvReezp6C6J+EB2yej848xzPLINVNAa3mwDscgYogrTyjEPj6SfNikZEABeRz4gqBK9CWiH3wTRXD68nsHsEbYv3zXEbibjabxh4MlIzu4d8aYiT1n4EyGm79UouaGioAD6WBUb2gf0d/U8Z11as1TPy4G0gXchvd1ES80wwF7RQ6Vq2QrJMcJo2v7cgarUkQPN/Tx2l1tDxBoQurvlyg==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92608199-adcf-4fcc-2424-08d7ba9c86c4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 09:16:13.8618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kU3QvkAdPKu1RVhO3S9vsGI64Al1Jt2QJUGLr3XumYxxMm/d/JSw4bUf3dr9fNSg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1660
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, daniels@collabora.com, jajones@nvidia.com,
 bas@basnieuwenhuizen.nl, linux-kernel@vger.kernel.org,
 Greg Hackmann <ghackmann@google.com>, linaro-mm-sig@lists.linaro.org,
 hoegsberg@google.com, dri-devel@lists.freedesktop.org, airlied@redhat.com,
 jessehall@google.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Add an API for importing
 and exporting sync files
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

SGkgSmFzb24sCgpBbSAyNi4wMi4yMCB1bSAwMDo1OCBzY2hyaWViIEphc29uIEVrc3RyYW5kOgo+
IEV4cGxpY2l0IHN5bmNocm9uaXphdGlvbiBpcyB0aGUgZnV0dXJlLiAgQXQgbGVhc3QsIHRoYXQg
c2VlbXMgdG8gYmUgd2hhdAo+IG1vc3QgdXNlcnNwYWNlIEFQSXMgYXJlIGFncmVlaW5nIG9uIGF0
IHRoaXMgcG9pbnQuICBIb3dldmVyLCBtb3N0IG9mIG91cgo+IExpbnV4IEFQSXMgKGJvdGggdXNl
cnNwYWNlIGFuZCBrZXJuZWwgVUFQSSkgYXJlIGN1cnJlbnRseSBidWlsdCBhcm91bmQKPiBpbXBs
aWNpdCBzeW5jaHJvbml6YXRpb24gd2l0aCBkbWEtYnVmLiAgV2hpbGUgd29yayBpcyBvbmdvaW5n
IHRvIGNoYW5nZQo+IG1hbnkgb2YgdGhlIHVzZXJzcGFjZSBBUElzIGFuZCBwcm90b2NvbHMgdG8g
YW4gZXhwbGljaXQgc3luY2hyb25pemF0aW9uCj4gbW9kZWwsIHN3aXRjaGluZyBvdmVyIHBpZWNl
bWVhbCBpcyBkaWZmaWN1bHQgZHVlIHRvIHRoZSBudW1iZXIgb2YKPiBwb3RlbnRpYWwgY29tcG9u
ZW50cyBpbnZvbHZlZC4gIE9uIHRoZSBrZXJuZWwgc2lkZSwgbWFueSBkcml2ZXJzIHVzZQo+IGRt
YS1idWYgaW5jbHVkaW5nIEdQVSAoM0QvY29tcHV0ZSksIGRpc3BsYXksIHY0bCwgYW5kIG90aGVy
cy4gIEluCj4gdXNlcnNwYWNlLCB3ZSBoYXZlIFgxMSwgc2V2ZXJhbCBXYXlsYW5kIGNvbXBvc2l0
b3JzLCAzRCBkcml2ZXJzLCBjb21wdXRlCj4gZHJpdmVycyAoT3BlbkNMIGV0Yy4pLCBtZWRpYSBl
bmNvZGUvZGVjb2RlLCBhbmQgdGhlIGxpc3QgZ29lcyBvbi4KPgo+IFRoaXMgcGF0Y2ggcHJvdmlk
ZXMgYSBwYXRoIGZvcndhcmQgYnkgYWxsb3dpbmcgdXNlcnNwYWNlIHRvIG1hbnVhbGx5Cj4gbWFu
YWdlIHRoZSBmZW5jZXMgYXR0YWNoZWQgdG8gYSBkbWEtYnVmLiAgQWx0ZXJuYXRpdmVseSwgb25l
IGNhbiB0aGluawo+IG9mIHRoaXMgYXMgbWFraW5nIGRtYS1idWYncyBpbXBsaWNpdCBzeW5jaHJv
bml6YXRpb24gc2ltcGx5IGEgY2Fycmllcgo+IGZvciBhbiBleHBsaWNpdCBmZW5jZS4gIFRoaXMg
aXMgYWNjb21wbGlzaGVkIGJ5IGFkZGluZyB0d28gSU9DVExzIHRvCj4gZG1hLWJ1ZiBmb3IgaW1w
b3J0aW5nIGFuZCBleHBvcnRpbmcgYSBzeW5jIGZpbGUgdG8vZnJvbSB0aGUgZG1hLWJ1Zi4KPiBU
aGlzIHdheSBhIHVzZXJzcGFjZSBjb21wb25lbnQgd2hpY2ggaXMgdXNlcyBleHBsaWNpdCBzeW5j
aHJvbml6YXRpb24sCj4gc3VjaCBhcyBhIFZ1bGthbiBkcml2ZXIsIGNhbiBtYW51YWxseSBzZXQg
dGhlIHdyaXRlIGZlbmNlIG9uIGEgYnVmZmVyCj4gYmVmb3JlIGhhbmRpbmcgaXQgb2ZmIHRvIGFu
IGltcGxpY2l0bHkgc3luY2hyb25pemVkIGNvbXBvbmVudCBzdWNoIGFzIGEKPiBXYXlsYW5kIGNv
bXBvc2l0b3Igb3IgdmlkZW8gZW5jb2Rlci4gIEluIHRoaXMgd2F5LCBlYWNoIG9mIHRoZSBkaWZm
ZXJlbnQKPiBjb21wb25lbnRzIGNhbiBiZSB1cGdyYWRlZCB0byBhbiBleHBsaWNpdCBzeW5jaHJv
bml6YXRpb24gbW9kZWwgb25lIGF0IGEKPiB0aW1lIGFzIGxvbmcgYXMgdGhlIHVzZXJzcGFjZSBw
aWVjZXMgY29ubmVjdGluZyB0aGVtIGFyZSBhd2FyZSBvZiBpdCBhbmQKPiBpbXBvcnQvZXhwb3J0
IGZlbmNlcyBhdCB0aGUgcmlnaHQgdGltZXMuCj4KPiBUaGVyZSBpcyBhIHBvdGVudGlhbCByYWNl
IGNvbmRpdGlvbiB3aXRoIHRoaXMgQVBJIGlmIHVzZXJzcGFjZSBpcyBub3QKPiBjYXJlZnVsLiAg
QSB0eXBpY2FsIHVzZSBjYXNlIGZvciBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24gaXMgdG8gd2Fp
dCBmb3IKPiB0aGUgZG1hLWJ1ZiB0byBiZSByZWFkeSwgdXNlIGl0LCBhbmQgdGhlbiBzaWduYWwg
aXQgZm9yIHNvbWUgb3RoZXIKPiBjb21wb25lbnQuICBCZWNhdXNlIGEgc3luY19maWxlIGNhbm5v
dCBiZSBjcmVhdGVkIHVudGlsIGl0IGlzIGd1YXJhbnRlZWQKPiB0byBjb21wbGV0ZSBpbiBmaW5p
dGUgdGltZSwgdXNlcnNwYWNlIGNhbiBvbmx5IHNpZ25hbCB0aGUgZG1hLWJ1ZiBhZnRlcgo+IGl0
IGhhcyBhbHJlYWR5IHN1Ym1pdHRlZCB0aGUgd29yayB3aGljaCB1c2VzIGl0IHRvIHRoZSBrZXJu
ZWwgYW5kIGhhcwo+IHJlY2VpdmVkIGEgc3luY19maWxlIGJhY2suICBUaGVyZSBpcyBubyB3YXkg
dG8gYXRvbWljYWxseSBzdWJtaXQgYQo+IHdhaXQtdXNlLXNpZ25hbCBvcGVyYXRpb24uICBUaGlz
IGlzIG5vdCwgaG93ZXZlciwgcmVhbGx5IGEgcHJvYmxlbSB3aXRoCj4gdGhpcyBBUEkgc28gbXVj
aCBhcyBpdCBpcyBhIHByb2JsZW0gd2l0aCBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24KPiBpdHNl
bGYuICBUaGUgd2F5IHRoaXMgaXMgdHlwaWNhbGx5IGhhbmRsZWQgaXMgdG8gaGF2ZSB2ZXJ5IGV4
cGxpY2l0Cj4gb3duZXJzaGlwIHRyYW5zZmVyIHBvaW50cyBpbiB0aGUgQVBJIG9yIHByb3RvY29s
IHdoaWNoIGVuc3VyZSB0aGF0IG9ubHkKPiBvbmUgY29tcG9uZW50IGlzIHVzaW5nIGl0IGF0IGFu
eSBnaXZlbiB0aW1lLiAgQm90aCBYMTEgKHZpYSB0aGUgUFJFU0VOVAo+IGV4dGVuc2lvbikgYW5k
IFdheWxhbmQgcHJvdmlkZSBzdWNoIG93bmVyc2hpcCB0cmFuc2ZlciBwb2ludHMgdmlhCj4gZXhw
bGljaXQgcHJlc2VudCBhbmQgaWRsZSBtZXNzYWdlcy4KPgo+IFRoZSBkZWNpc2lvbiB3YXMgaW50
ZW50aW9uYWxseSBtYWRlIGluIHRoaXMgcGF0Y2ggdG8gbWFrZSB0aGUgaW1wb3J0IGFuZAo+IGV4
cG9ydCBvcGVyYXRpb25zIElPQ1RMcyBvbiB0aGUgZG1hLWJ1ZiBpdHNlbGYgcmF0aGVyIHRoYW4g
YXMgYSBEUk0KPiBJT0NUTC4gIFRoaXMgbWFrZXMgaXQgdGhlIGltcG9ydC9leHBvcnQgb3BlcmF0
aW9uIHVuaXZlcnNhbCBhY3Jvc3MgYWxsCj4gY29tcG9uZW50cyB3aGljaCB1c2UgZG1hLWJ1ZiBp
bmNsdWRpbmcgR1BVLCBkaXNwbGF5LCB2NGwsIGFuZCBvdGhlcnMuCj4gSXQgYWxzbyBtZWFucyB0
aGF0IGEgdXNlcnNwYWNlIGNvbXBvbmVudCBjYW4gZG8gdGhlIGltcG9ydC9leHBvcnQKPiB3aXRo
b3V0IGFjY2VzcyB0byB0aGUgRFJNIGZkIHdoaWNoIG1heSBiZSB0cmlja3kgdG8gZ2V0IGluIGNh
c2VzIHdoZXJlCj4gdGhlIGNsaWVudCBjb21tdW5pY2F0ZXMgd2l0aCBEUk0gdmlhIGEgdXNlcnNw
YWNlIEFQSSBzdWNoIGFzIE9wZW5HTCBvcgo+IFZ1bGthbi4gIEF0IGEgZnV0dXJlIGRhdGUgd2Ug
bWF5IGNob29zZSB0byBhZGQgZGlyZWN0IGltcG9ydC9leHBvcnQgQVBJcwo+IHRvIGNvbXBvbmVu
dHMgc3VjaCBhcyBkcm1fc3luY29iaiB0byBhdm9pZCBhbGxvY2F0aW5nIGEgZmlsZSBkZXNjcmlw
dG9yCj4gYW5kIGdvaW5nIHRocm91Z2ggdHdvIGlvY3Rscy4gIEhvd2V2ZXIsIHRoYXQgc2VlbXMg
dG8gYmUgc29tZXRoaW5nIG9mIGEKPiBtaWNyby1vcHRpbWl6YXRpb24gYXMgaW1wb3J0L2V4cG9y
dCBvcGVyYXRpb25zIGFyZSBsaWtlbHkgdG8gaGFwcGVuIGF0IGEKPiByYXRlIG9mIGEgZmV3IHBl
ciBmcmFtZSBvZiByZW5kZXJlZCBvciBkZWNvZGVkIHZpZGVvLgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+IC0tLQo+Cj4gVGhpcyBpcyBt
YXJrZWQgYXMgYW4gUkZDIGJlY2F1c2UgSSBpbnRlbmQgaXQgdG8gc3RhcnQgYSBkaXNjdXNzaW9u
IGFib3V0Cj4gaG93IHRvIHNvbHZlIGEgcHJvYmxlbS4gIFRoZSBjdXJyZW50IHBhdGNoIGNvbXBp
bGVzIGJ1dCB0aGF0J3MgaXQgZm9yIG5vdy4KPiBJJ2xsIGJlIHdyaXRpbmcgSUdUIHRlc3RzIGFu
ZCBWdWxrYW4gZHJpdmVyIHBhdGNoZXMgd2hpY2ggZXhlcmNpc2UgaXQgb3Zlcgo+IHRoZSBuZXh0
IGNvdXBsZSBvZiBkYXlzLiAgSW4gdGhlIG1lYW4gdGltZSwgZmVlbCBmcmVlIHRvIHRlbGwgbWUg
d2h5IHlvdQo+IHRoaW5rIHRoaXMgaXMgYSBncmVhdCBhbmQvb3IgdGVycmlibGUgaWRlYS4gOi0p
CgpGb3IgdGhlIGV4cG9ydGluZyBwYXJ0IEkgdGhpbmsgaXQgaXMgYW4gYWJzb2x1dGVseSBncmVh
dCBpZGVhIGJlY2F1c2UgaXQgCnNpbXBsaWZpZXMgY29tcGF0aWJpbGl0eSB3aXRoIGV4cGxpY2l0
IHN5bmMgcXVpdGUgYSBiaXQuCgpCdXQgZm9yIHRoZSBpbXBvcnRpbmcgcGFydCBpdCBpcyBhIGNs
ZWFyIE5BSyBhdCB0aGUgbW9tZW50LiBTZWUgd2UgY2FuJ3QgCmFsbG93IHVzZXJzcGFjZSB0byBt
ZXNzIHdpdGggRE1BLWJ1ZiBmZW5jZXMgaW4gdGhhdCB3YXkgYmVjYXVzZSBpdCByaXBzIApvcGVu
IGEgc2VjdXJpdHkgaG9sZSB5b3UgY2FuIHB1c2ggYW4gZWxlcGhhbnQgdGhyb3VnaC4KCkp1c3Qg
aW1hZ2luZSB0aGF0IHlvdSBhY2Nlc3Mgc29tZSBETUEtYnVmIHdpdGggYSBzaGFkZXIgYW5kIHRo
YXQgCm9wZXJhdGlvbiBpcyBwcmVzZW50ZWQgYXMgYSBmZW5jZSBvbiB0aGUgRE1BLWJ1ZnMgcmVz
ZXJ2YXRpb24gb2JqZWN0LiAKQW5kIG5vdyB5b3UgY2FuIGdvIGFoZWFkIGFuZCByZXBsYWNlIHRo
YXQgZmVuY2UgYW5kIGZyZWUgdXAgdGhlIG1lbW9yeS4KClRyaWNraW5nIHRoZSBMaW51eCBrZXJu
ZWwgaW50byBhbGxvY2F0aW5nIHBhZ2UgdGFibGVzIGluIHRoYXQgZnJlZWQgCm1lbW9yeSBpcyB0
cml2aWFsIGFuZCB0aGF0J3MgYmFzaWNhbGx5IGl0IHlvdSBjYW4gb3ZlcndyaXRlIHBhZ2UgdGFi
bGVzIAp3aXRoIHlvdXIgc2hhZGVyIGFuZCBnYWluIGFjY2VzcyB0byBhbGwgb2Ygc3lzdGVtIG1l
bW9yeSA6KQoKV2hhdCB3ZSBjb3VsZCBkbyBpcyB0byBhbHdheXMgbWFrZSBzdXJlIHRoYXQgdGhl
IGFkZGVkIGZlbmNlcyB3aWxsIApjb21wbGV0ZSBsYXRlciB0aGFuIHRoZSBhbHJlYWR5IGV4aXN0
aW5nIG9uZXMsIGJ1dCB0aGF0IGlzIGFsc28gcmF0aGVyIAp0cmlja3kgdG8gZ2V0IHJpZ2h0LiBJ
IHdvdWxkbid0IGRvIHRoYXQgaWYgd2UgZG9uJ3QgaGF2ZSBhIHJhdGhlciBiaWcgCnVzZSBjYXNl
IGZvciB0aGlzLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IC0tSmFzb24KW1NOSVBdCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
