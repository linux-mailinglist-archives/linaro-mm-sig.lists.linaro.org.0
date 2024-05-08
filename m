Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 005BD8BF5B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 07:47:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C32C43C91
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 05:47:17 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 639733EC0D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 05:47:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar-org.20230601.gappssmtp.com header.s=20230601 header.b=WXPeMuN2;
	spf=none (lists.linaro.org: domain of daniel@fooishbar.org has no SPF policy when checking 209.85.219.49) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-69b4454e2f1so14873006d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 22:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1715147227; x=1715752027; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+KiVnKXCsbPvzNdODTp1oqWb7A8Ywtkjz6UCYJzfVw=;
        b=WXPeMuN2vCC4KtfKq++X0AUhEq7MLWQrF+bsuDepAKEu3+dp57FXXzs2PltpEjN+B8
         tNmEUQ8JKGdKW9TK9YR/jgGam43kSycmRHosZbRRbHc3AH5VI6DyQk69loeuPCX5PcCj
         6VaAlRPz3KcWgdXFi2qcknvbJ7mRn4WS0aBATeJ9CVb8uTl4dH6AeuXraDLmihPPF5kv
         MeU4/EvPRp1JgRmfS49PsF6ta8MbE/qgsxIfu4TFL09YmYHY1gkJPmv7fbaSsRIRz947
         VNqvS/+sxIDfA8AdUcPMdWx8cjrAgfQHKXBf9P7FkZpZwq25FX4xyTk64hpWZE5LtEUF
         yHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715147227; x=1715752027;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+KiVnKXCsbPvzNdODTp1oqWb7A8Ywtkjz6UCYJzfVw=;
        b=I3iFepO0oWf+uSVrFXWfgzhbKRzNGEXnXbOse4e2PFASnq0Us+hPtS58JGqcvDXShV
         2hL4h0atSZQga7M2mWBh+JgmhXJ02ZuhFbq4FkxJmHrbTT4MWzoC/znxS1w4RUDV81ct
         SPyg4dqe2FBiPqr9dVxpuNIdvA8t7Zv1tcoaDVas3AppojpAfAQRd6TvBXecm13glWR5
         j+b39VeDFmWCdOSNHdVqtohImGu0v0Kd3m5DNepv2seaiiTFD6yPcRMuIyhfz1sHEHME
         YWokLUemwIYmYajNgc7I/UujduIX7lsqQd0UISDt0WTcuqaqGJdTopPMe0IA1QNhm/dU
         skSw==
X-Forwarded-Encrypted: i=1; AJvYcCVcfPpe2/KQbh7L254/Sf8NzaFoSvqs2qP16hL8EVosEWpQ0w8/t2l9BzBGiIlYabHvBwgS6X/XRwy5cGtiI8SI4yHYENLCBrDCfRt2Bjg=
X-Gm-Message-State: AOJu0Yw/9rQJ56tbef+T0sAZE2hMXyrQV1Q0qUDa0Ah9/LEF1u4PCEtX
	3LqGKbO8r4lE525FKBkmgUVSZxoB95akre7kfJ5AaI1nHmPh3l5XXcugxYgUnIvsdw3Mx8Kh3hX
	pA8F8Bua5c9w8sMqGDEEFMBxHwf/05XicB9eDNw==
X-Google-Smtp-Source: AGHT+IFowOzBUiqN7WcnwrA/LBPZg7N9dHpRdxWUo9yBNCLNtQC6wcuw0TpbjZ6kxNa/4cgHeYqTO5liJl8XTfGujfs=
X-Received: by 2002:a05:6214:29c2:b0:6a0:c922:5014 with SMTP id
 6a1803df08f44-6a151528bbamr23726776d6.21.1715147226926; Tue, 07 May 2024
 22:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat> <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com> <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
In-Reply-To: <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 8 May 2024 06:46:53 +0100
Message-ID: <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
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
X-Rspamd-Queue-Id: 639733EC0D
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[fooishbar-org.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[fooishbar-org.20230601.gappssmtp.com:dkim,mail-qv1-f49.google.com:rdns,mail-qv1-f49.google.com:helo];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[fooishbar.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[fooishbar-org.20230601.gappssmtp.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.219.49:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: Z7ZU36XTUTSTQAM65JQVUSI4IBLWL45M
X-Message-ID-Hash: Z7ZU36XTUTSTQAM65JQVUSI4IBLWL45M
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7ZU36XTUTSTQAM65JQVUSI4IBLWL45M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 7 May 2024 at 12:15, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Mon, May 06, 2024 at 04:01:42PM +0200, Hans de Goede wrote:
> > On 5/6/24 3:38 PM, Daniel Vetter wrote:
> > I agree that bad applications are an issue, but not for the flathub / snaps
> > case. Flatpacks / snaps run sandboxed and don't have access to a full /dev
> > so those should not be able to open /dev/dma_heap/* independent of
> > the ACLs on /dev/dma_heap/*. The plan is for cameras using the
> > libcamera software ISP to always be accessed through pipewire and
> > the camera portal, so in this case pipewere is taking the place of
> > the compositor in your kms vs render node example.
>
> Yeah essentially if you clarify to "set the permissions such that pipewire
> can do allocations", then I think that makes sense. And is at the same
> level as e.g. drm kms giving compsitors (but _only_ compositors) special
> access rights.

That would have the unfortunate side effect of making sandboxed apps
less efficient on some platforms, since they wouldn't be able to do
direct scanout anymore ...

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
