Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5D42D73A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 11:15:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED5B16670B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 10:15:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DCCAB6670F; Fri, 11 Dec 2020 10:15:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F1FA6670C;
	Fri, 11 Dec 2020 10:14:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C0996081B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 10:14:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 399576670B; Fri, 11 Dec 2020 10:14:50 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 234716081B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 10:14:48 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id e25so8040973wme.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 02:14:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tFibnX3/+2uQLJigmsH9b8s5hxcI5Nnzsyfczlow2uY=;
 b=GdUscJELhu4hYVnkmH+uWlx4G6UG/inCoXDYT4ezlPFEoyeVuiBbTT8romi8RSAAUs
 XbJJOc3z5JZtZaMMRSMau8PmQw9q5AWJxjuGg9RBhYKvWp+XlG33EKN1kgRFedBXgilg
 pj3IseZXdi8/iy3wwWrjEr3dFjY39L02lIpe4rkEairclkgbQf0ykIa0LBoH05UCQr68
 rLEN0zGvzUxVvf9pgEqImJfVYB3Icxj5kdRNJDygQW2xCNA9+Iek4itEvgTn7VhhSDQd
 Pkz6HpCYJMaMBANZYCNSNNyHtpwG2kGAL9dxpkSH5IXXWyz8JiUaE29YBPZy8ErSlIuY
 xVdA==
X-Gm-Message-State: AOAM530mkendxFxq/LYHUjC6V5FqPVp3fu+UwGZKCD6kQuf5ajeFQlFN
 AM9TnyDUPW2PVu/nissFm2Xfag==
X-Google-Smtp-Source: ABdhPJyVgqHgjlCiunOK9t3N8S0FIge5kEeCAE3w010OLYNrBIfSd131FdYBTILVWy8GablsJBC0KA==
X-Received: by 2002:a1c:24c4:: with SMTP id k187mr12989334wmk.14.1607681687220; 
 Fri, 11 Dec 2020 02:14:47 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13440927wma.6.2020.12.11.02.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 02:14:46 -0800 (PST)
Date: Fri, 11 Dec 2020 11:14:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20201211101444.GP401619@phenom.ffwll.local>
References: <20201209142527.26415-1-tzimmermann@suse.de>
 <20201209142527.26415-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209142527.26415-2-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, airlied@linux.ie, sam@ravnborg.org,
 dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, daniel@ffwll.ch, virtualization@lists.linux-foundation.org,
 sean@poorly.run, christian.koenig@amd.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/8] drm/ast: Don't pin cursor source
 BO explicitly during update
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

T24gV2VkLCBEZWMgMDksIDIwMjAgYXQgMDM6MjU6MjBQTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gVm1hcHBpbmcgdGhlIGN1cnNvciBzb3VyY2UgQk8gY29udGFpbnMgYW4gaW1w
bGljaXQgcGluIG9wZXJhdGlvbiwKPiBzbyB0aGVyZSdzIG5vIG5lZWQgdG8gZG8gdGhpcyBtYW51
YWxseS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KCkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfY3Vyc29yLmMgfCAxMCArLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOSBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfY3Vyc29yLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYXN0L2FzdF9jdXJzb3IuYwo+IGluZGV4IDc0MmQ0M2E3ZWRmNC4uNjhiZjNkMzNm
MWVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hc3QvYXN0X2N1cnNvci5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfY3Vyc29yLmMKPiBAQCAtMTgwLDEyICsxODAsOSBA
QCBpbnQgYXN0X2N1cnNvcl9ibGl0KHN0cnVjdCBhc3RfcHJpdmF0ZSAqYXN0LCBzdHJ1Y3QgZHJt
X2ZyYW1lYnVmZmVyICpmYikKPiAgCj4gIAlnYm8gPSBkcm1fZ2VtX3ZyYW1fb2ZfZ2VtKGZiLT5v
YmpbMF0pOwo+ICAKPiAtCXJldCA9IGRybV9nZW1fdnJhbV9waW4oZ2JvLCAwKTsKPiAtCWlmIChy
ZXQpCj4gLQkJcmV0dXJuIHJldDsKPiAgCXJldCA9IGRybV9nZW1fdnJhbV92bWFwKGdibywgJm1h
cCk7Cj4gIAlpZiAocmV0KQo+IC0JCWdvdG8gZXJyX2RybV9nZW1fdnJhbV91bnBpbjsKPiArCQly
ZXR1cm4gcmV0Owo+ICAJc3JjID0gbWFwLnZhZGRyOyAvKiBUT0RPOiBVc2UgbWFwcGluZyBhYnN0
cmFjdGlvbiBwcm9wZXJseSAqLwo+ICAKPiAgCWRzdCA9IGFzdC0+Y3Vyc29yLm1hcFthc3QtPmN1
cnNvci5uZXh0X2luZGV4XS52YWRkcl9pb21lbTsKPiBAQCAtMTk0LDEzICsxOTEsOCBAQCBpbnQg
YXN0X2N1cnNvcl9ibGl0KHN0cnVjdCBhc3RfcHJpdmF0ZSAqYXN0LCBzdHJ1Y3QgZHJtX2ZyYW1l
YnVmZmVyICpmYikKPiAgCXVwZGF0ZV9jdXJzb3JfaW1hZ2UoZHN0LCBzcmMsIGZiLT53aWR0aCwg
ZmItPmhlaWdodCk7Cj4gIAo+ICAJZHJtX2dlbV92cmFtX3Z1bm1hcChnYm8sICZtYXApOwo+IC0J
ZHJtX2dlbV92cmFtX3VucGluKGdibyk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gLQo+IC1lcnJfZHJt
X2dlbV92cmFtX3VucGluOgo+IC0JZHJtX2dlbV92cmFtX3VucGluKGdibyk7Cj4gLQlyZXR1cm4g
cmV0Owo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBhc3RfY3Vyc29yX3NldF9iYXNlKHN0cnVjdCBh
c3RfcHJpdmF0ZSAqYXN0LCB1NjQgYWRkcmVzcykKPiAtLSAKPiAyLjI5LjIKPiAKCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxv
Zy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
