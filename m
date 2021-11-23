Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF945A58F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D99662C9A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0791C60BE6; Tue, 23 Nov 2021 14:23:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 112FE62D26;
	Tue, 23 Nov 2021 14:23:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BA75362C9E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:23:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ADAA562D26; Tue, 23 Nov 2021 14:22:52 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by lists.linaro.org (Postfix) with ESMTPS id 0904163176
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:22:48 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id u3so91363498lfl.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ZMeCrLa15OccbLKstH+rkvmxcTzmqdGm6G4k7JN2u+g=;
 b=cEA/8Yj3ZxwMyab/D+fVwK4RTjrmX0j2GCb4Ssn+y+V7q/YU0rEjTXnDzuzFi7aGjz
 ekpnz5cGZQGxa1KleqE8XEKEhsyGaaluJ6taCNpiBlBMGrUVXvCF22jiOzJJ2+BOrv5D
 Do+tRFepLNOKwqqiCPVRmGiGlDFdYlh6oZg7fcOj+76JxN9WXF3XbUBsGNQLQ1dJFAy6
 lXbi9+siENQKlhnoEJCsUeiUJQTg0mNKpQQ++7CPGn+i1v3kMyXQ2mFf8QMSL4g6HA6w
 mkkrpfN6Ja+mC6e8DXi/MoR01glt/rrPyMNgXCwObvjGTTi5haF48feknRjPjYJOl/iF
 TEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZMeCrLa15OccbLKstH+rkvmxcTzmqdGm6G4k7JN2u+g=;
 b=ZEUQi9/oc7HPXEEhcBguCRyA0WWgAkKNlG1ra/tW0h6OwaxtdOwl2j53aga3ufKzt0
 xv+V7Z82Bvzp4FSlVhAzUKdvtdYU1KfgiiV32DLyeiiWjOjCHsjo8MnWUXDhUROlKGNH
 k+8aPQck4a4E/aiij7inBlPmPOs7DUguHgxAvHmROatyjhjpCuwzSKCy14WST0yMKOpN
 Py2QejK0IOQqpFg+9soOREM2FGcQrRH19u6EPRT0huv+j413U31DU4/bburlSrvH71rS
 kiGm2rxeldsLW25RlSVYnCg5kHQR9lmIhwViWdIAaNdzVXoC9pkA0Qxoyd6ntHjgHJrk
 Hm1A==
X-Gm-Message-State: AOAM531ij9PlURMkhh/ri/6pWhmpnne4dLec97fvDvOrRjLApOVaT2sC
 rY85K4Zosdaf4JzkKZZzCH4=
X-Google-Smtp-Source: ABdhPJy0vZYWPE8GVIFIH55E4+lUDNDWf9juiW+Ga+3y1umlsbNJgY0+I6R8hvXP1yOqqlPwoIyrTQ==
X-Received: by 2002:a05:6512:519:: with SMTP id
 o25mr5136057lfb.422.1637677366940; 
 Tue, 23 Nov 2021 06:22:46 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id v198sm1304911lfa.89.2021.11.23.06.22.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Nov 2021 06:22:46 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>, andy.shevchenko@gmail.com,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, ldewangan@nvidia.com, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, sumit.semwal@linaro.org, thierry.reding@gmail.com
References: <1637328734-20576-1-git-send-email-akhilrajeev@nvidia.com>
 <1637651753-5067-1-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <eebf20ea-6a7f-1120-5ad8-b6dc1f9935e6@gmail.com>
Date: Tue, 23 Nov 2021 17:22:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1637651753-5067-1-git-send-email-akhilrajeev@nvidia.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] i2c: tegra: Add ACPI support
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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

