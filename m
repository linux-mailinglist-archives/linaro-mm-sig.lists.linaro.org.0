Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C1026DB57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:19:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62F13666D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 12:19:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56157666DF; Thu, 17 Sep 2020 12:19:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF2D8666D9;
	Thu, 17 Sep 2020 12:19:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0FED1614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:19:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1604666D9; Thu, 17 Sep 2020 12:19:01 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id 4DCC6614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:19:00 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id f142so1882021qke.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 05:19:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=bVH4jGgQihKj5QSekUnZ2zb+7aLw+KLxMSJUC/hbv48=;
 b=fAd5+y8Id7ruNHhFKB4nt904Ub2BmPEbdmxo8tSzNnHSbahQZP1DYft2e9ap4cjS5u
 eCwfkSzq6KDDQX8dkT3JFUoTkbSYHPTSdPjUULN/o4RBsCHFEROAv3yClmkiEvpTsJqO
 DN1+FRAed6UVcOS0EJEp54hO8eB5SvxxbevaC0MKkoqAjERM+ZdlPTTHUE8Ybhq0HMbi
 KsrTvlejnO8YQrrX8ct13KQTcAPMfC28NoFkcB8BloughH80A2hqEbkfPOZqaLHJ/DQy
 ZIyryAhTSA1enzKYvLtC3Epi9YU/MthkwC5MJeAMUvXE5WUIjTfLvL5ZxuoKdag+mwRh
 kTHQ==
X-Gm-Message-State: AOAM533l1JqsJnrYsr4N6xuXqWB0v+OnA2wo49//WFW0Suu0hQB/cRy1
 or72ebyzuAC7KNHI26CGiTlB7P469whJJGKP
X-Google-Smtp-Source: ABdhPJz0GJRdg0Id6c/JdQbGUXlRLa+Wdw0oKs6yW4L3DgyAUr2dNjQnoWL5C3nALl2/OucOloGmLA==
X-Received: by 2002:a05:620a:a45:: with SMTP id
 j5mr28227082qka.367.1600345139834; 
 Thu, 17 Sep 2020 05:18:59 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id 145sm22054177qkf.18.2020.09.17.05.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 05:18:59 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kIssM-000R84-9L; Thu, 17 Sep 2020 09:18:58 -0300
Date: Thu, 17 Sep 2020 09:18:58 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: christian.koenig@amd.com
Message-ID: <20200917121858.GF8409@ziepe.ca>
References: <20200916095359.GD438822@phenom.ffwll.local>
 <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Daniel Vetter <daniel@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMDI6MDM6NDhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNy4wOS4yMCB1bSAxMzozMSBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFRodSwgU2VwIDE3LCAyMDIwIGF0IDEwOjA5OjEyQU0gKzAyMDAsIERhbmllbCBWZXR0
ZXIgd3JvdGU6Cj4gPiAKPiA+ID4gWWVhaCwgYnV0IGl0IGRvZXNuJ3Qgd29yayB3aGVuIGZvcndh
cmRpbmcgZnJvbSB0aGUgZHJtIGNoYXJkZXYgdG8gdGhlCj4gPiA+IGRtYS1idWYgb24gdGhlIGlt
cG9ydGVyIHNpZGUsIHNpbmNlIHlvdSdkIG5lZWQgYSB0b24gb2YgZGlmZmVyZW50Cj4gPiA+IGFk
ZHJlc3Mgc3BhY2VzLiBBbmQgeW91IHN0aWxsIHJlbHkgb24gdGhlIGNvcmUgY29kZSBwaWNraW5n
IHVwIHlvdXIKPiA+ID4gcGdvZmYgbWFuZ2xpbmcsIHdoaWNoIGZlZWxzIGFib3V0IGFzIHJpc2t5
IHRvIG1lIGFzIHRoZSB2bWEgZmlsZQo+ID4gPiBwb2ludGVyIHdyYW5nbGluZyAtIGlmIGl0J3Mg
bm90IGNvbnNpc3RlbnRseSBhcHBsaWVkIHRoZSByZXZlcnNlIG1hcAo+ID4gPiBpcyB0b2FzdCBh
bmQgdW5tYXBfbWFwcGluZ19yYW5nZSBkb2Vzbid0IHdvcmsgY29ycmVjdGx5IGZvciBvdXIgbmVl
ZHMuCj4gPiBJIHdvdWxkIHRoaW5rIHRoZSBwZ29mZiBoYXMgdG8gYmUgdHJhbnNsYXRlZCBhdCB0
aGUgc2FtZSB0aW1lIHRoZQo+ID4gdm0tPnZtX2ZpbGUgaXMgY2hhbmdlZD8KPiA+IAo+ID4gVGhl
IG93bmVyIG9mIHRoZSBkbWFfYnVmIHNob3VsZCBoYXZlIG9uZSB2aXJ0dWFsIGFkZHJlc3Mgc3Bh
Y2UgYW5kIEZELAo+ID4gYWxsIGl0cyBkbWEgYnVmcyBzaG91bGQgYmUgbGlua2VkIHRvIGl0LCBh
bmQgYWxsIHBnb2ZmcyB0cmFuc2xhdGVkIHRvCj4gPiB0aGF0IHNwYWNlLgo+IAo+IFllYWgsIHRo
YXQgaXMgZXhhY3RseSBsaWtlIGFtZGdwdSBpcyBkb2luZyBpdC4KPiAKPiBHb2luZyB0byBkb2N1
bWVudCB0aGF0IHNvbWVob3cgd2hlbiBJJ20gZG9uZSB3aXRoIFRUTSBjbGVhbnVwcy4KCkJUVywg
d2hpbGUgcGVvcGxlIGFyZSBsb29raW5nIGF0IHRoaXMsIGlzIHRoZXJlIGEgd2F5IHRvIGdvIGZy
b20gYSBWTUEKdG8gYSBkbWFfYnVmIHRoYXQgb3ducyBpdD8KCkphc29uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
