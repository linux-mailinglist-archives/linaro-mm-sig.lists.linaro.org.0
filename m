Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EDF16EC72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 18:24:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F244B6013C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 17:24:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E146B603C1; Tue, 25 Feb 2020 17:24:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4580F60E41;
	Tue, 25 Feb 2020 17:24:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 503376013C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 17:24:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3171460E41; Tue, 25 Feb 2020 17:24:02 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id C9EF86013C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 17:23:58 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z3so15729809wru.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 09:23:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Q0WzriZsFeVLIxkq9afAMphlm+5DTXv3n7yz9mov8+A=;
 b=i10d7vpMucNkd6QN1TlwWWGL/xrHTs1f5748IPBtp7BQGBjLrmVTWUSVMUf/PmeXxC
 v7m/VLIr918VYFSp08tATknhFw1fWUChDEWWTTiIqYYzbwPkxasBI+SCT4FdFUOfquvZ
 YjPM1F9MWgvLUjotCFfGcTP68eHzWxE3Zb6V8B/StUhxJhZK59gW88EC/SkuY9N6VxOE
 bWd63eVMh4Tgihk6/XiR+x3+zNgFHB/2+2mMU6aOBqJ5lu7vBsTaKuHFcoSj4t3D3AR3
 cudCPCBsDGk7zEemPY2zbPMsM3uOWMvbgdnDQtXRGWeCZJr9g6IKCJV9pYvDon20pGLc
 9ESw==
X-Gm-Message-State: APjAAAVAuAe7nWsu4vYyBvcCgNKRdAnADlT6NPETCtLlksOCVVEXAHrf
 MBNySEkuC6h/aAGeCIcixQMIHw==
X-Google-Smtp-Source: APXvYqyueg8icESGjchlrOzRrpEI++U3QqkMRcs7pu5XOQQNwkG3Qkqb4n0mrz6qn+aH/BHeXNmz5A==
X-Received: by 2002:adf:f6d0:: with SMTP id y16mr221613wrp.140.1582651437912; 
 Tue, 25 Feb 2020 09:23:57 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z133sm5020423wmb.7.2020.02.25.09.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:23:57 -0800 (PST)
Date: Tue, 25 Feb 2020 18:23:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200225172355.GO2363188@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <B737F1D5-292E-4FE2-89A5-6EF72CB3EED1@amd.com>
 <7a2eb42a-2dd9-4303-3947-6bbb4de7a888@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a2eb42a-2dd9-4303-3947-6bbb4de7a888@amd.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix missing excl fence waiting
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

