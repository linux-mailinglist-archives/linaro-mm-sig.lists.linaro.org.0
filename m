Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F252EA599
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jan 2021 07:49:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04E6D6062F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jan 2021 06:49:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EC0FC66726; Tue,  5 Jan 2021 06:49:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA4CF6090B;
	Tue,  5 Jan 2021 06:48:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ED48A6062F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Jan 2021 06:48:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D1A8F6095F; Tue,  5 Jan 2021 06:48:21 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by lists.linaro.org (Postfix) with ESMTPS id C4F266062F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Jan 2021 06:48:19 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id s26so70116334lfc.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Jan 2021 22:48:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OpxZsk9jJXP2U2C3iXiY0AGX43J+hhnzXoyfUqqDyT8=;
 b=O6OmHHzFBNYKc2n3sRpAaeDUYDh+0sBRMN950QY18c3wV8VokZxBbRhL8swy0gHg9d
 v6LPZ8CNNGcey5sK23mDeag+TsFP/kExQM/pdJjuRjj22cpw44fRcyCVadSMM9jSHD8n
 dFT+SP6tb0kyBJWmAWUu/TRMmQQ7pOvC9wBwD/O5U/xUbyb7rbRZnDWRQKIuuh+5iOeS
 GyyQrzjPtQStCZpYhufup6If2JYC5ETzVXJyUlcC/JiEPXTe+jH31aMAXTSW2Km4/+KX
 ugVehiCr5Z14+3DKGsLJOQHHEWJy8ayvW7INV+lkSpKKNB72rXDv72/GE4A/9N6rI4Jv
 iXZA==
X-Gm-Message-State: AOAM533nB6TRX8dhOllnn6VPmmWic06YXMUxX9IsT5YHeDtAGkybX2Xl
 jUmATPeLktPRpOnqsKRUft0ZWKGzgl1T9aHGnHg5j3tN
X-Google-Smtp-Source: ABdhPJww36k15/BzfzFNtkEkRVVb1J7oNB6wbeGsjMWSPdmmxrY7TpN0ZzAMFQcC6cOlpcf5nxALWSLSOVFaPwQ1AgI=
X-Received: by 2002:a2e:9dc1:: with SMTP id x1mr35175313ljj.32.1609829298531; 
 Mon, 04 Jan 2021 22:48:18 -0800 (PST)
MIME-Version: 1.0
References: <1609760177-6083-1-git-send-email-charante@codeaurora.org>
 <0dcbf9c5-3c28-0f57-0069-3fe5dc3aa7f6@gmail.com>
In-Reply-To: <0dcbf9c5-3c28-0f57-0069-3fe5dc3aa7f6@gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 5 Jan 2021 12:18:07 +0530
Message-ID: <CAO_48GEKimoZ0KiGj+TmQf9DvTitMDbFxRCvhusA2VcHwAGfug@mail.gmail.com>
To: Christian Koenig <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 Charan Teja Reddy <charante@codeaurora.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: fix use-after-free of dmabuf's
	file->f_inode
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