MjMuMTEuMjAyMSAxMDoxNSwgQWtoaWwgUiDQv9C40YjQtdGCOgo+IEFkZCBzdXBwb3J0IGZvciBB
Q1BJIGJhc2VkIGRldmljZSByZWdpc3RyYXRpb24gc28gdGhhdCB0aGUgZHJpdmVyCj4gY2FuIGJl
IGFsc28gZW5hYmxlZCB0aHJvdWdoIEFDUEkgdGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWto
aWwgUiA8YWtoaWxyYWplZXZAbnZpZGlhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy10ZWdyYS5jIHwgNTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy10ZWdyYS5jIGIvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy10ZWdyYS5jCj4gaW5kZXggYzg4MzA0NC4uOGU0Nzg4OSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3JhLmMKPiArKysgYi9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXRlZ3JhLmMKPiBAQCAtNiw2ICs2LDcgQEAKPiAgICogQXV0aG9yOiBDb2xp
biBDcm9zcyA8Y2Nyb3NzQGFuZHJvaWQuY29tPgo+ICAgKi8KPiAgCj4gKyNpbmNsdWRlIDxsaW51
eC9hY3BpLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvY2xrLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+IEBAIC02MDgsNiArNjA5LDcg
QEAgc3RhdGljIGludCB0ZWdyYV9pMmNfd2FpdF9mb3JfY29uZmlnX2xvYWQoc3RydWN0IHRlZ3Jh
X2kyY19kZXYgKmkyY19kZXYpCj4gIHN0YXRpYyBpbnQgdGVncmFfaTJjX2luaXQoc3RydWN0IHRl
Z3JhX2kyY19kZXYgKmkyY19kZXYpCj4gIHsKPiAgCXUzMiB2YWwsIGNsa19kaXZpc29yLCBjbGtf
bXVsdGlwbGllciwgdHN1X3RoZCwgdGxvdywgdGhpZ2gsIG5vbl9oc19tb2RlOwo+ICsJYWNwaV9o
YW5kbGUgaGFuZGxlID0gQUNQSV9IQU5ETEUoaTJjX2Rldi0+ZGV2KTsKPiAgCWludCBlcnI7Cj4g
IAo+ICAJLyoKPiBAQCAtNjE4LDcgKzYyMCwxMSBAQCBzdGF0aWMgaW50IHRlZ3JhX2kyY19pbml0
KHN0cnVjdCB0ZWdyYV9pMmNfZGV2ICppMmNfZGV2KQo+ICAJICogZW1pdCBhIG5vaXN5IHdhcm5p
bmcgb24gZXJyb3IsIHdoaWNoIHdvbid0IHN0YXkgdW5ub3RpY2VkIGFuZAo+ICAJICogd29uJ3Qg
aG9zZSBtYWNoaW5lIGVudGlyZWx5Lgo+ICAJICovCj4gLQllcnIgPSByZXNldF9jb250cm9sX3Jl
c2V0KGkyY19kZXYtPnJzdCk7Cj4gKwlpZiAoaGFuZGxlICYmIGFjcGlfaGFzX21ldGhvZChoYW5k
bGUsICJfUlNUIikpCgpXaGljaCBTb0MgdmVyc2lvbiBkb2Vzbid0IGhhdmUgIl9SU1QiIG1ldGhv
ZD8gSWYgbmVpdGhlciwgdGhlbiBwbGVhc2UKcmVtb3ZlIHRoaXMgY2hlY2suCgo+ICsJCWVyciA9
IChhY3BpX2V2YWx1YXRlX29iamVjdChoYW5kbGUsICJfUlNUIiwgTlVMTCwgTlVMTCkpOwoKUGxl
YXNlIHJlbW92ZSBwYXJlbnMgYXJvdW5kIGFjcGlfZXZhbHVhdGVfb2JqZWN0KCkuIFdoeSB5b3Ug
YWRkZWQgdGhlbT8KCj4gKwllbHNlCj4gKwkJZXJyID0gcmVzZXRfY29udHJvbF9yZXNldChpMmNf
ZGV2LT5yc3QpOwo+ICsKPiAgCVdBUk5fT05fT05DRShlcnIpOwo+ICAKPiAgCWlmIChpMmNfZGV2
LT5pc19kdmMpCj4gQEAgLTE2MjcsMTIgKzE2MzMsMTIgQEAgc3RhdGljIHZvaWQgdGVncmFfaTJj
X3BhcnNlX2R0KHN0cnVjdCB0ZWdyYV9pMmNfZGV2ICppMmNfZGV2KQo+ICAJYm9vbCBtdWx0aV9t
b2RlOwo+ICAJaW50IGVycjsKPiAgCj4gLQllcnIgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwg
ImNsb2NrLWZyZXF1ZW5jeSIsCj4gLQkJCQkgICAmaTJjX2Rldi0+YnVzX2Nsa19yYXRlKTsKPiAr
CWVyciA9IGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihpMmNfZGV2LT5kZXYsICJjbG9jay1mcmVx
dWVuY3kiLAo+ICsJCQkJICAgICAgICZpMmNfZGV2LT5idXNfY2xrX3JhdGUpOwo+ICAJaWYgKGVy
cikKPiAgCQlpMmNfZGV2LT5idXNfY2xrX3JhdGUgPSBJMkNfTUFYX1NUQU5EQVJEX01PREVfRlJF
UTsKPiAgCj4gLQltdWx0aV9tb2RlID0gb2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLCAibXVsdGkt
bWFzdGVyIik7Cj4gKwltdWx0aV9tb2RlID0gZGV2aWNlX3Byb3BlcnR5X3JlYWRfYm9vbChpMmNf
ZGV2LT5kZXYsICJtdWx0aS1tYXN0ZXIiKTsKPiAgCWkyY19kZXYtPm11bHRpbWFzdGVyX21vZGUg
PSBtdWx0aV9tb2RlOwo+ICAKPiAgCWlmIChvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgIm52
aWRpYSx0ZWdyYTIwLWkyYy1kdmMiKSkKPiBAQCAtMTY0MiwxMCArMTY0OCwyNSBAQCBzdGF0aWMg
dm9pZCB0ZWdyYV9pMmNfcGFyc2VfZHQoc3RydWN0IHRlZ3JhX2kyY19kZXYgKmkyY19kZXYpCj4g
IAkJaTJjX2Rldi0+aXNfdmkgPSB0cnVlOwo+ICB9CkhvdyBhcmUgeW91IGdvaW5nIHRvIGRpZmZl
cmVudGlhdGUgdGhlIFZJIEkyQyBmcm9tIGEgbm9uLVZJPyBUaGlzCmRvZXNuJ3QgbG9vayByaWdo
dC4KCgo+ICAKPiArc3RhdGljIGludCB0ZWdyYV9pMmNfaW5pdF9yZXNldChzdHJ1Y3QgdGVncmFf
aTJjX2RldiAqaTJjX2RldikKPiArewo+ICsJaWYgKGhhc19hY3BpX2NvbXBhbmlvbihpMmNfZGV2
LT5kZXYpKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWkyY19kZXYtPnJzdCA9IGRldm1fcmVzZXRf
Y29udHJvbF9nZXRfZXhjbHVzaXZlKGkyY19kZXYtPmRldiwgImkyYyIpOwo+ICsJaWYgKElTX0VS
UihpMmNfZGV2LT5yc3QpKQo+ICsJCXJldHVybiBQVFJfRVJSKGkyY19kZXYtPnJzdCk7Cj4gKwo+
ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgdGVncmFfaTJjX2luaXRfY2xvY2tz
KHN0cnVjdCB0ZWdyYV9pMmNfZGV2ICppMmNfZGV2KQo+ICB7Cj4gIAlpbnQgZXJyOwo+ICAKPiAr
CWlmIChoYXNfYWNwaV9jb21wYW5pb24oaTJjX2Rldi0+ZGV2KSkKPiArCQlyZXR1cm4gMDsKPiAr
Cj4gIAlpMmNfZGV2LT5jbG9ja3NbaTJjX2Rldi0+bmNsb2NrcysrXS5pZCA9ICJkaXYtY2xrIjsK
PiAgCj4gIAlpZiAoaTJjX2Rldi0+aHcgPT0gJnRlZ3JhMjBfaTJjX2h3IHx8IGkyY19kZXYtPmh3
ID09ICZ0ZWdyYTMwX2kyY19odykKPiBAQCAtMTcyMCw3ICsxNzQxLDcgQEAgc3RhdGljIGludCB0
ZWdyYV9pMmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWluaXRfY29t
cGxldGlvbigmaTJjX2Rldi0+bXNnX2NvbXBsZXRlKTsKPiAgCWluaXRfY29tcGxldGlvbigmaTJj
X2Rldi0+ZG1hX2NvbXBsZXRlKTsKPiAgCj4gLQlpMmNfZGV2LT5odyA9IG9mX2RldmljZV9nZXRf
bWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKPiArCWkyY19kZXYtPmh3ID0gZGV2aWNlX2dldF9tYXRj
aF9kYXRhKCZwZGV2LT5kZXYpOwo+ICAJaTJjX2Rldi0+Y29udF9pZCA9IHBkZXYtPmlkOwo+ICAJ
aTJjX2Rldi0+ZGV2ID0gJnBkZXYtPmRldjsKPiAgCj4gQEAgLTE3NDYsMTUgKzE3NjcsMTMgQEAg
c3RhdGljIGludCB0ZWdyYV9pMmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCWlmIChlcnIpCj4gIAkJcmV0dXJuIGVycjsKPiAgCj4gLQlpMmNfZGV2LT5yc3QgPSBkZXZt
X3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShpMmNfZGV2LT5kZXYsICJpMmMiKTsKPiAtCWlm
IChJU19FUlIoaTJjX2Rldi0+cnN0KSkgewo+IC0JCWRldl9lcnJfcHJvYmUoaTJjX2Rldi0+ZGV2
LCBQVFJfRVJSKGkyY19kZXYtPnJzdCksCj4gLQkJCSAgICAgICJmYWlsZWQgdG8gZ2V0IHJlc2V0
IGNvbnRyb2xcbiIpOwo+IC0JCXJldHVybiBQVFJfRVJSKGkyY19kZXYtPnJzdCk7Cj4gLQl9Cj4g
LQo+ICAJdGVncmFfaTJjX3BhcnNlX2R0KGkyY19kZXYpOwo+ICAKPiArCWVyciA9IHRlZ3JhX2ky
Y19pbml0X3Jlc2V0KGkyY19kZXYpOwo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZShpMmNfZGV2LT5kZXYsIGVyciwKPiArCQkJCSAgICAgICJmYWlsZWQgdG8gZ2V0IHJlc2V0
IGNvbnRyb2xcbiIpOwoKVGhpcyBpcyBpbmNvbnNpc3RlbnQgd2l0aCB0ZWdyYV9pMmNfaW5pdF9j
bG9ja3MoKSB3aGljaCByZXR1cm5zIGVycgpkaXJlY3RseSBhbmQgcHJpbnRzIGVycm9yIG1lc3Nh
Z2Ugd2l0aGluIHRoZSBmdW5jdGlvbi4gUGxlYXNlIG1vdmUgdGhlCmRldl9lcnJfcHJvYmUoKSBp
bnRvIHRlZ3JhX2kyY19pbml0X3Jlc2V0KCkgdG8gbWFrZSBpdCBjb25zaXN0ZW50LCBsaWtlCkkg
c3VnZ2VzdGVkIGJlZm9yZS4KClBsZWFzZSBkb24ndCByZXBseSB3aXRoIGEgbmV3IHZlcnNpb24g
b2YgdGhlIHBhdGNoIHRvIHRoZSBvbGQgdGhyZWFkLAphbHdheXMgc2VuZCBhIG5ldyB2ZXJzaW9u
IHNlcGFyYXRlbHkuIE90aGVyd2lzZSBpdCdzIG1vcmUgZGlmZmljdWx0IHRvCmZvbGxvdyBwYXRj
aGVzLgoKTGFzdGx5LCBlYWNoIG5ldyB2ZXJzaW9uIG9mIGEgcGF0Y2ggbXVzdCBjb250YWluIGNo
YW5nZWxvZy4gSSBkb24ndCBzZWUKY2hhbmdlbG9nIGhlcmUsIHBsZWFzZSBhZGQgaXQgdG8gdjMg
YWZ0ZXIgdGhlICIgLS0tIiBzZXBhcmF0b3Igb2YgdGhlCmNvbW1pdCBtZXNzYWdlLiBUaGFua3Mh
CgpFeGFtcGxlOgoKIENvbW1pdCBtZXNzYWdlLgoKIFNpZ25lZC1vZmYtYnk6IEFraGlsIFIgPGFr
aGlscmFqZWV2QG52aWRpYS5jb20+CiAtLS0KICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3Jh
LmMgfCA1MgorKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KICAxIGZp
bGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpDaGFuZ2Vsb2c6
Cgp2MzogYmxhLWJsYS1ibGEKCnYyOiBibGEtYmxhLWJsYQoKZGlmZiAuLi4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
