Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3540365454
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 10:40:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 988CB6681D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 08:40:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7E4FD66831; Tue, 20 Apr 2021 08:40:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A86D66830;
	Tue, 20 Apr 2021 08:39:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 23EAE6682A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 08:39:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 15A976681D; Tue, 20 Apr 2021 08:39:11 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by lists.linaro.org (Postfix) with ESMTPS id 486736681D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 08:39:09 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id r9so57018838ejj.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 01:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=QIuUvofPDIxQ2Xnl6piPnzkNIqnBx7iSqqUtBV1i2j0=;
 b=arpENWMxRaneRKpgGL62LPxm0+eUlbllcuJlD7994azVhdbT2Y7MfXzeZMbXFfV/Uc
 QVGW8Nu2QLbTh8K3KKyKm0IXGR6bu58n47uxBX9JbnnLAX5gOxiM4KjeMQdqqLQr/V06
 wW3mEMq64LjyaB+Ngul68GypGUr79Pbt2UXTcD3udlt1GxzeVEZEWwQvIDfbAJiIQouU
 /HK9EhGQteg91OvVeuS3IQB2cyeOSq8tXkQk2BcOMgzjC5NR30X1RH49UG2+8uJrjGQk
 1K7wbzXj1qAcKMXEJTL4xPVRxPogAXB8/dI2nlWQmwlhkKZ5hLjTgtS0O8o6WBnESYYN
 RVTw==
X-Gm-Message-State: AOAM531snpxvAgK2d1FR8gyNgM69l5JV9lU0FbYoWSVAbcw5eKYYl/vF
 rAUUmF2TMJDBv1GE8eHHAKzUvg==
X-Google-Smtp-Source: ABdhPJzKnx+yvsmmawjlL/WEDsrn4hsPU7R8EEIXmiKkO0qNGO+CRRMLxdwpSEpKHtNvyrET6RvyuA==
X-Received: by 2002:a17:906:f949:: with SMTP id
 ld9mr26715530ejb.236.1618907948397; 
 Tue, 20 Apr 2021 01:39:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d5sm10345824edt.49.2021.04.20.01.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 01:39:07 -0700 (PDT)
Date: Tue, 20 Apr 2021 10:39:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YH6TKQQ9kAEIrJ3y@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Peter.Enderborg@sony.com, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, sumit.semwal@linaro.org,
 adobriyan@gmail.com, akpm@linux-foundation.org,
 songmuchun@bytedance.com, guro@fb.com, shakeelb@google.com,
 mhocko@suse.com, neilb@suse.de, samitolvanen@google.com,
 rppt@kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 willy@infradead.org
References: <20210417104032.5521-1-peter.enderborg@sony.com>
 <d983aef9-3dde-54cc-59a0-d9d42130b513@amd.com>
 <d822adcc-2a3c-1923-0d1d-4ecabd76a0e5@sony.com>
 <2420ea7a-4746-b11a-3c0e-2f962059d071@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2420ea7a-4746-b11a-3c0e-2f962059d071@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: mhocko@suse.com, willy@infradead.org, neilb@suse.de,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Peter.Enderborg@sony.com, linaro-mm-sig@lists.linaro.org, shakeelb@google.com,
 rppt@kernel.org, samitolvanen@google.com, songmuchun@bytedance.com,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, adobriyan@gmail.com,
 guro@fb.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4] dma-buf: Add DmaBufTotal counter in
	meminfo
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

