Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DC699472
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 15:05:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C75A61778
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 13:05:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 709F361836; Thu, 22 Aug 2019 13:05:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC2F76186A;
	Thu, 22 Aug 2019 13:04:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4EE646186A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 13:04:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4099161875; Thu, 22 Aug 2019 13:04:24 +0000 (UTC)
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by lists.linaro.org (Postfix) with ESMTPS id 1810A6187F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 13:02:56 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id p28so7858507edi.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 06:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=bEFie1V4YsBEnCBAlHqq7MFKWHgQ85EhvEaFWOkyQHo=;
 b=dx78Efb6REKTPPSpgSG3SDcgmWiAXSWgzvp6eUYX3pJv7byF0AZJMBrst13t3D8c1E
 RMz84zEOOXl/EsFWpXoC2h8RcOTWTlP37LLu0Pyq4yUSrEDcSqGL5VaheiL4sqBAWR1K
 bqSnIiueIMrkStEl56d4SWB5sE9xyPM9Jo9c9sN/p9CMvAoomTOKa8y10goEVtsT4J9W
 k8jt3FxtzCSqnwHuhu9ZeY/3SUzvfWHHo95XqOxraTFFNyY8sWsqnxG/J2G1ZYFL2RQq
 QpjkU7S5kBJc+IPFrmRD06URMcHdsWrc1+5ocfhj+ZliwCgdSG0bTgyIOduHOZyqSDXG
 evnA==
X-Gm-Message-State: APjAAAUtIBK8ztwJyO79/jg1Q6sGACZg8u3MNZ8cqxNyIyFmUlYVIXhj
 3fepIGreGdQEkj+mUXDD2rS8IQ==
X-Google-Smtp-Source: APXvYqzVizM+IhVvZ/KDzjJkM0D3bX0ibIr5zP64xbY4bQ0J9bsHBAipHCk0eVnBmhuRecD8ZiCGtQ==
X-Received: by 2002:aa7:d58d:: with SMTP id r13mr41129002edq.118.1566478975166; 
 Thu, 22 Aug 2019 06:02:55 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id b3sm2273200ejl.55.2019.08.22.06.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 06:02:54 -0700 (PDT)
Date: Thu, 22 Aug 2019 15:02:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20190822130251.GT11147@phenom.ffwll.local>
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-8-christian.koenig@amd.com>
 <20190821160454.GN11147@phenom.ffwll.local>
 <c1ff88ef-0e49-fd7a-6317-de432a04ddf2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1ff88ef-0e49-fd7a-6317-de432a04ddf2@gmail.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 07/10] dma-buf/resv: add new fences
 container implementation
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

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTA6MjM6MjlBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMS4wOC4xOSB1bSAxODowNCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAwMjozMTo0NFBNICswMjAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOgo+ID4gPiBbU05JUF0KPiA+ID4gKwkvKiBUcnkgdG8gZHJvcCB0aGUgbGFzdCBy
ZWZlcmVuY2UgKi8KPiA+ID4gKwlpZiAoIWRtYV9mZW5jZV9hcnJheV9yZWN5Y2xlKHN0YWdlZCkp
Cj4gPiBXaXRob3V0IGFuIHJjdSBiYXJyaWVyIGhlcmUgeW91J3JlIG5vdCBzeW5jaW5nIHRvIG5l
dyBjbGllbnRzIGF0IGFsbC4KPiA+IEkgZG9uJ3QgdGhpbmsgdGhpcyB3b3JrcywgYW5kIEkgZXhw
ZWN0IHRoYXQgb25jZSB5b3UndmUgcmVhZGRlZCBhbGwgdGhlCj4gPiBiYXJyaWVycyBhbmQgcmV0
cnkgbG9vcHMgd2UncmUgYmFjayB0byBzZXFsb2Nrcy4KPiAKPiBUaGUga2V5IGRpZmZlcmVuY2Ug
aXMgdGhhdCBSQ1UgdXNlcnMgbm93IHVzZSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCkgdG8KPiBn
cmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBjdXJyZW50IHNldCBvZiBmZW5jZXMuCj4gCj4gSW4gb3Ro
ZXIgd29yZHMgdGhlIHdob2xlIGFycmF5IGlzIHJlZmVyZW5jZSBjb3VudGVkIGFuZCBSQ1UgcHJv
dGVjdGVkCj4gaW5zdGVhZCBvZiBlYWNoIGluZGl2aWR1YWwgZW50cnkgaW4gdGhlIGFycmF5Lgo+
IAo+IFRoaXMgd2F5IHlvdSBkb24ndCBuZWVkIHRoZSBzZXF1ZW5jZSBjb3VudCBhbnkgbW9yZSBi
ZWNhdXNlIHlvdSBncmFiIGEKPiByZWZlcmVuY2UgdG8gYWxsIG9mIHRoZW0gYXQgb25jZSBhbmQg
dGhlbiBjYW4gYmUgc3VyZSB0aGF0IHRoZXkgZG9uJ3QKPiBjaGFuZ2UuCgpIbSB5ZWFoIC4uLiBJ
IHRoaW5rIHRoZXJlJ3Mgc3RpbGwgc29tZSB1c2VycyBsZWZ0IHRoYXQgaGF2ZSBhbiBvcGVuLWNv
ZGVkCnJjdSBzZWN0aW9uIHRob3VnaC4gQnV0IHllYWggaWYgeW91IGNhbiBjb25jaW5jZSBDaHJp
cyB0aGF0IHRoaXMgaXMgb2sgSQp0aGluayBpdCBtYWtlcyBzZW5zZSBhcyBhbiBvdmVyYWxsIGNs
ZWFudXAgb2YgdGhlIGhhbmQtcm9sbGVkIGZlbmNlcyBhcnJheQp3ZSBoYXZlIGZvciBzaGFyZWQg
ZmVuY2VzLiBCdXQgSSdkIHJlYWxseSBsaWtlIHRvIHVudGFuZ2xlIGl0IGZyb20gdGhlCmVudGly
ZSBzZW1hbnRpY3MgZGlzY3Vzc2lvbiwgc2luY2UgdGhhdCBzZWVtcyBlbnRpcmVseSB1bnJlbGF0
ZWQuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
