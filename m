Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A55ACE01C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2019 12:14:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5623618D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2019 10:14:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B85D861947; Tue, 22 Oct 2019 10:14:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EF22617BF;
	Tue, 22 Oct 2019 10:13:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C2B66065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2019 10:13:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A1D9617BF; Tue, 22 Oct 2019 10:13:52 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 17A5A6065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2019 10:13:51 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z9so17348671wrl.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2019 03:13:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pK9/rY/JZgPtRY4Q4j81Qucr1STrAEbOo1Ua7jFI9zM=;
 b=FR3e8VL8kkHks1PfGOLREFojsYlo1uq+7fVAuG+fdgcsVQ4I3DpCLcCpbWGl18gB1Q
 s0tdpO0udvqLsZGcEvL+dJIRbLDsD2KhkixxcxS+RuvvhfNoJRM2eiX8b/CA6/N/qXeo
 Jq0aUhHJtHaQmQW2BU5My+qk3Ax9nvSbZnPjOzB5tuvDwjRxqsy142mfL1yWRERxIZfY
 KEwCA3uFkYJl+FyCrcQZt8vApK2TEGF89NG3cdoZl44lPsWgzB1CJVuBBcJNTTwlltnH
 Pe/OTo+vst0NfmJkCkp0OI0qxrS+2ZRNWmHzEvL+vXdLbvUODDD4mBG1w142XQoZKlXK
 ZlbA==
X-Gm-Message-State: APjAAAWiKcQLX+NoA602H08/5DNMs7quqmICT+EUnsjfPiAl/V5/iMwM
 7YnNv97GSiDsVC2oa8GvCr63bQ==
X-Google-Smtp-Source: APXvYqw6ghqyuE8x3VkynzKoxx3WrxUDpro08Ye4Q9v5HIS3EGVk6GwJaisS9N/lXuI15PCZStok+g==
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr2005783wrv.99.1571739230027;
 Tue, 22 Oct 2019 03:13:50 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t13sm24712080wra.70.2019.10.22.03.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 03:13:49 -0700 (PDT)
Date: Tue, 22 Oct 2019 12:13:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20191022101347.GJ11828@phenom.ffwll.local>
References: <20191021111524.14793-1-christian.koenig@amd.com>
 <20191021111524.14793-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021111524.14793-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] dma-buf: stop using the
	dmabuf->lock so much
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

