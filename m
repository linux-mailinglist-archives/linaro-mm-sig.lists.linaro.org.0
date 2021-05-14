Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 167D83919EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:20:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41EDF614CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:20:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A72D613C4; Wed, 26 May 2021 14:20:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2385C6187E;
	Wed, 26 May 2021 14:20:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0C7C460A9F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 11:02:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0339460B38; Fri, 14 May 2021 11:02:54 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by lists.linaro.org (Postfix) with ESMTPS id DD50C60B20
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 11:02:51 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id 69so11392243plc.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 14 May 2021 04:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OOicQDUMq21UM0Ud7C95oVsNtJIeM7ZkfF7dwnsXfEg=;
 b=nQlQZxXGeUQ4gP81dPpiXkTEbHY/alLIvR5F6WhN+zlLpm6mPmYEsPD7dMTThV4qOy
 Lu3K3rLeKTHEacia78TX/Hdt2rBlb4lOQqAsQ4b+wijc3Ww/kT7uizjRXhS+P3q48+Cp
 dtLuqZEn2UJf5xt9LDMXNbeKj4hGfwbdnRWffqbp8Ronq3HXVKlM5rEOh4xRnVKzG/zN
 /6W2u1Iv8g3qfhH4mzed9kdG1ndtMCoaW3jTxXhHxv+Jlhmuw0dhqZE/u4zaQVk9kOHT
 1t6MtfHHeQ7ruu8j3Q3J+ITWWWkwWDS+Fn3itNosCln8R5qCcZ7J9HHiSs1Y0XgijcV+
 dRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OOicQDUMq21UM0Ud7C95oVsNtJIeM7ZkfF7dwnsXfEg=;
 b=kN5+ZejkHFHE5bkeag9/fdGIJhx/DZ3DFV7h+1hIKocpbPzxEmK7x2Z9Is6dyXdBmy
 NkTMDJnuZ/QDU9HfdrERKLr++4/DZ0/AO3s2xaSZZD7+9MFf/VCSKIA8JXOdjMoQncRu
 WylvSj7Tn4G3/i8z0V0dAtuYrpReAKaF/SCRpqTQKczTwuZVoJXR7PNVlQG8r7LNAOz+
 qvoTZ9qre6E7hX6jiiyB3Q9Rn9Xi6gIN9qh6khmZYXfvoUGljHYuBVTss1lI0LLNrlc1
 3lTaxMVbZKmQAcvNIctjNnLjpnrO0SRq5gbv8lcd1MiHQ36Z7Wh7RvIMdX7twWkQ5OIU
 DC1w==
X-Gm-Message-State: AOAM5303OV3AIy86ymBa+lTMXwghHz/rJy6IR/qnKRWWNyfROcIyrAKz
 Es9j/sOBNnyRD0hEU0QUFTA=
X-Google-Smtp-Source: ABdhPJx0Ynnvv8lCfWgGxjHnaXYOCPih7/zTgEt/rhl7yOCbB0MgfG7zmIHpo+UWX7GF7sX1k5pYfA==
X-Received: by 2002:a17:90a:4092:: with SMTP id
 l18mr10534045pjg.35.1620990170835; 
 Fri, 14 May 2021 04:02:50 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.103.165])
 by smtp.gmail.com with ESMTPSA id 202sm4193402pgg.59.2021.05.14.04.02.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 May 2021 04:02:50 -0700 (PDT)
From: dillon.minfei@gmail.com
To: patrice.chotard@foss.st.com, pierre-yves.mordret@foss.st.com,
 alain.volmat@foss.st.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com, mturquette@baylibre.com
Date: Fri, 14 May 2021 19:02:31 +0800
Message-Id: <1620990152-19255-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
References: <1620990152-19255-1-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 3/4] clk: stm32: Fix stm32f429's ltdc driver
 hang in set clock rate
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
Cc: sboyd@kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org,
 Dillon Min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogRGlsbG9uIE1pbiA8ZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20+CgpUaGlzIGlzIGR1ZSB0
