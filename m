Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E389D7DAD4E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Oct 2023 17:52:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E80040BC6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Oct 2023 16:52:48 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by lists.linaro.org (Postfix) with ESMTPS id 01C1A3EC22
	for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Oct 2023 16:52:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=qtNzKacA;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.128.169 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5a8ada42c2aso32331637b3.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Oct 2023 09:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698598352; x=1699203152; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Aoy1l/OIWuZyO9Z9oXh2HgTPM0zwmwHlZqeVfBp4F14=;
        b=qtNzKacAGK0YTRoRF+u772Mcy5ne8LTJcIJ3X3XhEdTxvz5r7dKlL8G+Y5GrBe8m+G
         sg/wTmHrTQXNYZFhsUdEHDJBKw9/+loOO0GhRL8NN7FkPbMBkEiPpFWCGUWJd7XJposn
         tIchbEdUalLg0H5nDSNXiNs8Ntubh8C94vhGs+azfivCFOdJ5sGQmBJXGmTulP6vUWhh
         eu2ani1RGREFcFRSz+jRfzwmxhlbnYnwCvXFGSoBBtBorbjpmsC1ypB1J44aF5u9dc8N
         1soYDhrvi4/ObybWw/1Q7u7CLGLMxobaPDbEZLRZf/43Wv9LnMtVgWtDOKjfSdTHzIiX
         F0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698598352; x=1699203152;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aoy1l/OIWuZyO9Z9oXh2HgTPM0zwmwHlZqeVfBp4F14=;
        b=Ev0NAHvA1fSBg4GCU5+OCjvEpROaQyzUDq5oKqpYHaKNNuuFvvIISjaaBZovfhTJv8
         bOqq0qL/flxlscvn/f959/nJQZTWvFw0SO0foIRcXQKwTpYn68pa609PKBU0ef+j6PbB
         bT+6qNpMYp5V1VJ2+cUXo7sCfxInrgSobYRAgM5z3ptO+0gHfWUPbYel2UBjYOvJuy1U
         uHAeozZTAlTC+bSkKUcCeO1mVWPSroEWy06j8f1pslq7voVFohS/qS8hju1xcLil9G0q
         sjriTxDGgl9JSbP1Plj6Cug7KdCzTY2pFwrKtPafthFB/JNkxhXfhs20qUEpvaSJKzqz
         UWkQ==
X-Gm-Message-State: AOJu0YzNQLJ2I1c1lsNyu8o0uVX/fnWdHdrDYjIl7M5IYnJ1ajqo2kAb
	yt9KL4tcCizr6Cv8PKTHooZ1QQdw9l91slBWIMCNPEtz
X-Google-Smtp-Source: AGHT+IFXSrP5aeoWhs3Y4D0eNG10IP70i3n/QShH9gKSv775NDiMg4SU6zfUoxyYEuuq+a+adTKElsBDmpSGQ+aBEhI=
X-Received: by 2002:a81:e50c:0:b0:5ad:a3f9:1b10 with SMTP id
 s12-20020a81e50c000000b005ada3f91b10mr6688733ywl.10.1698598352517; Sun, 29
 Oct 2023 09:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com> <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
 <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
 <CAA8EJppxQ7J8DEDFsWzPL8bDpNW-KY0nhUA++zDBRpMCpP-bkA@mail.gmail.com> <344veqjvvwlo7vls2kdlgjggf77of2ijxwc2hmk7tarm75ugcs@bmozk23uqxqr>
In-Reply-To: <344veqjvvwlo7vls2kdlgjggf77of2ijxwc2hmk7tarm75ugcs@bmozk23uqxqr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 29 Oct 2023 18:52:24 +0200
Message-ID: <CAA8EJpomaDoJVkq+_NhcxqOs6X-dFd=Vo9Wtqnp8egNaWzDH2Q@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 01C1A3EC22
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.169:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[starfivetech.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: APJWN7WO3BKLAXUCS3NHTRED6FIJEGFP
X-Message-ID-Hash: APJWN7WO3BKLAXUCS3NHTRED6FIJEGFP
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/APJWN7WO3BKLAXUCS3NHTRED6FIJEGFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 26 Oct 2023 at 14:53, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Oct 26, 2023 at 11:57:22AM +0300, Dmitry Baryshkov wrote:
> > On Thu, 26 Oct 2023 at 11:07, Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > > > > +static int starfive_hdmi_register(struct drm_device *drm, struct starfive_hdmi *hdmi)
> > > > > +{
> > > > > +   struct drm_encoder *encoder = &hdmi->encoder;
> > > > > +   struct device *dev = hdmi->dev;
> > > > > +
> > > > > +   encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> > > > > +
> > > > > +   /*
> > > > > +    * If we failed to find the CRTC(s) which this encoder is
> > > > > +    * supposed to be connected to, it's because the CRTC has
> > > > > +    * not been registered yet.  Defer probing, and hope that
> > > > > +    * the required CRTC is added later.
> > > > > +    */
> > > > > +   if (encoder->possible_crtcs == 0)
> > > > > +           return -EPROBE_DEFER;
> > > > > +
> > > > > +   drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> > > > > +
> > > > > +   hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> > > > > +
> > > > > +   drm_connector_helper_add(&hdmi->connector,
> > > > > +                            &starfive_hdmi_connector_helper_funcs);
> > > > > +   drmm_connector_init(drm, &hdmi->connector,
> > > > > +                       &starfive_hdmi_connector_funcs,
> > > > > +                       DRM_MODE_CONNECTOR_HDMIA,
> > > >
> > > > On an embedded device one can not be so sure. There can be MHL or HDMI
> > > > Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.
> > >
> > > On an HDMI driver, it's far from being a requirement, especially given
> > > the limitations bridges have.
> >
> > It's a blessing that things like MHL / HDMI-in-USB-C / HDMI-to-MyDP
> > are not widely used in the wild and are mostly non-existing except
> > several phones that preate wide DP usage.
>
> And those can be supported without relying on bridges.

Yes, they likely can, in the way that nouveau handles I2C TV encoders.
But I don't think this can scale. We can have different devices
attached to the DSI, LVDS, HDMI and even DP image sources. I don't see
a scalable solution for either of them. E.g. by switching drm/msm to
use panel bridges for DSI panels we were able to significantly unify
and simplify code paths.

> > Using drm_connector directly prevents one from handling possible
> > modifications on the board level. For example, with the DRM connector
> > in place, handling a separate HPD GPIO will result in code duplication
> > from the hdmi-connector driver. Handling any other variations in the
> > board design (which are pretty common in the embedded world) will also
> > require changing the driver itself. drm_bridge / drm_bridge_connector
> > save us from those issues.
>
> And we have other solutions there too. Like, EDIDs are pretty much in
> the same spot with a lot of device variations, but it also works without
> a common driver. I'd really wish we were having less bridges and more
> helpers, but here we are.
>
> > BTW: what are the limitations of the drm_bridge wrt. HDMI output? I'm
> > asking because we heavily depend on the bridge infrastructure for HDMI
> > output. Maybe we are missing something there, which went unnoticed to
> > me and my colleagues.
>
> A bridge cannot extend the connector state or use properties, for
> example. It works for basic stuff but falls apart as soon as you're
> trying to do something slightly advanced.

Ack. I agree, we didn't have a necessity to implement properties up to
now. But that sounds like an interesting topic for DSI-to-HDMI bridges
and HDCP support. I'll need to check if any of the RB3/RB5/Dragonboard
bridges are programmed with the HDCP keys.
--
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
