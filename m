Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C4D1B6DCE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:12:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9EB0619F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:12:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CBFF9619E9; Fri, 24 Apr 2020 06:12:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24025666DE;
	Fri, 24 Apr 2020 05:30:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8203765FE5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:46:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67A1766008; Thu,  2 Apr 2020 01:46:09 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by lists.linaro.org (Postfix) with ESMTPS id 9723A65FE5
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:46:08 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-bZQTtJhKNEOBPbHDx9O6Bw-1; Wed, 01 Apr 2020 21:46:06 -0400
X-MC-Unique: bZQTtJhKNEOBPbHDx9O6Bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D18DE107ACC7;
 Thu,  2 Apr 2020 01:46:03 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.8])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 949749A240;
 Thu,  2 Apr 2020 01:45:56 +0000 (UTC)
Date: Thu, 2 Apr 2020 03:45:51 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Message-ID: <20200402034551.1775a192@elisabeth>
In-Reply-To: <20200402012515.429329-1-jbwyatt4@gmail.com>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 outreachy-kernel@googlegroups.com,
 Arve =?UTF-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [Outreachy kernel] [PATCH] staging: android:
 ion: Fix parenthesis alignment
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

T24gV2VkLCAgMSBBcHIgMjAyMCAxODoyNToxNSAtMDcwMAoiSm9obiBCLiBXeWF0dCBJViIgPGpi
d3lhdHQ0QGdtYWlsLmNvbT4gd3JvdGU6Cgo+IEZpeCAyIHBhcmVudGhlc2lzIGFsaWdubWVudCBp
c3N1ZXMuCj4gCj4gUmVwb3J0ZWQgYnkgY2hlY2twYXRjaC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBK
b2huIEIuIFd5YXR0IElWIDxqYnd5YXR0NEBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogU3RlZmFu
byBCcml2aW8gPHNicml2aW9AcmVkaGF0LmNvbT4KCi0tIApTdGVmYW5vCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