byBtaXN1c2Ug4oCYUExMX1ZDT19TQUknIGFuZCdQTExfU0FJJyBpbiBjbGstc3RtMzJmNC5jCidQ
TExfU0FJJyBpcyAyLCAnUExMX1ZDT19TQUknIGlzIDcoZGVmaW5lZCBpbgppbmNsdWRlL2R0LWJp
bmRpbmdzL2Nsb2NrL3N0bTMyZngtY2xvY2suaCkuCgoncG9zdF9kaXYnIHBvaW50IHRvICdwb3N0
X2Rpdl9kYXRhW10nLCAncG9zdF9kaXYtPnBsbF9udW0nCmlzIFBMTF9JMlMgb3IgUExMX1NBSS4K
CidjbGtzW1BMTF9WQ09fU0FJXScgaGFzIHZhbGlkICdzdHJ1Y3QgY2xrX2h3KiAnIHJldHVybgpm
cm9tIHN0bTMyZjRfcmNjX3JlZ2lzdGVyX3BsbCgpIGJ1dCwgYXQgbGluZSAxNzc3IG9mCmRyaXZl
ci9jbGsvY2xrLXN0bTMyZjQuYywgdXNlIHRoZSAnY2xrc1twb3N0X2Rpdi0+cGxsX251bV0nLApl
cXVhbCB0byAnY2xrc1tQTExfU0FJXScsIHRoaXMgaXMgaW52YWxpZCBhcnJheSBtZW1iZXIgYXQg
dGhhdCB0aW1lLgoKRml4ZXM6IDUxNzYzM2VmNjMwZSAoImNsazogc3RtMzJmNDogQWRkIHBvc3Qg
ZGl2aXNvciBmb3IgSTJTICYgU0FJIFBMTHMiKQpTaWduZWQtb2ZmLWJ5OiBEaWxsb24gTWluIDxk
aWxsb24ubWluZmVpQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2Vy
bmVsLm9yZz4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8x
NTkwNTY0NDUzLTI0NDk5LTYtZ2l0LXNlbmQtZW1haWwtZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20v
Ci0tLQogZHJpdmVycy9jbGsvY2xrLXN0bTMyZjQuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y2xrL2Nsay1zdG0zMmY0LmMgYi9kcml2ZXJzL2Nsay9jbGstc3RtMzJmNC5jCmluZGV4IDE4MTE3
Y2U1ZmY4NS4uNDJjYTJkZDg2YWVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9jbGstc3RtMzJm
NC5jCisrKyBiL2RyaXZlcnMvY2xrL2Nsay1zdG0zMmY0LmMKQEAgLTU1NywxMyArNTU3LDEzIEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX2Rpdl90YWJsZSBwb3N0X2RpdnJfdGFibGVbXSA9IHsK
IAogI2RlZmluZSBNQVhfUE9TVF9ESVYgMwogc3RhdGljIGNvbnN0IHN0cnVjdCBzdG0zMmY0X3Bs
bF9wb3N0X2Rpdl9kYXRhICBwb3N0X2Rpdl9kYXRhW01BWF9QT1NUX0RJVl0gPSB7Ci0JeyBDTEtf
STJTUV9QRElWLCBQTExfSTJTLCAicGxsaTJzLXEtZGl2IiwgInBsbGkycy1xIiwKKwl7IENMS19J
MlNRX1BESVYsIFBMTF9WQ09fSTJTLCAicGxsaTJzLXEtZGl2IiwgInBsbGkycy1xIiwKIAkJQ0xL
X1NFVF9SQVRFX1BBUkVOVCwgU1RNMzJGNF9SQ0NfRENLQ0ZHUiwgMCwgNSwgMCwgTlVMTH0sCiAK
LQl7IENMS19TQUlRX1BESVYsIFBMTF9TQUksICJwbGxzYWktcS1kaXYiLCAicGxsc2FpLXEiLAor
CXsgQ0xLX1NBSVFfUERJViwgUExMX1ZDT19TQUksICJwbGxzYWktcS1kaXYiLCAicGxsc2FpLXEi
LAogCQlDTEtfU0VUX1JBVEVfUEFSRU5ULCBTVE0zMkY0X1JDQ19EQ0tDRkdSLCA4LCA1LCAwLCBO
VUxMIH0sCiAKLQl7IE5PX0lEWCwgUExMX1NBSSwgInBsbHNhaS1yLWRpdiIsICJwbGxzYWktciIs
IENMS19TRVRfUkFURV9QQVJFTlQsCisJeyBOT19JRFgsIFBMTF9WQ09fU0FJLCAicGxsc2FpLXIt
ZGl2IiwgInBsbHNhaS1yIiwgQ0xLX1NFVF9SQVRFX1BBUkVOVCwKIAkJU1RNMzJGNF9SQ0NfRENL
Q0ZHUiwgMTYsIDIsIDAsIHBvc3RfZGl2cl90YWJsZSB9LAogfTsKIAotLSAKMi43LjQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