T24gU2F0LCBBcHIgMTcsIDIwMjEgYXQgMDE6NTQ6MDhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNy4wNC4yMSB1bSAxMzoyMCBzY2hyaWViIFBldGVyLkVuZGVyYm9yZ0Bz
b255LmNvbToKPiA+IE9uIDQvMTcvMjEgMTI6NTkgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4gPiA+IEFtIDE3LjA0LjIxIHVtIDEyOjQwIHNjaHJpZWIgUGV0ZXIgRW5kZXJib3JnOgo+ID4g
PiA+IFRoaXMgYWRkcyBhIHRvdGFsIHVzZWQgZG1hLWJ1ZiBtZW1vcnkuIERldGFpbHMKPiA+ID4g
PiBjYW4gYmUgZm91bmQgaW4gZGVidWdmcywgaG93ZXZlciBpdCBpcyBub3QgZm9yIGV2ZXJ5b25l
Cj4gPiA+ID4gYW5kIG5vdCBhbHdheXMgYXZhaWxhYmxlLiBkbWEtYnVmIGFyZSBpbmRpcmVjdCBh
bGxvY2F0ZWQgYnkKPiA+ID4gPiB1c2Vyc3BhY2UuIFNvIHdpdGggdGhpcyB2YWx1ZSB3ZSBjYW4g
bW9uaXRvciBhbmQgZGV0ZWN0Cj4gPiA+ID4gdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyB0aGF0IGhh
dmUgcHJvYmxlbXMuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgRW5kZXJi
b3JnIDxwZXRlci5lbmRlcmJvcmdAc29ueS5jb20+Cj4gPiA+IFJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiA+IAo+ID4gPiBIb3cgZG8g
eW91IHdhbnQgdG8gdXBzdHJlYW0gdGhpcz8KPiA+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGF0IHF1
ZXN0aW9uLiBUaGUgcGF0Y2ggYXBwbGllcyBvbiBUb3J2YWxkcyA1LjEyLXJjNywKPiA+IGJ1dCBJ
IGd1ZXNzIDUuMTMgaXMgd2hhdCB3ZSB3b3JrIG9uIHJpZ2h0IG5vdy4KPiAKPiBZZWFoLCBidXQg
aG93IGRvIHlvdSB3YW50IHRvIGdldCBpdCBpbnRvIExpbnVzIHRyZWU/Cj4gCj4gSSBjYW4gcHVz
aCBpdCB0b2dldGhlciB3aXRoIG90aGVyIERNQS1idWYgcGF0Y2hlcyB0aHJvdWdoIGRybS1taXNj
LW5leHQgYW5kCj4gdGhlbiBEYXZlIHdpbGwgc2VuZCBpdCB0byBMaW51cyBmb3IgaW5jbHVzaW9u
IGluIDUuMTMuCgpTbWFsbCBjb3JyZWN0aW9uLCB3ZSd2ZSBhbHJlYWR5IGZyb3plbiBmb3IgdGhl
IG1lcmdlIHdpbmRvdyBzbyB0aGlzIHdpbGwKbGFuZCBpbiA1LjE0LgotRGFuaWVsCgo+IAo+IEJ1
dCBjb3VsZCBiZSB0aGF0IHlvdSBhcmUgcHVzaGluZyBtdWx0aXBsZSBjaGFuZ2VzIHRvd2FyZHMg
TGludXMgdGhyb3VnaAo+IHNvbWUgb3RoZXIgYnJhbmNoLiBJbiB0aGlzIGNhc2UgSSdtIGZpbmUg
aWYgeW91IHBpY2sgdGhhdCB3YXkgaW5zdGVhZCBpZiB5b3UKPiB3YW50IHRvIGtlZXAgeW91ciBw
YXRjaGVzIHRvZ2V0aGVyIGZvciBzb21lIHJlYXNvbi4KPiAKPiBDaHJpc3RpYW4uCj4gCj4gPiAK
PiA+ID4gPiAtLS0KPiA+ID4gPiAgwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEzICsr
KysrKysrKysrKysKPiA+ID4gPiAgwqAgZnMvcHJvYy9tZW1pbmZvLmPCoMKgwqDCoMKgwqDCoMKg
IHzCoCA1ICsrKystCj4gPiA+ID4gIMKgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5owqDCoCB8wqAg
MSArCj4gPiA+ID4gIMKgIDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gPiA+IGluZGV4IGYyNjRiNzBj
MzgzZS4uMTk3ZTVjNDVkZDI2IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+ID4g
QEAgLTM3LDYgKzM3LDcgQEAgc3RydWN0IGRtYV9idWZfbGlzdCB7Cj4gPiA+ID4gIMKgIH07Cj4g
PiA+ID4gIMKgIMKgIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9saXN0IGRiX2xpc3Q7Cj4gPiA+ID4g
K3N0YXRpYyBhdG9taWNfbG9uZ190IGRtYV9idWZfZ2xvYmFsX2FsbG9jYXRlZDsKPiA+ID4gPiAg
wqAgwqAgc3RhdGljIGNoYXIgKmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwg
Y2hhciAqYnVmZmVyLCBpbnQgYnVmbGVuKQo+ID4gPiA+ICDCoCB7Cj4gPiA+ID4gQEAgLTc5LDYg
KzgwLDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRy
eSkKPiA+ID4gPiAgwqDCoMKgwqDCoCBpZiAoZG1hYnVmLT5yZXN2ID09IChzdHJ1Y3QgZG1hX3Jl
c3YgKikmZG1hYnVmWzFdKQo+ID4gPiA+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX3Jlc3ZfZmlu
aShkbWFidWYtPnJlc3YpOwo+ID4gPiA+ICDCoCArwqDCoMKgIGF0b21pY19sb25nX3N1YihkbWFi
dWYtPnNpemUsICZkbWFfYnVmX2dsb2JhbF9hbGxvY2F0ZWQpOwo+ID4gPiA+ICDCoMKgwqDCoMKg
IG1vZHVsZV9wdXQoZG1hYnVmLT5vd25lcik7Cj4gPiA+ID4gIMKgwqDCoMKgwqAga2ZyZWUoZG1h
YnVmLT5uYW1lKTsKPiA+ID4gPiAgwqDCoMKgwqDCoCBrZnJlZShkbWFidWYpOwo+ID4gPiA+IEBA
IC01ODYsNiArNTg4LDcgQEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0
cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykKPiA+ID4gPiAgwqDCoMKgwqDCoCBt
dXRleF9sb2NrKCZkYl9saXN0LmxvY2spOwo+ID4gPiA+ICDCoMKgwqDCoMKgIGxpc3RfYWRkKCZk
bWFidWYtPmxpc3Rfbm9kZSwgJmRiX2xpc3QuaGVhZCk7Cj4gPiA+ID4gIMKgwqDCoMKgwqAgbXV0
ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOwo+ID4gPiA+ICvCoMKgwqAgYXRvbWljX2xvbmdfYWRk
KGRtYWJ1Zi0+c2l6ZSwgJmRtYV9idWZfZ2xvYmFsX2FsbG9jYXRlZCk7Cj4gPiA+ID4gIMKgIMKg
wqDCoMKgwqAgcmV0dXJuIGRtYWJ1ZjsKPiA+ID4gPiAgwqAgQEAgLTEzNDYsNiArMTM0OSwxNiBA
QCB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFf
YnVmX21hcCAqbWFwKQo+ID4gPiA+ICDCoCB9Cj4gPiA+ID4gIMKgIEVYUE9SVF9TWU1CT0xfR1BM
KGRtYV9idWZfdnVubWFwKTsKPiA+ID4gPiAgwqAgKy8qKgo+ID4gPiA+ICsgKiBkbWFfYnVmX2Fs
bG9jYXRlZF9wYWdlcyAtIFJldHVybiB0aGUgdXNlZCBuciBvZiBwYWdlcwo+ID4gPiA+ICsgKiBh
bGxvY2F0ZWQgZm9yIGRtYS1idWYKPiA+ID4gPiArICovCj4gPiA+ID4gK2xvbmcgZG1hX2J1Zl9h
bGxvY2F0ZWRfcGFnZXModm9pZCkKPiA+ID4gPiArewo+ID4gPiA+ICvCoMKgwqAgcmV0dXJuIGF0
b21pY19sb25nX3JlYWQoJmRtYV9idWZfZ2xvYmFsX2FsbG9jYXRlZCkgPj4gUEFHRV9TSElGVDsK
PiA+ID4gPiArfQo+ID4gPiA+ICtFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2FsbG9jYXRlZF9w
YWdlcyk7Cj4gPiA+ID4gKwo+ID4gPiA+ICDCoCAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCj4gPiA+
ID4gIMKgIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywg
dm9pZCAqdW51c2VkKQo+ID4gPiA+ICDCoCB7Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2ZzL3Byb2Mv
bWVtaW5mby5jIGIvZnMvcHJvYy9tZW1pbmZvLmMKPiA+ID4gPiBpbmRleCA2ZmE3NjFjOWNjNzgu
LmNjYzdjNDBjOGRiNyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9mcy9wcm9jL21lbWluZm8uYwo+ID4g
PiA+ICsrKyBiL2ZzL3Byb2MvbWVtaW5mby5jCj4gPiA+ID4gQEAgLTE2LDYgKzE2LDcgQEAKPiA+
ID4gPiAgwqAgI2lmZGVmIENPTkZJR19DTUEKPiA+ID4gPiAgwqAgI2luY2x1ZGUgPGxpbnV4L2Nt
YS5oPgo+ID4gPiA+ICDCoCAjZW5kaWYKPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYu
aD4KPiA+ID4gPiAgwqAgI2luY2x1ZGUgPGFzbS9wYWdlLmg+Cj4gPiA+ID4gIMKgICNpbmNsdWRl
ICJpbnRlcm5hbC5oIgo+ID4gPiA+ICDCoCBAQCAtMTQ1LDcgKzE0Niw5IEBAIHN0YXRpYyBpbnQg
bWVtaW5mb19wcm9jX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp2KQo+ID4gPiA+ICDC
oMKgwqDCoMKgIHNob3dfdmFsX2tiKG0sICJDbWFGcmVlOsKgwqDCoMKgwqDCoMKgICIsCj4gPiA+
ID4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdsb2JhbF96b25lX3BhZ2Vfc3RhdGUoTlJf
RlJFRV9DTUFfUEFHRVMpKTsKPiA+ID4gPiAgwqAgI2VuZGlmCj4gPiA+ID4gLQo+ID4gPiA+ICsj
aWZkZWYgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSCj4gPiA+ID4gK8KgwqDCoCBzaG93X3ZhbF9r
YihtLCAiRG1hQnVmVG90YWw6wqDCoMKgICIsIGRtYV9idWZfYWxsb2NhdGVkX3BhZ2VzKCkpOwo+
ID4gPiA+ICsjZW5kaWYKPiA+ID4gPiAgwqDCoMKgwqDCoCBodWdldGxiX3JlcG9ydF9tZW1pbmZv
KG0pOwo+ID4gPiA+ICDCoCDCoMKgwqDCoMKgIGFyY2hfcmVwb3J0X21lbWluZm8obSk7Cj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgKPiA+ID4gPiBpbmRleCBlZmRjNTZiOWQ5NWYuLjViMDU4MTZiZDJjZCAxMDA2NDQK
PiA+ID4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+ID4gPiA+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oCj4gPiA+ID4gQEAgLTUwNyw0ICs1MDcsNSBAQCBpbnQgZG1hX2J1
Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICosIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqLAo+ID4gPiA+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nKTsKPiA+ID4gPiAgwqAgaW50IGRt
YV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1h
cCk7Cj4gPiA+ID4gIMKgIHZvaWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1
Ziwgc3RydWN0IGRtYV9idWZfbWFwICptYXApOwo+ID4gPiA+ICtsb25nIGRtYV9idWZfYWxsb2Nh
dGVkX3BhZ2VzKHZvaWQpOwo+ID4gPiA+ICDCoCAjZW5kaWYgLyogX19ETUFfQlVGX0hfXyAqLwo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0
dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
