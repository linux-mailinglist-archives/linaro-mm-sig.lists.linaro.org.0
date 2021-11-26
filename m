Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0667F45E3BD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 01:37:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFCF3622B0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 00:37:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 448ED62170; Fri, 26 Nov 2021 00:37:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08ED760E5F;
	Fri, 26 Nov 2021 00:37:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE27060B03
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 00:37:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B199160E5F; Fri, 26 Nov 2021 00:37:40 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by lists.linaro.org (Postfix) with ESMTPS id A65DD60B03
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 00:37:38 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id k2so15469141lji.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 16:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nMCkcNkVJHrUMMEDkKpjCXIAHsxHK0m1G/QamSr9K6g=;
 b=UOqnunqsnMn5D9EP50S6+aOvQtPLUoltWmiTz6HxAhNzfbeySPSOPGeOl6o9gABXgU
 R4ubclYHdlRX/BhMdfS1jWkG+fx/GwEjHYhLmMyhYRbVU5p2soAScnBgla+f61DspLaW
 QvobT/wWL/czGrNtFt6a5rHvXebhv8swzGkNZJ6DFxe41OVxtfJs5md2N7rp0rN2Zdx8
 wMILAGpUX4RVGbQ+122bfZuPENrC4mmZq/HHdW7BujRF/sVVeOFFYgRyChokKnOP9JlX
 mBxaFOVisanu7dN4p6ozGotLMcmu+jTYYrUalnhR9hvpXuj3j0qijHE1mQwao6xSQv/B
 xJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nMCkcNkVJHrUMMEDkKpjCXIAHsxHK0m1G/QamSr9K6g=;
 b=GeumhU/GDsEjFU+yKWL8pRglYnMIZYpeUl9FlCIDy9j7MW++rr6Yp9rsu26Kc7sx8V
 tgw52FaBdEU7y8FlTD0Bs0F2zF9O4uUcAQrympntvYmidPXqgudxHV6B25OawaNlNC7i
 lAeHCG63A1NOJ5sVNDt+STd3p926yXI4GFfeMllZoA8DN48xZYaQca+ujpxvU6pUmHX3
 jJnd62wATomR/HSIpXC/6UX1ZzDP/mxXHAEn35eHbdWQKyMR44HwhxWX4J1XNqdsXaVE
 pBeQpp5obAXE1mULc2DIWDSBwHbvhAzvjr7n9DFuuVPssnDLNqOuHdMqcKIwDfvdOtE5
 CbYw==
X-Gm-Message-State: AOAM5338JaoC1nQDy2cvcaqJXENscob026q4Q5rxZRAH/Uek+FlGcnnb
 Ikb9fSH1QQnArGuCMxJRfkE=
X-Google-Smtp-Source: ABdhPJyRX2L7hSbd3SNG4rggc/Cqlf6BaeolJPYAw1mQLBCAr4IT8k78ET/p4iE+e6YKJMpdWksvAg==
X-Received: by 2002:a2e:a4ba:: with SMTP id g26mr28851298ljm.152.1637887057377; 
 Thu, 25 Nov 2021 16:37:37 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id e5sm377433lfs.51.2021.11.25.16.37.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 16:37:36 -0800 (PST)
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Akhil R <akhilrajeev@nvidia.com>
References: <1637859224-5179-1-git-send-email-akhilrajeev@nvidia.com>
 <CAHp75VfPPpTNCaM+GhcqZS53ts-20GBzm+4OWLAjND=z79pgxg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <aa63a45d-43a0-9aaf-cad3-2f4f66d707e7@gmail.com>
Date: Fri, 26 Nov 2021 03:37:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VfPPpTNCaM+GhcqZS53ts-20GBzm+4OWLAjND=z79pgxg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4] i2c: tegra: Add the ACPI support
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Jon Hunter <jonathanh@nvidia.com>,
 linaro-mm-sig@lists.linaro.org, Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MjUuMTEuMjAyMSAyMjoyOCwgQW5keSBTaGV2Y2hlbmtvINC/0LjRiNC10YI6Cj4+IC0gICAgICAg
ZXJyID0gcmVzZXRfY29udHJvbF9yZXNldChpMmNfZGV2LT5yc3QpOwo+PiArICAgICAgIGlmICho
YW5kbGUpCj4+ICsgICAgICAgICAgICAgICBlcnIgPSBhY3BpX2V2YWx1YXRlX29iamVjdChoYW5k
bGUsICJfUlNUIiwgTlVMTCwgTlVMTCk7Cj4gRG9lcyBpdCBjb21waWxlIGZvciBDT05GSUdfQUNQ
ST1uIGNhc2U/Cj4gCgpJdCBjb21waWxlcyBhbmQgd29ya3MgZmluZSB3aXRoIENPTkZJR19BQ1BJ
PW4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
