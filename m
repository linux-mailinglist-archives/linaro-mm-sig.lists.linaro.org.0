Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CB6219F4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:51:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DD876606D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:51:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F833664EB; Thu,  9 Jul 2020 11:51:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8A9F66628;
	Thu,  9 Jul 2020 11:34:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5814F614FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 13:43:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A978618B2; Wed, 17 Jun 2020 13:43:23 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by lists.linaro.org (Postfix) with ESMTPS id 384B1614FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 13:43:21 +0000 (UTC)
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n15.prod.us-west-2.postgun.com with SMTP id
 5eea1df6ad153efa3401b98d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 17 Jun 2020 13:43:18
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 919A6C43387; Wed, 17 Jun 2020 13:43:18 +0000 (UTC)
Received: from [192.168.1.102] (unknown [183.83.143.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 625E8C433C8;
 Wed, 17 Jun 2020 13:43:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 625E8C433C8
To: David Laight <David.Laight@ACULAB.COM>,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>
References: <316a5cf9-ca71-6506-bf8b-e79ded9055b2@codeaurora.org>
 <14063C7AD467DE4B82DEDB5C278E8663010F365EF5@fmsmsx107.amr.corp.intel.com>
 <14063C7AD467DE4B82DEDB5C278E8663010F365F7D@fmsmsx107.amr.corp.intel.com>
 <5b960c9a-ef9d-b43d-716d-113efc793fe5@codeaurora.org>
 <b686a288cff640acaea1111fed650b02@AcuMS.aculab.com>
From: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <dcf2bdd6-d6fd-96f0-c6e7-6788ea282e35@codeaurora.org>
Date: Wed, 17 Jun 2020 19:13:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <b686a288cff640acaea1111fed650b02@AcuMS.aculab.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 "vinmenon@codeaurora.org" <vinmenon@codeaurora.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: use spinlock to access
	dmabuf->name
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpPbiA2LzE3LzIwMjAgMTo1MSBQTSwgRGF2aWQgTGFpZ2h0IHdyb3RlOgo+IEZyb206IENoYXJh
biBUZWphIEthbGxhCj4+IFNlbnQ6IDE3IEp1bmUgMjAyMCAwNzoyOQo+IC4uLgo+Pj4+IElmIG5h
bWUgaXMgZnJlZWQgeW91IHdpbGwgY29weSBnYXJiYWdlLCBidXQgdGhlIG9ubHkgd2F5Cj4+Pj4g
Zm9yIHRoYXQgdG8gaGFwcGVuIGlzIHRoYXQgX3NldF9uYW1lIG9yIF9yZWxlYXNlIGhhdmUgdG8g
YmUgY2FsbGVkCj4+Pj4gYXQganVzdCB0aGUgcmlnaHQgdGltZS4KPj4+Pgo+Pj4+IEFuZCB0aGUg
YWJvdmUgd291bGQgcHJvYmFibHkgb25seSBiZSBhbiBpc3N1ZSBpZiB0aGUgc2V0X25hbWUKPj4+
PiB3YXMgY2FsbGVkLCBzbyB5b3Ugd2lsbCBnZXQgTlVMTCBvciBhIHJlYWwgbmFtZS4KPj4KPj4g
QW5kIHRoZXJlIGV4aXN0cyBhIHVzZS1hZnRlci1mcmVlIHRvIGF2b2lkIHdoaWNoIHJlcXVpcmVz
IHRoZSBsb2NrLiBTYXkKPj4gdGhhdCBtZW1jcHkoKSBpbiBkbWFidWZmc19kbmFtZSBpcyBpbiBw
cm9ncmVzcyBhbmQgaW4gcGFyYWxsZWwgX3NldF9uYW1lCj4+IHdpbGwgZnJlZSB0aGUgc2FtZSBi
dWZmZXIgdGhhdCBtZW1jcHkgaXMgb3BlcmF0aW5nIG9uLgo+IAo+IElmIHRoZSBuYW1lIGlzIGJl
aW5nIGxvb2tlZCBhdCB3aGlsZSB0aGUgaXRlbSBpcyBiZWluZyBmcmVlZAo+IHlvdSBhbG1vc3Qg
Y2VydGFpbmx5IGhhdmUgbXVjaCBiaWdnZXIgcHJvYmxlbXMgdGhhdCBqdXN0Cj4gdGhlIG5hbWUg
YmVpbmcgYSAnanVuaycgcG9pbnRlci4KClRydWUsIHRodXMgbmVlZHMgdGhlIGxvY2suCgo+IAo+
IAlEYXZpZC4KPiAKPiAtCj4gUmVnaXN0ZXJlZCBBZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJv
YWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMsIE1LMSAxUFQsIFVLCj4gUmVnaXN0cmF0aW9u
IE5vOiAxMzk3Mzg2IChXYWxlcykKPiAKCi0tIApUaGUgUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50
ZXIsIEluYy4gaXMgYSBtZW1iZXIgb2YgdGhlIENvZGUgQXVyb3JhCkZvcnVtLCBhIExpbnV4IEZv
dW5kYXRpb24gQ29sbGFib3JhdGl2ZSBQcm9qZWN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