T24gU3VuLCBGZWIgMjMsIDIwMjAgYXQgMDE6MDQ6MTVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMy4wMi4yMCB1bSAxMjo1NiBzY2hyaWViIFBhbiwgWGluaHVpOgo+ID4g
SWYgc2hhcmVkIGZlbmNlIGxpc3QgaXMgbm90IGVtcHR5LCBldmVuIHdlIHdhbnQgdG8gdGVzdCBh
bGwgZmVuY2VzLCBleGNsIGZlbmNlIGlzIGlnbm9yZWQuCj4gPiBUaGF0IGlzIGFidmlvdXNseSB3
cm9uZywgc28gZml4IGl0Lgo+IAo+IFllYWggdGhhdCBpcyBhIGtub3duIGlzc3VlIGFuZCBJIGNv
bXBsZXRlbHkgYWdyZWUgd2l0aCB5b3UsIGJ1dCBvdGhlcgo+IGRpc2FncmVlLgo+IAo+IFNlZSB0
aGUgc2hhcmVkIGZlbmNlcyBhcmUgbWVhbnQgdG8gZGVwZW5kIG9uIHRoZSBleGNsdXNpdmUgZmVu
Y2UuIFNvIGFsbAo+IHNoYXJlZCBmZW5jZXMgbXVzdCBmaW5pc2ggb25seSBhZnRlciB0aGUgZXhj
bHVzaXZlIG9uZSBoYXMgZmluaXNoZWQgYXMgd2VsbC4KPiAKPiBUaGUgcHJvYmxlbSBub3cgaXMg
dGhhdCBmb3IgZXJyb3IgaGFuZGxpbmcgdGhpcyBpc24ndCBuZWNlc3NhcnkgdHJ1ZS4gSW4KPiBv
dGhlciB3b3JkcyB3aGVuIGEgc2hhcmVkIGZlbmNlIGNvbXBsZXRlcyB3aXRoIGFuIGVycm9yIGl0
IGlzIHBlcmZlY3RseQo+IHBvc3NpYmxlIHRoYXQgaGUgZG9lcyB0aGlzIGJlZm9yZSB0aGUgZXhj
bHVzaXZlIGZlbmNlIGlzIGZpbmlzaGVkLgo+IAo+IEknbSB0cnlpbmcgdG8gY29udmluY2UgRGFu
aWVsIHRoYXQgdGhpcyBpcyBhIHByb2JsZW0gZm9yIHllYXJzIDopCgpJIHRob3VnaHQgdGhlIGNv
bnNlbnN1cyBpcyB0aGF0IHJlYXNvbmFibGUgZ3B1IHNjaGVkdWxlcnMgYW5kIGdwdSByZXNldApj
b2RlIHNob3VsZCB0cnkgdG8gbWFrZSByZWFsbHksIHJlYWxseSBzdXJlIGl0IG9ubHkgY29tcGxl
dGVzIHN0dWZmIGluCnNlcXVlbmNlPyBUaGF0J3MgYXQgbGVhc3QgbXkgdGFrZSBhd2F5IGZyb20g
dGhlIHN5bmNvYmogdGltZWxpbmUKZGlzY3Vzc2lvbiwgd2hlcmUgeW91IGNvbnZpbmNlZCBtZSB3
ZSBzaG91bGRuJ3QganVzdCBjcmFzaCZidXJuLgoKSSB0aGluayBhcyBsb25nIGFzIHlvdXIgc2No
ZWR1bGVyIGlzIGNvbXBldGVudCBhbmQgeW91ciBncHUgcmVzZXQgdHJpZXMgdG8KbGltaXQgZGFt
YWdlIChpLmUuIGtpbGwgb2ZmZW5kaW5nIGN0eCB0ZXJtaW5hbGx5LCBtYXJrIGV2ZXJ5dGhpbmcg
ZWxzZQp0aGF0IGRpZG4ndCBjb21wbGV0ZSBmb3IgcmUtcnVubmluZykgd2Ugc2hvdWxkIGVuZCB1
cCB3aXRoIGV2ZXJ5dGhpbmcKY29tcGxldGluZyBpbiBzZXF1ZW5jZS4gSSBndWVzcyBpZiB5b3Ug
ZG8ga2lsbCBhIGxvdCBtb3JlIHN0dWZmLCB0aGVuCnlvdSdkIGhhdmUgdG8gcHVzaCB0aGVzZSB0
aHJvdWdoIHlvdXIgc2NoZWR1bGVyIGFzIGR1bW15IGpvYnMsIGkuZS4gdGhleQpzdGlsbCB3YWl0
IGZvciB0aGVpciBkZXBlbmRlbmNpZXMsIGJ1dCB0aGVuIGFsbCB0aGV5IGRvIGlzIHNldCB0aGUK
ZG1hX2ZlbmNlIGVycm9yIGFuZCBjb21wbGV0ZSBpdC4gTWF5YmUgc29tZXRoaW5nIHRoZSBjb21t
b24gc2NoZWR1bGVyCmNvdWxkIGRvLgotRGFuaWVsCgo+IAo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFu
Lgo+IAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiB4aW5odWkgcGFuIDx4aW5odWkucGFuQGFtZC5j
b20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA5ICsrKysrLS0t
LQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYwo+ID4gaW5kZXggNDI2NGU2NDc4OGM0Li40NGRjNjRjNTQ3YzYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ID4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiA+IEBAIC02MzIsMTQgKzYzMiwxNCBAQCBzdGF0aWMg
aW5saW5lIGludCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShzdHJ1Y3QgZG1hX2ZlbmNl
ICpwYXNzZWRfZmVuY2UpCj4gPiAgICAqLwo+ID4gICBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWRfcmN1KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxsKQo+ID4gICB7Cj4gPiAt
CXVuc2lnbmVkIHNlcSwgc2hhcmVkX2NvdW50Owo+ID4gKwl1bnNpZ25lZCBpbnQgc2VxLCBzaGFy
ZWRfY291bnQsIGxlZnQ7Cj4gPiAgIAlpbnQgcmV0Owo+ID4gICAJcmN1X3JlYWRfbG9jaygpOwo+
ID4gICByZXRyeToKPiA+ICAgCXJldCA9IHRydWU7Cj4gPiAgIAlzaGFyZWRfY291bnQgPSAwOwo+
ID4gLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Cj4gPiArCWxlZnQgPSBz
ZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Cj4gPiAgIAlpZiAodGVzdF9hbGwp
IHsKPiA+ICAgCQl1bnNpZ25lZCBpOwo+ID4gQEAgLTY0Nyw3ICs2NDcsNyBAQCBib29sIGRtYV9y
ZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxs
KQo+ID4gICAJCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqID0gcmN1X2RlcmVmZXJlbmNlKG9i
ai0+ZmVuY2UpOwo+ID4gICAJCWlmIChmb2JqKQo+ID4gLQkJCXNoYXJlZF9jb3VudCA9IGZvYmot
PnNoYXJlZF9jb3VudDsKPiA+ICsJCQlsZWZ0ID0gc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVk
X2NvdW50Owo+ID4gICAJCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewo+ID4g
ICAJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFy
ZWRbaV0pOwo+ID4gQEAgLTY1NywxMyArNjU3LDE0IEBAIGJvb2wgZG1hX3Jlc3ZfdGVzdF9zaWdu
YWxlZF9yY3Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgdGVzdF9hbGwpCj4gPiAgIAkJCQln
b3RvIHJldHJ5Owo+ID4gICAJCQllbHNlIGlmICghcmV0KQo+ID4gICAJCQkJYnJlYWs7Cj4gPiAr
CQkJbGVmdC0tOwo+ID4gICAJCX0KPiA+ICAgCQlpZiAocmVhZF9zZXFjb3VudF9yZXRyeSgmb2Jq
LT5zZXEsIHNlcSkpCj4gPiAgIAkJCWdvdG8gcmV0cnk7Cj4gPiAgIAl9Cj4gPiAtCWlmICghc2hh
cmVkX2NvdW50KSB7Cj4gPiArCWlmICghbGVmdCkgewo+ID4gICAJCXN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlX2V4Y2wgPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZV9leGNsKTsKPiA+ICAgCQlp
ZiAoZmVuY2VfZXhjbCkgewo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