SGkgQ2hhcmFuLAoKT24gTW9uLCA0IEphbiAyMDIxIGF0IDE3OjIyLCBDaHJpc3RpYW4gS8O2bmln
Cjxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAwNC4wMS4y
MSB1bSAxMjozNiBzY2hyaWViIENoYXJhbiBUZWphIFJlZGR5Ogo+ID4gSXQgaXMgb2JzZXJ2ZWQg
J3VzZS1hZnRlci1mcmVlJyBvbiB0aGUgZG1hYnVmJ3MgZmlsZS0+Zl9pbm9kZSB3aXRoIHRoZQo+
ID4gcmFjZSBiZXR3ZWVuIGNsb3NpbmcgdGhlIGRtYWJ1ZiBmaWxlIGFuZCByZWFkaW5nIHRoZSBk
bWFidWYncyBkZWJ1Zwo+ID4gaW5mby4KPiA+Cj4gPiBDb25zaWRlciB0aGUgYmVsb3cgc2NlbmFy
aW8gd2hlcmUgUDEgaXMgY2xvc2luZyB0aGUgZG1hX2J1ZiBmaWxlCj4gPiBhbmQgUDIgaXMgcmVh
ZGluZyB0aGUgZG1hX2J1ZidzIGRlYnVnIGluZm8gaW4gdGhlIHN5c3RlbToKPiA+Cj4gPiBQMSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUDIKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX2J1Zl9kZWJ1Z19zaG93KCkKPiA+IGRt
YV9idWZfcHV0KCkKPiA+ICAgIF9fZnB1dCgpCj4gPiAgICAgIGZpbGUtPmZfb3AtPnJlbGVhc2Uo
KQo+ID4gICAgICBkcHV0KCkKPiA+ICAgICAgLi4uLgo+ID4gICAgICAgIGRlbnRyeV91bmxpbmtf
aW5vZGUoKQo+ID4gICAgICAgICAgaXB1dChkZW50cnktPmRfaW5vZGUpCj4gPiAgICAgICAgICAo
d2hlcmUgdGhlIGlub2RlIGlzIGZyZWVkKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBtdXRleF9sb2NrKCZkYl9saXN0LmxvY2spCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlYWQgJ2RtYV9idWYtPmZpbGUtPmZfaW5vZGUnCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh0aGUgc2FtZSBpbm9kZSBpcyBm
cmVlZCBieSBQMSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXV0
ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spCj4gPiAgICAgICAgZGVudHJ5LT5kX29wLT5kX3JlbGVh
c2UoKS0tPgo+ID4gICAgICAgICAgZG1hX2J1Zl9yZWxlYXNlKCkKPiA+ICAgICAgICAgICAgLi4u
Li4KPiA+ICAgICAgICAgICAgbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKQo+ID4gICAgICAgICAg
ICByZW1vdmVzIHRoZSBkbWFidWYgZnJvbSB0aGUgbGlzdAo+ID4gICAgICAgICAgICBtdXRleF91
bmxvY2soJmRiX2xpc3QubG9jaykKPiA+Cj4gPiBJbiB0aGUgYWJvdmUgc2NlbmFyaW8sIHdoZW4g
ZG1hX2J1Zl9wdXQoKSBpcyBjYWxsZWQgb24gYSBkbWFfYnVmLCBpdAo+ID4gZmlyc3QgZnJlZXMg
dGhlIGRtYV9idWYncyBmaWxlLT5mX2lub2RlKD1kZW50cnktPmRfaW5vZGUpIGFuZCB0aGVuCj4g
PiByZW1vdmVzIHRoaXMgZG1hX2J1ZiBmcm9tIHRoZSBzeXN0ZW0gZGJfbGlzdC4gSW4gYmV0d2Vl
biBQMiB0cmF2ZXJzaW5nCj4gPiB0aGUgZGJfbGlzdCB0cmllcyB0byBhY2Nlc3MgdGhpcyBkbWFf
YnVmJ3MgZmlsZS0+Zl9pbm9kZSB0aGF0IHdhcyBmcmVlZAo+ID4gYnkgUDEgd2hpY2ggaXMgYSB1
c2UtYWZ0ZXItZnJlZSBjYXNlLgo+ID4KPiA+IFNpbmNlLCBfX2ZwdXQoKSBjYWxscyBmX29wLT5y
ZWxlYXNlIGZpcnN0IGFuZCB0aGVuIGxhdGVyIGNhbGxzIHRoZQo+ID4gZF9vcC0+ZF9yZWxlYXNl
LCBtb3ZlIHRoZSBkbWFfYnVmJ3MgZGJfbGlzdCByZW1vdmFsIGZyb20gZF9yZWxlYXNlKCkgdG8K
PiA+IGZfb3AtPnJlbGVhc2UoKS4gVGhpcyBlbnN1cmVzIHRoYXQgZG1hX2J1ZidzIGZpbGUtPmZf
aW5vZGUgaXMgbm90Cj4gPiBhY2Nlc3NlZCBhZnRlciBpdCBpcyByZWxlYXNlZC4KPiA+Cj4gPiBG
aXhlczogNGFiNTljM2M2MzhjICgiZG1hLWJ1ZjogTW92ZSBkbWFfYnVmX3JlbGVhc2UoKSBmcm9t
IGZvcHMgdG8gZGVudHJ5X29wcyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaGFyYW4gVGVqYSBSZWRk
eSA8Y2hhcmFudGVAY29kZWF1cm9yYS5vcmc+Cj4KPiBOb3QgYW4gZXhwZXJ0IG9uIHRoZSBkZWJ1
Z2ZzIHN0dWZmIGluIERNQS1idWYsIGJ1dCB0aGUgZXhwbGFuYXRpb24KPiBzb3VuZHMgcGVyZmVj
dGx5IGNvcnJlY3QgdG8gbWUuCj4KPiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgoKVGhhbmtzIGZvciB5b3VyIGZpeDsgSSB3aWxsIHF1ZXVlIGl0
IHVwIGluIHRoZSBmaXhlcyBicmFuY2guIENhbiB5b3UKcGxlYXNlIGFsc28gc2VuZCBpdCB0byBi
ZSBxdWV1ZWQgdG8gNS40KyBzdGFibGUgYnJhbmNoZXM/Cgo+Cj4gPiAtLS0KPiA+ICAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDIxICsrKysrKysrKysrKysrKysrLS0tLQo+ID4gICAxIGZp
bGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKPiA+IGluZGV4IDBlYjgwYzEuLmExNGRjYmIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4g
PiBAQCAtNzYsMTAgKzc2LDYgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBk
ZW50cnkgKmRlbnRyeSkKPiA+Cj4gPiAgICAgICBkbWFidWYtPm9wcy0+cmVsZWFzZShkbWFidWYp
Owo+ID4KPiA+IC0gICAgIG11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7Cj4gPiAtICAgICBsaXN0
X2RlbCgmZG1hYnVmLT5saXN0X25vZGUpOwo+ID4gLSAgICAgbXV0ZXhfdW5sb2NrKCZkYl9saXN0
LmxvY2spOwo+ID4gLQo+ID4gICAgICAgaWYgKGRtYWJ1Zi0+cmVzdiA9PSAoc3RydWN0IGRtYV9y
ZXN2ICopJmRtYWJ1ZlsxXSkKPiA+ICAgICAgICAgICAgICAgZG1hX3Jlc3ZfZmluaShkbWFidWYt
PnJlc3YpOwo+ID4KPiA+IEBAIC04OCw2ICs4NCwyMiBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Jl
bGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQo+ID4gICAgICAga2ZyZWUoZG1hYnVmKTsKPiA+
ICAgfQo+ID4KPiA+ICtzdGF0aWMgaW50IGRtYV9idWZfZmlsZV9yZWxlYXNlKHN0cnVjdCBpbm9k
ZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkbWFf
YnVmICpkbWFidWY7Cj4gPiArCj4gPiArICAgICBpZiAoIWlzX2RtYV9idWZfZmlsZShmaWxlKSkK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArCj4gPiArICAgICBkbWFidWYg
PSBmaWxlLT5wcml2YXRlX2RhdGE7Cj4gPiArCj4gPiArICAgICBtdXRleF9sb2NrKCZkYl9saXN0
LmxvY2spOwo+ID4gKyAgICAgbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsKPiA+ICsgICAg
IG11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiAwOwo+
ID4gK30KPiA+ICsKPiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZW50cnlfb3BlcmF0aW9ucyBk
bWFfYnVmX2RlbnRyeV9vcHMgPSB7Cj4gPiAgICAgICAuZF9kbmFtZSA9IGRtYWJ1ZmZzX2RuYW1l
LAo+ID4gICAgICAgLmRfcmVsZWFzZSA9IGRtYV9idWZfcmVsZWFzZSwKPiA+IEBAIC00MTMsNiAr
NDI1LDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9zaG93X2ZkaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sIHN0cnVjdCBmaWxlICpmaWxlKQo+ID4gICB9Cj4gPgo+ID4gICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfYnVmX2ZvcHMgPSB7Cj4gPiArICAgICAucmVsZWFzZSAg
ICAgICAgPSBkbWFfYnVmX2ZpbGVfcmVsZWFzZSwKPiA+ICAgICAgIC5tbWFwICAgICAgICAgICA9
IGRtYV9idWZfbW1hcF9pbnRlcm5hbCwKPiA+ICAgICAgIC5sbHNlZWsgICAgICAgICA9IGRtYV9i
dWZfbGxzZWVrLAo+ID4gICAgICAgLnBvbGwgICAgICAgICAgID0gZG1hX2J1Zl9wb2xsLAo+CgpC
ZXN0LApTdW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