T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMDE6MTU6MjJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBUaGUgYXR0YWNobWVudCBsaXN0IGlzIG5vdyBwcm90ZWN0ZWQgYnkgdGhlIGRt
YV9yZXN2IG9iamVjdC4KPiBTbyB3ZSBjYW4gZHJvcCBob2xkaW5nIHRoaXMgbG9jayB0byBhbGxv
dyBjb25jdXJyZW50IGF0dGFjaAo+IGFuZCBkZXRhY2ggb3BlcmF0aW9ucy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNiAtLS0tLS0tLS0tLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCA3NTNi
ZTg0YjVmZDYuLmM3MzZlNjdhZTFhMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC02ODUsOCArNjg1
LDYgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgZGV2aWNlICpkZXYsCj4gIAlhdHRhY2gtPmRtYWJ1ZiA9IGRtYWJ1ZjsKPiAgCWF0dGFjaC0+
ZHluYW1pY19tYXBwaW5nID0gZHluYW1pY19tYXBwaW5nOwo+ICAKPiAtCW11dGV4X2xvY2soJmRt
YWJ1Zi0+bG9jayk7Cj4gLQo+ICAJaWYgKGRtYWJ1Zi0+b3BzLT5hdHRhY2gpIHsKPiAgCQlyZXQg
PSBkbWFidWYtPm9wcy0+YXR0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKPiAgCQlpZiAocmV0KQo+IEBA
IC02OTYsOCArNjk0LDYgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAlsaXN0X2FkZCgmYXR0YWNoLT5ub2RlLCAm
ZG1hYnVmLT5hdHRhY2htZW50cyk7Cj4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsK
PiAgCj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7CgpUaGlzIGNoYW5nZXMgdGhlIHJ1
bGVzLCBub3cgLT5hdHRhY2gvLT5kZXRhY2ggYW5kIHRoZSBsaXN0IG1hbmlwdWxhdGlvbgphcmVu
J3QgZG9uZSB1bmRlciB0aGUgc2FtZSBsb2NrIGFueW1vcmUuIEkgZG9uJ3QgdGhpbmsgdGhpcyBt
YXR0ZXJzLCBidXQKaW1vIGdvb2QgdG8gbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCgo+
IC0KPiAgCS8qIFdoZW4gZWl0aGVyIHRoZSBpbXBvcnRlciBvciB0aGUgZXhwb3J0ZXIgY2FuJ3Qg
aGFuZGxlIGR5bmFtaWMKPiAgCSAqIG1hcHBpbmdzIHdlIGNhY2hlIHRoZSBtYXBwaW5nIGhlcmUg
dG8gYXZvaWQgaXNzdWVzIHdpdGggdGhlCj4gIAkgKiByZXNlcnZhdGlvbiBvYmplY3QgbG9jay4K
PiBAQCAtNzI2LDcgKzcyMiw2IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9i
dWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LAo+ICAKPiAgZXJyX2F0dGFjaDoKPiAgCWtm
cmVlKGF0dGFjaCk7Cj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAlyZXR1cm4g
RVJSX1BUUihyZXQpOwo+ICAKPiAgZXJyX3VubG9jazoKPiBAQCAtNzc2LDE0ICs3NzEsMTIgQEAg
dm9pZCBkbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpCj4gIAkJCWRtYV9yZXN2X3VubG9jayhhdHRhY2gtPmRtYWJ1
Zi0+cmVzdik7Cj4gIAl9Cj4gIAo+IC0JbXV0ZXhfbG9jaygmZG1hYnVmLT5sb2NrKTsKPiAgCWRt
YV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsKPiAgCWxpc3RfZGVsKCZhdHRhY2gtPm5v
ZGUpOwo+ICAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7Cj4gIAlpZiAoZG1hYnVmLT5v
cHMtPmRldGFjaCkKPiAgCQlkbWFidWYtPm9wcy0+ZGV0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKPiAg
Cj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAlrZnJlZShhdHRhY2gpOwo+ICB9
Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfZGV0YWNoKTsKPiBAQCAtMTI0NywxNCArMTI0
MCw2IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywg
dm9pZCAqdW51c2VkKQo+ICAJCSAgICJzaXplIiwgImZsYWdzIiwgIm1vZGUiLCAiY291bnQiLCAi
aW5vIik7Cj4gIAo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShidWZfb2JqLCAmZGJfbGlzdC5oZWFk
LCBsaXN0X25vZGUpIHsKPiAtCQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmJ1Zl9v
YmotPmxvY2spOwo+IC0KPiAtCQlpZiAocmV0KSB7Cj4gLQkJCXNlcV9wdXRzKHMsCj4gLQkJCQkg
Ilx0RVJST1IgbG9ja2luZyBidWZmZXIgb2JqZWN0OiBza2lwcGluZ1xuIik7Cj4gLQkJCWNvbnRp
bnVlOwo+IC0JCX0KPiAtCgpUaGlzIHdpbGwgbWlsZGx5IGNvbmZsaWN0IHdpdGggdGhlIHJldmlz
ZWQgdmVyc2lvbiBvZiBwYXRjaCAxIChzaW5jZSB0aGUKZG1hX3Jlc3ZfbG9jayBuZWVkcyB0byBi
ZSBoZXJlKS4KCldpdGggYm90aCBuaXRzIGFkZHJlc3NlZDoKClJldmlld2VkLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKPiAgCQlzZXFfcHJpbnRmKHMsICIlMDh6
dVx0JTA4eFx0JTA4eFx0JTA4bGRcdCVzXHQlMDhsdVx0JXNcbiIsCj4gIAkJCQlidWZfb2JqLT5z
aXplLAo+ICAJCQkJYnVmX29iai0+ZmlsZS0+Zl9mbGFncywgYnVmX29iai0+ZmlsZS0+Zl9tb2Rl
LAo+IEBAIC0xMzA3LDcgKzEyOTIsNiBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhz
dHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgCj4gIAkJY291bnQrKzsKPiAgCQlz
aXplICs9IGJ1Zl9vYmotPnNpemU7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZidWZfb2JqLT5sb2NrKTsK
PiAgCX0KPiAgCj4gIAlzZXFfcHJpbnRmKHMsICJcblRvdGFsICVkIG9iamVjdHMsICV6dSBieXRl
c1xuIiwgY291bnQsIHNpemUpOwo+IC0tIAo+IDIuMTcuMQo+IAoKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
