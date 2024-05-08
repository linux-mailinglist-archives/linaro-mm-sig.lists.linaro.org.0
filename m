Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEECF8BF8C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:38:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDDC640C76
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:38:55 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 6A8793F02C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:38:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar-org.20230601.gappssmtp.com header.s=20230601 header.b=jHj2YRUu;
	spf=none (lists.linaro.org: domain of daniel@fooishbar.org has no SPF policy when checking 209.85.222.175) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7928ec5308cso58252085a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 01:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1715157525; x=1715762325; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V5spKHAJYycDPIb8qjonfW7CCAIoHcDr+o3JbjTG3F8=;
        b=jHj2YRUudYUiG9Hz7wlTMiUiUaVu04dUo78ls3yK08CV6/Qlhxop0XHgay0tRgtTsi
         0wanFgW/IYEll4mVoCI7/HbYAzRJh0KiJzlUemTb1DJ8ZHXJHLsdUphh8IAO2eDLc/nP
         QDIckDqGZ91VSUxh96sk2e9k4Wk9q+Xxxt7xdBgLQOJmfGDK4hd3FzeAchD4ofR/bkDt
         Ip22lLt5iqXEIwiA52EXPftgcEezHN0hvN7/Oyahruxj52K9ttip0TiiYkXP+rbga/l1
         3cStkWzGKDJn6XFN3M2SMWWv8VBBQLZqMkPXwLg7uIQB3epiyiyaYj/qpxtbOEKAwC6i
         ePeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715157525; x=1715762325;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V5spKHAJYycDPIb8qjonfW7CCAIoHcDr+o3JbjTG3F8=;
        b=ve53DnWs1+4cPUApxp3hcY8G36OhM/WMJMSCvVtJW5CvU4bmPWvWAaLvyHfGv70pbN
         zlCGGblGnOu6jayizPqlhxCh5q0Bf8euYCpghIJ+rA/kWTLLn1dPgpVisFQNHzQWdYDM
         Zc1HJoBCczEsRZvMBEBbHQvkoDJaw0ZoG5MPXpKlXoGulvCdftcXqCh2XuV+XIZrfrMp
         MCni645mvTShMnxm8kkXn3r2VpMiFnTGgM/howkN9T4NVr9QL692x4FCIlxv8gOI22Iv
         ojz2cu3/dyN/wRubYV2ca96Ge5Pgcl3Twwwo5RUJzhHdDB0YDrQ/B8aN8dcY/jIyMEtg
         KcDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4+zHh9fPLrfE5bn+ItX7ozYOe+ZJzpm2iZYMLLE1TI0gTT8o8O40YEE/zgHEWsTLfGx9QUZq1GNOkqBcJELC4vPgPo9AjvAUR7kcLUvk=
X-Gm-Message-State: AOJu0YwdcfD65tDEOXlv4C7AHYjcNl0Xk1arWD9Kgnap+gXnPJCpE1+t
	Wfc7yZmi8sPdLiSIbiPr3sVoRLWGTx87AcfpN479TRYmCoraSXaKL6EfNQ8oNsIu+9dM5zFi4n4
	m5ElZ0zRsPzvPSRmFjG4IJiVkEy+4ACHO+1bGng==
X-Google-Smtp-Source: AGHT+IGBmSz6eFLsDLHd1HFg7kcp7kmSokUNcM7b494MpO41SWF9RR8A0fpKHutyvvQMYFPwHGwiGt9z4eDnQ5YljZw=
X-Received: by 2002:a05:620a:4593:b0:790:b14b:21b9 with SMTP id
 af79cd13be357-792a6481401mr809884385a.18.1715157525012; Wed, 08 May 2024
 01:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat> <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com> <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
 <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com> <Zjs42PGvilLlF0Cg@phenom.ffwll.local>
In-Reply-To: <Zjs42PGvilLlF0Cg@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 8 May 2024 09:38:33 +0100
Message-ID: <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>, Hans de Goede <hdegoede@redhat.com>,
	Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6A8793F02C
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[fooishbar-org.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[fooishbar.org];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[fooishbar.org,redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fooishbar-org.20230601.gappssmtp.com:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gappssmtp.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: UVIDLTRLY5VTDKHPZKBX2RTI4ZRFB6IP
X-Message-ID-Hash: UVIDLTRLY5VTDKHPZKBX2RTI4ZRFB6IP
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UVIDLTRLY5VTDKHPZKBX2RTI4ZRFB6IP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 8 May 2024 at 09:33, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Wed, May 08, 2024 at 06:46:53AM +0100, Daniel Stone wrote:
> > That would have the unfortunate side effect of making sandboxed apps
> > less efficient on some platforms, since they wouldn't be able to do
> > direct scanout anymore ...
>
> I was assuming that everyone goes through pipewire, and ideally that is
> the only one that can even get at these special chardev.
>
> If pipewire is only for sandboxed apps then yeah this aint great :-/

No, PipeWire is fine, I mean graphical apps.

Right now, if your platform requires CMA for display, then the app
needs access to the GPU render node and the display node too, in order
to allocate buffers which the compositor can scan out directly. If it
only has access to the render nodes and not the display node, it won't
be able to allocate correctly, so its content will need a composition
pass, i.e. performance penalty for sandboxing. But if it can allocate
correctly, then hey, it can exhaust CMA just like heaps can.

Personally I think we'd be better off just allowing access and
figuring out cgroups later. It's not like the OOM story is great
generally, and hey, you can get there with just render nodes ...

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
