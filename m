Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 849A27D7F1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 10:57:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B27740436
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 08:57:50 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by lists.linaro.org (Postfix) with ESMTPS id 934663E94E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Oct 2023 08:57:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jMcX4o8l;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.219.180 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-d81d09d883dso457639276.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Oct 2023 01:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698310654; x=1698915454; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d15OUBlXoCJoUgZsOraHwb/V6/eE2WDwET5ZkyPx89I=;
        b=jMcX4o8lskhjNV2ZKAWEYzaK1UGrYd/3C6gA4/MJ50/7hYQK0zOvU11DeKIZrD/LeO
         pyS/cmGuIDt8X7rLMjeOvAeP8P/G3q31fo3I/VAJmkAD+uzeC3Lh7WodEh7QzUF/bnZq
         PS7Q5cFO3C1qUrlsbRzlxb5X/KdI5VjQwaOlm5+HAZICYwQ7vX/VdoIwyrEwnxcRXFI8
         kC7du+2alyUO8Nkz/rGmAYgB3Jc2kMFiuGddjYKkSyP87NaC44LiduwROrpuhe2c7CkU
         +01E7Z7k84PQaWj4wtTHiNNU8Y4cFI8Qj+qahD8/rM21Js0Lu8K+BdvrJjpePyVZmNtW
         VD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698310654; x=1698915454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d15OUBlXoCJoUgZsOraHwb/V6/eE2WDwET5ZkyPx89I=;
        b=c13q0/g6TlR6px62eg3VqvdTQZYiDOOpYJMlO7pLKWOIuVvlpgFBlYHy3KrKIGpEN0
         BoKfksIv00zxIVBiut5JZJUjMURAmyqqKK3lLIY0r7pbq/8mduWD6KsxKtNt/EpIYqiD
         3DeEhueYu0Phj1UFEMNczt7wjtQSXcwMfdQByjZq0K83ul3ESFZrsulAENZQ1NA+iqkZ
         0X6mLlGCl7B5eiI0VoW3PeIsadwodQG7WA4XLd2y2241ywPA+IRv2OKuXgpTJaEIAu9/
         0JejDFD5kNFv6bqj+D+sjj5CSX7c65bjOH6/PTelv6obmJi7Yh4DokWdR2yWfGUJ9s+E
         EqsA==
X-Gm-Message-State: AOJu0YzrivuuZ5YLANHQuYr6RE/v34daH8qLP0pQSH9Ws4Xuo/MPOVNA
	Yiy5ob7IYdIy6Hi0kscZfBU/ZfSqvNUONfv/vt6ujm/1
X-Google-Smtp-Source: AGHT+IFhzh3jp3HfNlJ8La8+jINi5sy551LrNDFQM80H3MVmgkxMCbioFraPFHdJrZNwGJJzriw+6D047YqUbWdNHEc=
X-Received: by 2002:a25:fb01:0:b0:da0:9735:b012 with SMTP id
 j1-20020a25fb01000000b00da09735b012mr2234616ybe.11.1698310654073; Thu, 26 Oct
 2023 01:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com> <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
 <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
In-Reply-To: <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Oct 2023 11:57:22 +0300
Message-ID: <CAA8EJppxQ7J8DEDFsWzPL8bDpNW-KY0nhUA++zDBRpMCpP-bkA@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 934663E94E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.180:from];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[starfivetech.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: FIXOESAUUEEYY2K22CLH52FCCAW2FD3K
X-Message-ID-Hash: FIXOESAUUEEYY2K22CLH52FCCAW2FD3K
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FIXOESAUUEEYY2K22CLH52FCCAW2FD3K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 26 Oct 2023 at 11:07, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > > +static int starfive_hdmi_register(struct drm_device *drm, struct starfive_hdmi *hdmi)
> > > +{
> > > +   struct drm_encoder *encoder = &hdmi->encoder;
> > > +   struct device *dev = hdmi->dev;
> > > +
> > > +   encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> > > +
> > > +   /*
> > > +    * If we failed to find the CRTC(s) which this encoder is
> > > +    * supposed to be connected to, it's because the CRTC has
> > > +    * not been registered yet.  Defer probing, and hope that
> > > +    * the required CRTC is added later.
> > > +    */
> > > +   if (encoder->possible_crtcs == 0)
> > > +           return -EPROBE_DEFER;
> > > +
> > > +   drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> > > +
> > > +   hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> > > +
> > > +   drm_connector_helper_add(&hdmi->connector,
> > > +                            &starfive_hdmi_connector_helper_funcs);
> > > +   drmm_connector_init(drm, &hdmi->connector,
> > > +                       &starfive_hdmi_connector_funcs,
> > > +                       DRM_MODE_CONNECTOR_HDMIA,
> >
> > On an embedded device one can not be so sure. There can be MHL or HDMI
> > Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.
>
> On an HDMI driver, it's far from being a requirement, especially given
> the limitations bridges have.

It's a blessing that things like MHL / HDMI-in-USB-C / HDMI-to-MyDP
are not widely used in the wild and are mostly non-existing except
several phones that preate wide DP usage.
Using drm_connector directly prevents one from handling possible
modifications on the board level. For example, with the DRM connector
in place, handling a separate HPD GPIO will result in code duplication
from the hdmi-connector driver. Handling any other variations in the
board design (which are pretty common in the embedded world) will also
require changing the driver itself. drm_bridge / drm_bridge_connector
save us from those issues.

BTW: what are the limitations of the drm_bridge wrt. HDMI output? I'm
asking because we heavily depend on the bridge infrastructure for HDMI
output. Maybe we are missing something there, which went unnoticed to
me and my colleagues.

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
