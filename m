Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0DB27839B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Sep 2020 11:11:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29A49665D5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Sep 2020 09:11:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 196A3665FA; Fri, 25 Sep 2020 09:11:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 000D2665CF;
	Fri, 25 Sep 2020 09:10:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19924664DF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 09:10:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0297F665CF; Fri, 25 Sep 2020 09:10:27 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id A7E43664DF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 09:10:26 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w2so2280422wmi.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Sep 2020 02:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=4bxN2fagu2rIKQxxyvxxjzncZ5aqxZkwbZ2FY0Psst0=;
 b=rKW0ZSkjoLGuXQF84wTboleX7fj7u4yCdJs/Ey0P9iSRo6+UFY2RKfGzv9jNmLmazW
 3Ft9WoOXCL3WGEsxRtEQrH2Ws/rKomoNpL0efAFedMQxhOqyY1x2/C5KSE/ecu5LYMF0
 zIZgM6AdGq9S5JyMmQztAuL+58z+SX20xcIy5q7t0kfNOXn6jF7JXy45WiyK8yQ7vOdM
 ZNN6geQ5audK3pmVvtIkBr3I68MxBnDAWnuysFrvXX6qBwQUOorIRkAl709iZLlW43ha
 DRXl6CjFYRyuVrbtiYvacsKEsA1TqDKriXatRG4jP6E7/ezJvk78mj7080G4IvYZRh5i
 3KOQ==
X-Gm-Message-State: AOAM533bA3+z1T/U930nUZXv7JK8V/7R6qm0a1le2xwdauTEHoEQACLM
 I2RzOfdSTFXZJXizM5CS/FqubA==
X-Google-Smtp-Source: ABdhPJz39Njw83y/iQ1by8WVklDBrwBAysH2nbHjX1h9i0Z3FFq/537COlQ1R7PRkQNkxthD8z2i+g==
X-Received: by 2002:a1c:5f46:: with SMTP id t67mr2003936wmb.71.1601025025796; 
 Fri, 25 Sep 2020 02:10:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm2106005wrt.38.2020.09.25.02.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 02:10:24 -0700 (PDT)
Date: Fri, 25 Sep 2020 11:10:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tian Tao <tiantao6@hisilicon.com>
Message-ID: <20200925091023.GE438822@phenom.ffwll.local>
Mail-Followup-To: Tian Tao <tiantao6@hisilicon.com>, eric@anholt.net,
 airlied@linux.ie, sumit.semwal@linaro.org, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <1601023898-29886-1-git-send-email-tiantao6@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1601023898-29886-1-git-send-email-tiantao6@hisilicon.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, eric@anholt.net, daniel@ffwll.ch,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] drm/vc4: Deleted the drm_device
	declaration
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

T24gRnJpLCBTZXAgMjUsIDIwMjAgYXQgMDQ6NTE6MzhQTSArMDgwMCwgVGlhbiBUYW8gd3JvdGU6
Cj4gZHJtX21vZGVzZXRfbG9jay5oIGFscmVhZHkgZGVjbGFyZXMgc3RydWN0IGRybV9kZXZpY2Us
IHNvIHRoZXJlJ3Mgbm8KPiBuZWVkIHRvIGRlY2xhcmUgaXQgaW4gdmM0X2Rydi5oCj4gCj4gU2ln
bmVkLW9mZi1ieTogVGlhbiBUYW8gPHRpYW50YW82QGhpc2lsaWNvbi5jb20+CgpKdXN0IGFuIGFz
aWRlLCB3aGVuIHN1Ym1pdHRpbmcgcGF0Y2hlcyBwbGVhc2UgdXNlCnNjcmlwdHMvZ2V0X21haW50
YWluZXJzLnBsIHRvIGdlbmVyYXRlIHRoZSByZWNpcGllbnQgbGlzdC4gTG9va2luZyB0aHJvdWdo
CnBhc3QgZmV3IHBhdGNoZXMgZnJvbSB5b3UgaXQgc2VlbXMgZmFpcmx5IGFyYml0cmFyeSBhbmQg
b2Z0ZW4gbWlzc2VzIHRoZQphY3R1YWwgbWFpbnRhaW5lcnMgZm9yIGEgZ2l2ZW4gcGllY2Ugb2Yg
Y29kZSwgd2hpY2ggaW5jcmVhc2VzIHRoZSBvZGRzIHRoZQpwYXRjaCB3aWxsIGdldCBsb3N0IGEg
bG90LgoKRS5nLiBmb3IgdGhpcyBvbmUgSSdtIG9ubHkgbGlrZSB0aGUgNXRoIG9yIHNvIGZhbGxi
YWNrIHBlcnNvbiwgYW5kIHRoZQptYWluIG1haW50YWluZXIgaXNuJ3Qgb24gdGhlIHJlY2lwaWVu
dCBsaXN0LgoKQ2hlZWVycywgRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9kcnYuaCB8IDEgLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS92
YzQvdmM0X2Rydi5oCj4gaW5kZXggOGM4ZDk2Yi4uODcxN2ExYyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0
X2Rydi5oCj4gQEAgLTE5LDcgKzE5LDYgQEAKPiAgCj4gICNpbmNsdWRlICJ1YXBpL2RybS92YzRf
ZHJtLmgiCj4gIAo+IC1zdHJ1Y3QgZHJtX2RldmljZTsKPiAgc3RydWN0IGRybV9nZW1fb2JqZWN0
Owo+ICAKPiAgLyogRG9uJ3QgZm9yZ2V0IHRvIHVwZGF0ZSB2YzRfYm8uYzogYm9fdHlwZV9uYW1l
c1tdIHdoZW4gYWRkaW5nIHRvCj4gLS0gCj4gMi43LjQKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
